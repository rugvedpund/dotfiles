return {
  'goerz/jupytext.vim',
  config = function()
    vim.g.jupytext_command = '/home/rugved/miniconda3/envs/pynvim/bin/jupytext'
    vim.g.jupytext_fmt = 'py'
  end,
}
