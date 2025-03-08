vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- save with Ctrl+s
opts.desc = "Save file/buffer"
keymap.set("n", "<C-s>", ":wqa<CR>", opts)

-- splitting window
opts.desc = "split window in vertical"
keymap.set("n", "<leader>v", "<cmd>vsplit<CR>", opts)

opts.desc = "split window in horizontal"
keymap.set("n", "<leader>h", "<cmd>split<CR>", opts)

-- Resize window menggunakan tombol panah
opts.desc = "Resize window vertical +2"
keymap.set("n", "<C-Up>", ":resize +2<CR>", opts)

opts.desc = "Resize window vertical -2"
keymap.set("n", "<C-Down>", ":resize -2<CR>", opts)

opts.desc = "Resize window horizontal -2"
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)

opts.desc = "Resize window horizontal +2"
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Pindah window menggunakan h, j, k, l
opts.desc = "Pindah window ke kiri"
keymap.set("n", "<C-h>", "<C-w>h", opts)

opts.desc = "Pindah window ke bawah"
keymap.set("n", "<C-j>", "<C-w>j", opts)

opts.desc = "Pindah window ke atas"
keymap.set("n", "<C-k>", "<C-w>k", opts)

opts.desc = "Pindah window ke kanan"
keymap.set("n", "<C-l>", "<C-w>l", opts)
