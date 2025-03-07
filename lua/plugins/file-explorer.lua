return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
	require("neo-tree").setup({})

	local keymap = vim.keymap
	keymap.set('n', '<leader>ee', '<cmd>Neotree toggle<CR>', {desc = "File explorer using neo tree", silent = true, noremap = true})
  end
}
