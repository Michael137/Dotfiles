" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

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
let g:airline_theme='kolor'
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

" Powerline
" set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim

" Easymotion
let mapleader = "\<Space>"