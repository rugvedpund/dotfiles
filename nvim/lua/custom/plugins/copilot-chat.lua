return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'main',
    event = 'VeryLazy',
    dependencies = {
      { 'nvim-telescope/telescope.nvim' },
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      debug = false, -- Enable debugging
      auto_follow_cursor = false, -- Auto-follow cursor in chat
    },
    -- NOTE: keymaps in keymaps.lua
    --
    -- config = function()

    -- vim.keymap.set('x', '<leader>ap', function()
    --   local input = vim.fn.input 'Selection Chat: '
    --   if input ~= '' then
    --     require('CopilotChat').ask(input, { selection = require('CopilotChat.select').visual })
    --   end
    -- end)

    -- vim.keymap.set('x', '<leader>cc', ':CopilotChat ')
    -- end,
  },
}
