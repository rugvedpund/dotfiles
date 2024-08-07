return {
  'kdheepak/lazygit.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('telescope').load_extension 'lazygit'
  end,
  keys = {
    { '<leader>gg', '<cmd>LazyGit<cr>', desc = '[G]it: Lazy[G]it' },
  },
}
