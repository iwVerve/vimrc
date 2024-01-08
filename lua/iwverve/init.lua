-- Disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("iwverve.set")
require("iwverve.remap")

vim.cmd("vsplit")
vim.cmd("wincmd l")
vim.cmd("enew")
vim.cmd("vsplit")
vim.cmd("wincmd l")
vim.cmd("enew")
vim.cmd("wincmd h")
vim.cmd("wincmd h")
