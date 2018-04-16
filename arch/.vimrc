" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
call vundle#end()

" Vim
syntax on
filetype plugin indent on

" Pathogen
" execute pathogen#infect()

" Tabs
set noet ci pi sts=8 sw=8 ts=8

" Hotkeys
set pastetoggle=<F2>

" Autocomplete
ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O
ino {;<CR> {<CR>};<ESC>O
ino /* /**/<left>

" Colors
" colorscheme elflord

" Mouse settings
set mouse=a

" Whitespace
set list listchars=eol:¬,tab:>-,trail:·,extends:>,precedes:<,space:·

" vim-airline
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
" set laststatus=2
set t_Co=256
colorscheme badwolf

" Highlighting
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set cursorline
hi SpecialKey ctermfg=247 ctermbg=234
hi MatchParen cterm=none ctermbg=green ctermfg=blue

" Easymotion
let mapleader = "\<Space>"
