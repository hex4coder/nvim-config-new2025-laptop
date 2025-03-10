return {
    'nvim-treesitter/nvim-treesitter', 
    event = {'BufEnter'},
    build = ':TSUpdate',
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            highlight = {
                enable = true,
            }
        })
    end
} 
