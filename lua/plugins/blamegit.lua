return {
	{
		"FabijanZulj/blame.nvim",
		lazy = false,
		config = function()
			require("blame").setup({})
			vim.keymap.set(
				"n",
				"<leader>bw",
				"<cmd>BlameToggle window<CR>",
				{ desc = "Toggle blame git mode window", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>bm",
				"<cmd>BlameToggle virtual<CR>",
				{ desc = "Toggle blame git mode virtual", noremap = true, silent = true }
			)
		end,
	},
}
