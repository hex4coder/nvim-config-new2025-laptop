return {
    {
        "williamboman/mason.nvim",
        config = function() 
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })
            local keymap = vim.keymap
            keymap.set('n', '<leader>cm', '<cmd>Mason<CR>', {desc = 'Mason config install', noremap = true, silent = true})
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            local m = require("mason")
            local ml = require("mason-lspconfig")

            m.setup()
            ml.setup({
                ensure_installed = {"lua_ls", "gopls", },
                automatic_installation = true,
            })
        end
    },
}
