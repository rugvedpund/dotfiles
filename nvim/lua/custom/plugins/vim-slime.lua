return {
  -- slime (REPL integration)
  {
    'jpalardy/vim-slime',
    keys = {
      { '<leader>rc', '<cmd>SlimeConfig<cr>', desc = 'Slime Config' },
      { '<leader>rr', '<Plug>SlimeSendCell', desc = 'Slime Send Cell' },
      { '<leader>rl', '<Plug>SlimeLineSend<CR>', desc = 'Slime Send Line' },
      {
        ']c',
        function()
          local delimiter = vim.g.slime_cell_delimiter
          if delimiter then
            vim.cmd('execute "/" . escape("' .. delimiter .. '", "/")')
          else
            print 'slime_delimiter is not set'
          end
        end,
        desc = 'Jump to Slime delimiter',
      },
    },
    config = function()
      vim.g.slime_target = 'tmux'
      vim.g.slime_cell_delimiter = '# ---'
      vim.g.slime_bracketed_paste = 1
    end,
  },
}
