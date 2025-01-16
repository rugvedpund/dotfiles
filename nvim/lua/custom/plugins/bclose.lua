return {
  {
    'rbgrouleff/bclose.vim',
    init = function()
      vim.g.bclose_no_plugin_maps = 1
    end,
    -- config = function()
    --   vim.keymap.nnoremap('n', <leader>q', ':Bclose<CR>')
    -- end,
  },
}
