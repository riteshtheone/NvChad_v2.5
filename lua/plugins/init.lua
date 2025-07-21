return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.treesitter"
        end,
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },

    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = true,
        keys = {
            {
                "<M-t>", -- Alt + t
                function()
                    require("toggleterm").toggle(nil, nil, nil, "float")
                end,
                mode = { "n", "i", "v", "t" }, -- Enable in all modes
                desc = "Toggle Floating Terminal (Alt+t)",
            },
        },
    },

    {
        "mrcjkb/rustaceanvim",
        version = "^6", -- Recommended
        lazy = false, -- This plugin is already lazy
    },
}
