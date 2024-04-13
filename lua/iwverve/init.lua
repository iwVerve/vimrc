-- Disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("iwverve.set")
require("iwverve.remap")

local path = vim.v.argv[3]
if path == "." then
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
    vim.cmd("enew")
    vim.cmd("wincmd h")
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
    vim.cmd("enew")
    vim.cmd("wincmd h")
end
