return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    dependencies = {
      'micangl/cmp-vimtex',
    },
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.tex_flavor = 'latex'
      vim.g.tex_conceal = 'abdmg'
      vim.g.conceallevel = 2
      vim.g.vimtex_quickfix_mode = 2
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_quickfix_autoclose_after_keystrokes = 2
      vim.g.vimtex_quickfix_open_on_warning = 0
      -- vim.cmd 'call vimtex#syntax#new_region_math("align")'
      -- vim.g.vimtex_syntax_custom_envs = {
      --   {'name'= 'align'},{'mathmode'=1}
      --   -- {'name': 'align*','math': 1},
      --   }
    end,
  },
}