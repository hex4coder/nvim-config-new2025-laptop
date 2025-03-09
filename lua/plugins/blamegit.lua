return {
    {
        "FabijanZulj/blame.nvim",
        event = { "BufEnter" },
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
    {
        "APZelos/blamer.nvim",
        event = { "BufEnter" },
        config = function()
            vim.g.blamer_enabled = true
            vim.g.blamer_delay = 1000
            vim.g.blamer_prefix = " > "
            vim.g.blamer_date_format = "%d/%m/%y"
        end,
    },
}
