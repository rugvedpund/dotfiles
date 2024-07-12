--  See `:help vim.keymap.set()`

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', 'x', '"_x', { desc = 'Delete character without yanking' })
vim.keymap.set('n', '<F9>', ':w<CR>:!black %<CR>')

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

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
