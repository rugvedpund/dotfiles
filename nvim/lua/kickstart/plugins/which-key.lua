-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {
        {
          { '<leader>c', group = '[c]ode' },
          { '<leader>c_', hidden = true },
          { '<leader>d', group = '[d]ocument' },
          { '<leader>d_', hidden = true },
          { '<leader>g', group = '[g]it' },
          { '<leader>g_', hidden = true },
          { '<leader>gh', group = '[g]it [h]unk' },
          { '<leader>gh_', hidden = true },
          { '<leader>s', group = '[s]earch' },
          { '<leader>s_', hidden = true },
          { '<leader>t', group = '[t]oggle' },
          { '<leader>t_', hidden = true },
        },
        -- ['<leader>c'] = { name = '[c]ode', _ = 'which_key_ignore' },
        -- ['<leader>d'] = { name = '[d]ocument', _ = 'which_key_ignore' },
        -- -- ['<leader>r'] = { name = '[r]ename', _ = 'which_key_ignore' },
        -- ['<leader>s'] = { name = '[s]earch', _ = 'which_key_ignore' },
        -- -- ['<leader>w'] = { name = '[w]orkspace', _ = 'which_key_ignore' },
        -- ['<leader>t'] = { name = '[t]oggle', _ = 'which_key_ignore' },
        -- ['<leader>g'] = { name = '[g]it', _ = 'which_key_ignore' },
        -- ['<leader>gh'] = { name = '[g]it [h]unk', _ = 'which_key_ignore' },
      }
      -- visual mode
      require('which-key').add {
        { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
      }
      -- ['<leader>h'] = { 'Git [H]unk' },
      -- }, { mode = 'v' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et