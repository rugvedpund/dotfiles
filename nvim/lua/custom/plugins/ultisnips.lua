return {
  'SirVer/ultisnips',
  event = 'InsertEnter',
  config = function()
    vim.g.UltiSnipsExpandTrigger = '<Tab>'
    vim.g.UltiSnipsJumpForwardTrigger = '<C-n>'
    vim.g.UltiSnipsJumpBackwardTrigger = '<C-p>'
  end,
}
