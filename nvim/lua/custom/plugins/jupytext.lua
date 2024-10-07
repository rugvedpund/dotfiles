return {
  'goerz/jupytext.vim',
  config = function()
    vim.g.jupytext_command = 'jupytext'
    vim.g.jupytext_fmt = 'py'
  end,
}
