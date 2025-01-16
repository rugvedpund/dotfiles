vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>on', ':!nvidia-smi', { desc = 'Show GPU usage' })

vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'save file' })
-- vim.keymap.set('n', '<leader>p', '"_dP', { desc = 'paste without yanking' })

-- vim.keymap.set('x', '<leader>cf', ':!column -t -s= -o= -l2<cr>')

vim.keymap.set('n', '-', '<CMD>Oil<CR>')
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Join lines' })
vim.keymap.set('x', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected lines down' })
vim.keymap.set('x', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected lines up' })
vim.keymap.set('x', '>', '>gv', { desc = 'Indent selected lines' })
vim.keymap.set('x', '<', '<gv', { desc = 'Unindent selected lines' })

vim.keymap.set('n', 'x', '"_x', { desc = 'Delete character without yanking' })
vim.keymap.set('n', 'Y', 'yg$', { desc = 'Yank to end of line' })

vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll down half a page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll up half a page' })
vim.keymap.set('n', '<C-o>', '<C-o>zz', { desc = 'Jump to previous location' })
vim.keymap.set('n', '<C-i>', '<C-i>zz', { desc = 'Jump to next location' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Jump to next search result' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Jump to previous search result' })

vim.keymap.set('n', '<Esc>', '<Cmd>noh<CR>', { desc = 'clear search highlights' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>/', ':%s///g<Left><Left>', { desc = 'Find and replace using last search pattern' })
vim.keymap.set('v', '<leader>/', ':s///g<Left><Left>', { desc = 'Find and replace using last search pattern' })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', 'Q', '<Nop>', { desc = 'disable [Q]uick command' })
vim.keymap.set('n', 's', '<Nop>', { desc = 'disable substitute' })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Copilot Chat
vim.keymap.set('n', '<leader>at', '<cmd>CopilotChatToggle<cr>')
vim.keymap.set('n', '<leader>aa', function()
  local input = vim.fn.input 'Quick Chat: '
  local selections = require 'CopilotChat.select'
  if input ~= '' then
    require('CopilotChat').ask(input, { selection = selections.buffer })
  end
end)
vim.keymap.set('x', '<leader>aa', ':CopilotChat ')

vim.keymap.set('n', '<leader>ap', function()
  local actions = require 'CopilotChat.actions'
  local selections = require 'CopilotChat.select'
  require('CopilotChat.integrations.telescope').pick(actions.prompt_actions { selection = selections.buffer })
end)

vim.keymap.set('x', '<leader>ap', function()
  local actions = require 'CopilotChat.actions'
  local selections = require 'CopilotChat.select'
  require('CopilotChat.integrations.telescope').pick(actions.prompt_actions { selection = selections.visual })
end)

-- jupytext
vim.keymap.set('n', '<leader>jj', ':!jupytext --sync %<CR>', { desc = 'Sync' })
vim.keymap.set('n', '<leader>jr', ':!jupytext --sync --execute % &<CR>', { desc = 'Sync and Run' })

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
