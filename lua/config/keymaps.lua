local map = vim.keymap.set


vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open file explorer" })


map("n", "<C-s>", "<cmd>w<cr>", { desc = "saves current buffer" })
map("n", "<C-q>", "<cmd>q<cr>", { desc = "quits current buffer" })
