--  See `:help vim.keymap.set()`

vim.keymap.set('n', 'Q', '<Nop>', { desc = 'Disable [Q]uick command' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', 'x', '"_x', { desc = 'Delete character without yanking' })
vim.keymap.set('n', 'Y', 'yg$', { desc = 'Yank to end of line' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down half a page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up half a page' })
vim.keymap.set('n', '<C-o>', '<C-o>zz', { desc = 'Jump to previous location' })
vim.keymap.set('n', '<C-i>', '<C-i>zz', { desc = 'Jump to next location' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Jump to next search result' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Jump to previous search result' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up' })
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>/', ':%s///g<Left><Left>', { desc = 'Find and replace using last search pattern' })
vim.keymap.set('v', '<leader>/', ':s///g<Left><Left>', { desc = 'Find and replace using last search pattern' })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim.keymap.set('n', '<leader>w', '<C-w>', { desc = '[w]indow controls' })
-- vim.keymap.set('n', '<leader>w=', '<C-w>=', { desc = '[w]indow [=] equal size' })
-- vim.keymap.set('n', '<leader>wv', '<C-w>v', { desc = '[w]indow [v]ertical split' })
-- vim.keymap.set('n', '<leader>ws', '<C-w>s', { desc = '[w]indow [h]orizontal split' })

--
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = 'org',
--   group = vim.api.nvim_create_augroup('orgmode_telescope_nvim', { clear = true }),
--   callback = function()
--     vim.keymap.set('n', '<leader>or', require('telescope').extensions.orgmode.refile_heading)
--   end,
-- })
-- -- vim: ts=2 sts=2 sw=2 et
