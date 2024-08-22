-- [[ Setting options ]]
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true
vim.opt.undofile = true
vim.opt.signcolumn = 'yes'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.updatetime = 250
vim.opt.timeoutlen = 1000

vim.opt.foldmethod = 'indent'
vim.opt.breakindent = true
vim.opt.foldenable = false
vim.opt.foldnestmax = 2
vim.opt.foldminlines = 1

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.scrolloff = 5

vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!

-- vim: ts=2 sts=2 sw=2 et
