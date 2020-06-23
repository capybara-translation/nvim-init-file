" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

call plug#end()

set termguicolors
set number
set clipboard=unnamed

" Copy indent from current line
set autoindent
" Replace a tab with spaces
set expandtab

set smarttab

" Number of spaces that a tab in the file counts for.
set tabstop=8

" Number of spaces that a tab counts for in editing mode.
set softtabstop=4

" Number of spaces inserted when auto-indentation is performed.
set shiftwidth=4

set showmatch

set nobackup
set nowritebackup
set noswapfile

set hlsearch
nnoremap <ESC><ESC> :<C-u>set nohlsearch!<CR>
set imdisable
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" Deletes autoindents/end-of-line/start position of insert with BS key
set backspace=2

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%b]\ [HEX=\%B]\ [POS=%l,%v][%p%%]\ [LEN=%L]

set ignorecase
set smartcase

set synmaxcol=250

" Enable mouse
set mouse=a

" Displays non-ascii characters correctly
" set ambiwidth=double

" Choose colorscheme at your pleasure
"colorscheme iceberg
colorscheme japanesque

" Source user-defined commands file
source ~/.config/nvim/commands.vim
