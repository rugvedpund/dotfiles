-- Here is a more advanced example where we pass configuration
-- options to `gitsigns.nvim`. This is equivalent to the following Lua:
--    require('gitsigns').setup({ ... })
--
-- See `:help gitsigns` to understand what the configuration keys do
return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Jump to next git [c]hange' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Jump to previous git [c]hange' })

        -- Actions
        -- visual mode
        map('v', '<leader>ghs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'stage git hunk' })
        map('v', '<leader>ghr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'reset git hunk' })
        -- normal mode
        map('n', '<leader>ghs', gitsigns.stage_hunk, { desc = '[g]it hunk [s]tage' })
        map('n', '<leader>ghr', gitsigns.reset_hunk, { desc = '[g]it hunk [r]eset' })
        map('n', '<leader>ghS', gitsigns.stage_buffer, { desc = '[g]it buffer [S]tage' })
        map('n', '<leader>ghu', gitsigns.undo_stage_hunk, { desc = '[g]it hunk [u]ndo stage' })
        map('n', '<leader>ghR', gitsigns.reset_buffer, { desc = '[g]it buffer [R]eset' })
        map('n', '<leader>ghp', gitsigns.preview_hunk, { desc = '[g]it hunk [p]review' })
        map('n', '<leader>ghd', gitsigns.diffthis, { desc = '[g]it [d]iff against index' })
        map('n', '<leader>ghD', function()
          gitsigns.diffthis '@'
        end, { desc = '[g]it [D]iff against last commit' })
        -- Toggles
        map('n', '<leader>gtD', gitsigns.toggle_deleted, { desc = '[T]oggle [g]it show [D]eleted' })
      end,
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
