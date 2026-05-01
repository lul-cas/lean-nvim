local map = vim.keymap.set


vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>e", "<cmd>Oil<cr>", { desc = "Open file explorer" })


map("n", "<C-s>", "<cmd>w<cr>", { desc = "saves current buffer" })
map("n", "<C-q>", "<cmd>q<cr>", { desc = "quits current buffer" })

map('i', '<S-Tab>', '<-C-d>', { noremap = true, silent = true, desc = "Shift TAB" })
map('v', '<S-Tab>', '<', { noremap = true, silent = true, desc = "Shift TAB" })
map('n', '<S-Tab>', '<<', { noremap = true, silent = true, desc = "Shift TAB" })

map('i', '<C-z>', '<Esc>u', {noremap = true, silent = true, desc = "UNDO" })
map('i', '<C-y>', '<C-r>', {noremap = true, silent = true, desc = "REDO" })

map('n', '<C-b>', ':vsplit<CR>', { noremap = true, silent = true, desc = "Vertical buffer split" })


map('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true, desc = "Move current line up" })
map('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = "Move current line down" })


map('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection down" })
map('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection up" })


map('n', '<C-e>', '<C-v>', {noremap = true, desc = "Enter c-visual mode" })

map("n", "<leader>h", function()
  vim.cmd("belowright split")
  vim.cmd("terminal")
  vim.cmd("startinsert")
end, { desc = "Open terminal below" })

map("t", "<C-x>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
map("n", "<leader>w", "<C-w>w", { desc = "Cycle windows" })

map("v", "<Tab>", ">gv", { desc = "Indent right" })
map("v", "<S-Tab>", "<gv", { desc = "Indent left" })
