return {
  'chipsenkbeil/org-roam.nvim',
  tag = '0.1.0',
  dependencies = {
    {
      'nvim-orgmode/orgmode',
      tag = '0.3.4',
    },
  },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/files/orgfiles/**/*.org',
      org_default_notes_file = '~/files/orgfiles/dump.org',
      org_todo_keywords = { 'TODO', '|', 'DONE', 'NOTE' },
      org_todo_keyword_faces = {
        -- TODO = ':background #000000 :foreground red :weight bold', -- overrides builtin color for `TODO` keyword
        -- WAIT = ':background #000000',
        -- NOTE = ':foreground blue',
      },
      org_capture_templates = {
        w = {
          description = 'work',
          template = '* TODO %?\n %U',
          target = '~/files/orgfiles/work.org',
        },
        e = {
          description = 'event calendar',
          template = '* %?\n %U',
          target = '~/files/orgfiles/calendar.org',
        },
        d = {
          description = 'dump',
          template = '* NOTE %?\n %U',
          target = '~/files/orgfiles/dump.org',
        },
      },
    }

    -- Setup org-roam
    require('org-roam').setup {
      directory = '~/files/orgfiles',
      -- optional
      -- org_files = {
      --   '~/another_org_dir',
      --   '~/some/folder/*.org',
      --   '~/a/single/org_file.org',
      -- },
    }

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
