require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- First, clear NvChad defaults
vim.keymap.del("n", "<C-h>")
vim.keymap.del("n", "<C-j>")
vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-l>")

-- Normal mode
map("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", opts)
map("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", opts)
map("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", opts)
map("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", opts)
map("n", "<C-\\>", "<Cmd>TmuxNavigatePrevious<CR>", opts)

-- Insert mode (stay in insert after moving)
map("i", "<C-h>", "<C-o><Cmd>TmuxNavigateLeft<CR>", opts)
map("i", "<C-j>", "<C-o><Cmd>TmuxNavigateDown<CR>", opts)
map("i", "<C-k>", "<C-o><Cmd>TmuxNavigateUp<CR>", opts)
map("i", "<C-l>", "<C-o><Cmd>TmuxNavigateRight<CR>", opts)
map("i", "<C-\\>", "<C-o><Cmd>TmuxNavigatePrevious<CR>", opts)

-- Terminal mode
map("t", "<C-h>", [[<C-\><C-n><Cmd>TmuxNavigateLeft<CR>]], opts)
map("t", "<C-j>", [[<C-\><C-n><Cmd>TmuxNavigateDown<CR>]], opts)
map("t", "<C-k>", [[<C-\><C-n><Cmd>TmuxNavigateUp<CR>]], opts)
map("t", "<C-l>", [[<C-\><C-n><Cmd>TmuxNavigateRight<CR>]], opts)
map("t", "<C-\\>", [[<C-\><C-n><Cmd>TmuxNavigatePrevious<CR>]], opts)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
