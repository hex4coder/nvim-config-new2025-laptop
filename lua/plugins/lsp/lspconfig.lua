return {
    'neovim/nvim-lspconfig', 
    event = {'InsertEnter'},
    dependencies = {
        "hrsh7th/nvim-cmp",
    },
    config = function()


        require("mason").setup()
        require("mason-lspconfig").setup()



        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        require("mason-lspconfig").setup_handlers({
            function (server_name) -- default handler (optional)
                print("registering lsp client for : ", server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = lsp_capabilities,
                })
            end,
            --[[ ["rust_analyzer"] = function ()
                require("rust-tools").setup {}
            end ]]
        })
    end
}
