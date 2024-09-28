vim.opt.termguicolors = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

vim.g.have_nerd_font = true
vim.opt.signcolumn = 'yes'
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.updatetime = 250
vim.opt.timeoutlen = 1000

vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false
vim.opt.foldnestmax = 2
vim.opt.foldminlines = 1

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 8
-- vim.opt.colorcolumn = '80'
vim.opt.cursorline = true

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!

-- vim: ts=2 sts=2 sw=2 et
