" neovim config, Rugved
let g:python3_host_prog="/home/rugved/miniconda3/envs/pynvim/bin/python"

set nocompatible
filetype plugin on
filetype plugin indent on
set number
set relativenumber
set cmdheight=2
set shiftwidth=4
set softtabstop=4
set expandtab
set notimeout ttimeout ttimeoutlen=200
set confirm
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set cursorline
" set cc=80
set wildmenu
set wildmode=longest:full,full
syntax on
set clipboard=unnamedplus
set ttyfast
set mouse=a
set path+=**
set path+='~/.config/' "check if this works
set t_Co=256
set termguicolors
colorscheme evening
set scrolloff=5
" setlocal spell
set spelllang=en_us
set linebreak
set splitright
set foldmethod=indent
set foldnestmax=1

" enable relative number only for focused windows
:augroup numbertoggle
: autocmd!
: autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
: autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=2
let g:vimtex_quickfix_autoclose_after_keystrokes=1
set conceallevel=0
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<Tab>'
let g:UltiSnipsJumpBackwardTrigger='<S-Tab>'
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
" let g:UltiSnipsEnableSnipMate = 1 " for compatibility with vim-repeat


let g:tmux_navigator_no_mappings=1
let g:tmux_navigator_save_on_switch=2
let g:tmux_navigator_preserve_zoom=0

let g:netrw_banner=1
let g:netrw_liststyle=1

let g:bclose_no_plugin_maps=1

let g:ranger_map_keys = 0

let g:jupyter_mapkeys = 0

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

" vim-plug block -----------------------------------------
call plug#begin(stdpath('data') . '/plugged')
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rbgrouleff/bclose.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jupyter-vim/jupyter-vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'dense-analysis/ale'
Plug 'github/copilot.vim'
" Plug 'tpope/vim-repeat'
call plug#end()
" =========================================================


let mapleader="\<Space>"
let maplocalleader="\\"
nnoremap <LocalLeader>c :JupyterConnect<CR>
nnoremap <LocalLeader>x :JupyterSendCell<CR>
nnoremap <F5> :let @+ = expand("%")<CR>:echo "file path copied to clipboard"<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>l :Lines<CR>
nnoremap <Leader>r :reg<CR>
nnoremap <silent> <Leader>x :Bclose<CR>:echo "buffer closed"<CR>
nnoremap <Leader>e :Ranger<CR>
nnoremap <Leader>E :term ranger<CR>i
nnoremap <silent> <C-l> :nohl<CR>
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <F9> :w<CR>:!black %<CR>
noremap <silent> <M-h> :<C-U>TmuxNavigateLeft<CR>
noremap <silent> <M-j> :<C-U>TmuxNavigateDown<CR>
noremap <silent> <M-k> :<C-U>TmuxNavigateUp<CR>
noremap <silent> <M-l> :<C-U>TmuxNavigateRight<CR>
noremap <silent> <M-\> :<C-U>TmuxNavigatePrevious<CR>
nnoremap <F1> :%s///g<Left><Left>
" nnoremap <expr> j v:count == 0 ? 'gj' : "\<Esc>".v:count.'j'
" nnoremap <expr> k v:count == 0 ? 'gk' : "\<Esc>".v:count.'k'
" vnoremap <expr> j v:count == 0 ? 'gj' : "\<Esc>".v:count.'j'
" vnoremap <expr> k v:count == 0 ? 'gk' : "\<Esc>".v:count.'k'
