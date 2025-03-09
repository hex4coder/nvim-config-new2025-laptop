return {
    "barrett-ruth/live-server.nvim",
    build = "pnpm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = function()
        require("live-server").setup({})

        local keymap = vim.keymap
        local opts = { silent = true, noremap = true }

        opts.desc = "Start liveserver"
        keymap.set("n", "<leader>st", "<cmd>LiveServerStart<CR>", opts)
        opts.desc = "Stop liveserver"
        keymap.set("n", "<leader>sp", "<cmd>LiveServerStop<CR>", opts)
    end,
}
