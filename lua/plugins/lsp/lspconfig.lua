return {
    "neovim/nvim-lspconfig",
    event = { "InsertEnter" },
    dependencies = {
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()
        local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("mason-lspconfig").setup_handlers({
            function(server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup({
                    capabilities = lsp_capabilities,
                })
            end,
            --[[ ["rust_analyzer"] = function ()
                require("rust-tools").setup {}
            end ]]
        })

        -- event when lsp is attached
        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP actions",
            callback = function()
                local bufmap = function(mode, lhs, rhs)
                    local opts = { buffer = true }
                    vim.keymap.set(mode, lhs, rhs, opts)
                end

                -- Displays hover information about the symbol under the cursor
                bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

                -- Jump to the definition
                bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>")

                -- Jump to declaration
                bufmap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>")

                -- Lists all the implementations for the symbol under the cursor
                bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>")

                -- Jumps to the definition of the type symbol
                bufmap("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>")

                -- Lists all the references
                bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")

                -- Displays a function's signature information
                bufmap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

                -- Renames all references to the symbol under the cursor
                bufmap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")

                -- Selects a code action available at the current cursor position
                bufmap("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>")

                -- Show diagnostics in a floating window
                bufmap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")

                -- Move to the previous diagnostic
                bufmap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")

                -- Move to the next diagnostic
                bufmap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")
            end,
        })
    end,
}
