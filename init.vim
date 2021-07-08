" Specify a directory for plugins
" - Run :echo stdpath('config') to see the current config directory
" - Avoid using standard Vim directory names like 'plugin'
" - Run :PlugInstall to install plugins
" - Run :LspInstallServer to install language servers
call plug#begin(stdpath('config') . '/plugins')
Plug 'tpope/vim-surround'
if !exists('g:vscode')
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'mattn/vim-lsp-settings'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/0.x' }
endif
call plug#end()

set clipboard=unnamed
if !exists('g:vscode')
    lang en_US.UTF-8

    set termguicolors
    set number

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

    " together with 'Ambiguous characters are double-width' enabled on iterm2
    set ambiwidth=double

    " Choose colorscheme at your pleasure
    syntax enable
    "colorscheme iceberg
    "colorscheme japanesque
    colorscheme molokai

    " Source user-defined commands file
    source ~/.config/nvim/commands.vim
endif
