" General settings
set nocompatible            " Be iMproved, required

" Plug management
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'https://github.com/cacharle/c_formatter_42.vim'
Plug 'git@github.com:42paris/42header.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Basic UI and behavior
syntax on                   " Enable syntax highlighting
set encoding=utf-8          " Set encoding to UTF-8
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set autoindent              " Auto-indent new lines
set smartindent             " Smart auto-indent
set tabstop=4               " Number of spaces a tab counts for
set shiftwidth=4            " Number of spaces to use for autoindent
set expandtab               " Use spaces instead of tabs
set mouse=a                 " Enable mouse support in all modes
set hidden                  " Allow background buffers
set nobackup                " Do not keep a backup file
set nowritebackup           " Do not keep a backup file
set noswapfile              " Do not use swap files
set incsearch               " Incremental search
set hlsearch                " Highlight search results
set ignorecase              " Ignore case in search patterns
set smartcase               " Override ignorecase if search pattern contains uppercase characters
set showcmd                 " Show incomplete commands
set showmode                 " Show current mode
set laststatus=2            " Always show the status line
set cmdheight=1             " Command line height
set updatetime=300          " Faster completion (for plugins)
set signcolumn=yes          " Always show the sign column

" Theme: Catppuccin-Mocha
set termguicolors           " Enable true colors
colorscheme catppuccin_mocha

" Airline configuration
let g:airline_theme='catppuccin_mocha'
let g:airline_powerline_fonts = 1

nnoremap <F1> :Stdheader<CR>
inoremap <F1> <Esc>:Stdheader<CR>

let g:user42 = 'maoliiny'
let g:mail42 = 'maoliiny@student.hive.fi'
set clipboard=unnamedplus
