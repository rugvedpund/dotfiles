return {
  'tpope/vim-fugitive',
  event = { 'BufReadPre', 'BufNewFile' },
  keys = {
    { '<leader>gg', '<cmd>Git<cr>', desc = '[g]it: [s]status' },
  },
}
