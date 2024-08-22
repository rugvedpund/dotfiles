return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/Files/orgfiles/**/*',
      org_default_notes_file = '~/Files/orgfiles/refile.org',
      org_todo_keywords = { 'TODO', 'WAIT', '|', 'DONE', 'NOTE' },
      org_todo_keyword_faces = {
        -- TODO = ':background #000000 :foreground red :weight bold', -- overrides builtin color for `TODO` keyword
        -- WAIT = ':background #000000',
        -- NOTE = ':foreground blue',
      },
      org_capture_templates = {
        w = {
          description = 'work',
          template = '* TODO %?\n %U',
          target = '~/Files/orgfiles/work.org',
        },
        e = {
          description = 'event calendar',
          template = '* %?\n %U',
          target = '~/Files/orgfiles/calendar.org',
        },
        d = {
          description = 'dump',
          template = '* NOTE %?\n %U',
          target = '~/Files/orgfiles/dump.org',
        },
      },
    }

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
