-- Unfocus terminal on escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

vim.keymap.set('n', '<leader>zb', function() vim.cmd('!zig build') end)
vim.keymap.set('n', '<leader>zr', function() vim.cmd('!zig build run') end)
vim.keymap.set('n', '<leader>zt', function() vim.cmd('!zig build test') end)
vim.keymap.set('n', '<leader>zl', function() vim.cmd('!zig build reload') end)
