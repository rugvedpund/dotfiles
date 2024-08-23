return {
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require('telescope').setup {
        -- pickers = {}
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[s]earch [n]eovim config files' })
      vim.keymap.set('n', '<leader>sp', function()
        builtin.find_files { cwd = '~/Files/Projects/' }
      end, { desc = '[s]earch [p]roject files' })
      vim.keymap.set('n', '<leader>so', function()
        builtin.find_files { cwd = '~/Files/orgfiles/' }
      end, { desc = '[s]earch [o]rg files' })

      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[s]earch [f]iles' })
      vim.keymap.set('n', '<leader>sl', builtin.live_grep, { desc = '[s]earch w/ [g]rep' })
      vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = '[s] find existing [b]uffers' })

      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[s]earch [k]eymaps' })
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[s]earch [h]elp' })
      -- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[s]earch [s]elect telescope' })
      -- vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[s]earch by [g]rep' })
      -- vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[s]earch [d]iagnostics' })
      -- vim.keymap.set('n', '<leader>ss', builtin.resume, { desc = '[s]earch last [s]earch' })
      -- vim.keymap.set('n', '<leader>sr', builtin.oldfiles, { desc = '[s]earch [r]ecent files' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
