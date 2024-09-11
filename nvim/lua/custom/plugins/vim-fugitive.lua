return {
  'tpope/vim-fugitive',
  event = { 'BufReadPre', 'BufNewFile' },
  keys = {
    { '<leader>gs', '<cmd>Git<cr>', desc = '[g]it: [s]status' },
  },
}
