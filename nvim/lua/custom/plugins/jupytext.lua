return {
  'GCBallesteros/jupytext.nvim',
  -- lazy = false,
  opts = {
    style = 'hydrogen',
    output_extension = 'auto',
    force_ft = nil,
    custom_language_formatting = {},
  },
  config = true,
  -- config = function()
  --   vim.keymap.set('n', '<leader>jr', ':!jupytext --sync --execute % &<CR>', { desc = 'Sync and execute' })
  --   vim.keymap.set('n', '<leader>jj', ':!jupytext --sync %<CR>', { desc = 'Sync' })
  -- end,
}

-- return {
--   'goerz/jupytext.vim',
--   config = function()
--     vim.g.jupytext_command = 'jupytext'
--     vim.g.jupytext_fmt = 'py:percent'
--     vim.g.jupytext_to_ipynb_opts = '--to=ipynb --update'
--     vim.g.jupytext_print_debug_msgs = 0
--   end,
-- }
