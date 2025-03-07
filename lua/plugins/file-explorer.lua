return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    keys = {

        {'<leader>ee', '<cmd>Neotree toggle<CR>', desc = "File explorer using neo tree", silent = true, noremap = true}
    },
    opts = {},
}
