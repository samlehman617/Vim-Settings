" Vundle
set nocompatible          " Required by Vundle
filetype off              " Required by Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe'

" Plugin stuff must be above this and under Vundle
call vundle#end()
filetype plugin indent on

" Basic Stuff
syntax enable     " Syntax highlighting
set number        " Line numbers
set autoread      " Auto read when file is changed outside of vim
set ruler         " Shows current position
set foldcolumn=1  " Adds more margin to left
set cmdheight=2   " Make cmd bar 2 lines tall
set mouse=a       " Enable mouse in all modes

 " Turns off backup.  Git makes backup redundant
set nobackup     
set nowb          
set noswapfile

" Fix backspace to act as intended
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Searching
set ignorecase    " Ignore case when searching
set smartcase     " Try to be smart aboutcases when searching
set hlsearch      " Highlight search results
set incsearch     " Makes search act like search in modern browsers

" Regex
set magic         " Allows regular expressions

" Paren/Brace Matching
set showmatch     " Show matching brackets when cursor is over them
set mat=2         " Tenths of second to blink when matching brackets

" Tabs
set expandtab     " Uses spaces instead of tabs
set smarttab      " Smart tabbing
set shiftwidth=4  " 1 tab = 4 spaces
set tabstop=4     " 1 tab = 4 spaces
set lbr           " Enable line break
set tw=500        " Linebreak on 500 characters

" Indent
set ai            " Auto indent
set si            " Smart indent
set wrap          " Wrap lines

" Status Line
set laststatus=2  " Always show status line

" Colors
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Enable filetype plugins
filetype plugin on
filetype indent on

" Clang
let g:clang_library_path='usr/lib/x86_64-linux-gnu/libclang.so.1'
