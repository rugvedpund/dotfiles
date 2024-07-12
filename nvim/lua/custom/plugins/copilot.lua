return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      -- suggestion = { enabled = true, auto_trigger = true },
      -- panel = { enabled = true },
      panel = {
        enabled = true,
        auto_refresh = false,
        keymap = {
          jump_prev = '[[',
          jump_next = ']]',
          accept = '<C-j>',
          refresh = 'gr',
          open = '<M-CR>',
        },
        layout = {
          position = 'bottom', -- | top | left | right
          ratio = 0.4,
        },
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 75,
        keymap = {
          accept = '<C-j>',
          accept_word = false,
          accept_line = false,
          next = '<C-n>',
          prev = '<C-p>',
          dismiss = '<C-Space>',
        },
      },
    }
  end,
}
