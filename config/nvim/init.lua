require "plugins"
require "treesitter"

vim.o.number = true
vim.o.list = true
vim.o.listchars = [[trail:·,tab:▸ ,eol:¬]]
vim.o.laststatus = 2
vim.o.undofile = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

for _, keys in ipairs({ "jj", "jk", "kk", "kj"}) do
	vim.api.nvim_set_keymap("i", keys, "<ESC>", {noremap = true})
end
vim.api.nvim_set_keymap("n", "<leader><cr>", ":nohlsearch<cr>", {noremap = true})

vim.o.bg = 'light'
vim.cmd [[colorscheme dim]]
