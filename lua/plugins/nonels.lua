return {
	"nvimtools/none-ls.nvim",
	event = { "BufEnter" },

	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.completion.spell,
			},
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)
				if client:supports_method("textDocument/implementation") then
					-- Create a keymap for vim.lsp.buf.implementation
				end
				if client:supports_method("textDocument/completion") then
					-- Enable auto-completion
					vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = false })
				end
				if client:supports_method("textDocument/formatting") then
					-- Format the current buffer on save
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = args.buf,
						callback = function()
							vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
						end,
					})
				end
			end,
		})
	end,
}
