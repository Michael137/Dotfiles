" Vundle
" When adding new plugins call: "PluginInstall"
set nocompatible
syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'flazz/vim-colorschemes'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rhysd/vim-clang-format'
call vundle#end()
filetype plugin indent on

" Vim 

" Hotkeys
set pastetoggle=<F2>

" Tabs
set noet ci pi sw=4 ts=4

" vim-airline
let g:airline_theme='angr'
let g:airline_powerline_fonts = 1
set laststatus=2
set t_Co=256

" Colors
" colorscheme elflord
colorscheme badwolf

" Mouse settings
set mouse=a

" Whitespace
set list listchars=eol:¬,tab:>-,trail:·,extends:>,precedes:<,space:·
hi SpecialKey ctermfg=247 ctermbg=234

" Highlighting
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
set cursorline

" Easymotion
let mapleader = "\<Space>"

" vim-clang-format
let g:clang_format#style_options = {
\ "Language" : "Cpp",
\ "AccessModifierOffset" : 4,
\ "AlignAfterOpenBracket " : "Align",
\ "AlignConsecutiveAssignments" : "true",
\ "AlignConsecutiveDeclarations": "false",
\ "AlignEscapedNewlines" : "Right",
\ "AlignOperands" : "true",
\ "AlignTrailingComments" : "true",
\ "AllowAllParametersOfDeclarationOnNextLine" : "false",
\ "AllowShortBlocksOnASingleLine" : "true",
\ "AllowShortCaseLabelsOnASingleLine" : "true",
\ "AllowShortFunctionsOnASingleLine" : "All",
\ "AllowShortIfStatementsOnASingleLine" : "false",
\ "AllowShortLoopsOnASingleLine" : "false",
\ "AlwaysBreakAfterDefinitionReturnType" : "None",
\ "AlwaysBreakAfterReturnType" : "None",
\ "AlwaysBreakBeforeMultilineStrings" : "false",
\ "AlwaysBreakTemplateDeclarations" : "false",
\ "BinPackArguments" : "true",
\ "BinPackParameters" : "true",
\ "BreakBeforeBinaryOperators" : "All",
\ "BreakBeforeBraces" : "Allman",
\ "BreakBeforeInheritanceComma" : "false",
\ "BreakBeforeTernaryOperators" : "true",
\ "BreakConstructorInitializersBeforeComma" : "false",
\ "BreakConstructorInitializers" : "BeforeComma",
\ "BreakStringLiterals" : "true",
\ "ColumnLimit": 80,
\ "CompactNamespaces" : "false",
\ "ConstructorInitializerAllOnOneLineOrOnePerLine" : "false",
\ "ConstructorInitializerIndentWidth": 4,
\ "ContinuationIndentWidth": 4,
\ "Cpp11BracedListStyle" : "true",
\ "DerivePointerAlignment" : "false",
\ "DisableFormat" : "false",
\ "ExperimentalAutoDetectBinPacking" : "false",
\ "FixNamespaceComments" : "true",
\ "IncludeBlocks" : "Preserve",
\ "IndentCaseLabels" : "true",
\ "IndentPPDirectives" : "AfterHash",
\ "IndentWidth": 4,
\ "IndentWrappedFunctionNames" : "false",
\ "KeepEmptyLinesAtTheStartOfBlocks" : "false",
\ "MaxEmptyLinesToKeep": 1,
\ "NamespaceIndentation" : "None",
\ "PenaltyBreakAssignment": 2,
\ "PenaltyBreakBeforeFirstCallParameter": 19,
\ "PenaltyBreakComment": 300,
\ "PenaltyBreakFirstLessLess": 120,
\ "PenaltyBreakString": 1000,
\ "PenaltyExcessCharacter": 1000000,
\ "PenaltyReturnTypeOnItsOwnLine": 60,
\ "PointerAlignment" : "Left",
\ "ReflowComments" : "true",
\ "SortIncludes" : "true",
\ "SortUsingDeclarations" : "true",
\ "SpaceAfterCStyleCast" : "false",
\ "SpaceAfterTemplateKeyword" : "false",
\ "SpaceBeforeAssignmentOperators" : "true",
\ "SpaceBeforeCtorInitializerColon" : "true",
\ "SpaceBeforeInheritanceColon" : "true",
\ "SpaceBeforeParens" : "Never",
\ "SpaceBeforeRangeBasedForLoopColon" : "false",
\ "SpaceInEmptyParentheses" : "false",
\ "SpacesBeforeTrailingComments": 1,
\ "SpacesInAngles" : "false",
\ "SpacesInContainerLiterals" : "true",
\ "SpacesInCStyleCastParentheses" : "false",
\ "SpacesInParentheses" : "true",
\ "SpacesInSquareBrackets" : "false",
\ "Standard" : "Cpp11",
\ "TabWidth": 4,
\ "UseTab" : "ForIndentation" }

" Hybrid line numbers
set nu relativenumber

" Spell checker
map <F6> :setlocal spell spelllang=en_us<CR>

"" Guides
" Navigation
inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>

" C++
autocmd FileType cpp,c inoremap ;i #include<Space><><Enter><++><Esc>k$F<li
autocmd FileType cpp,c inoremap ;m int main() {<Enter><++>;<Enter>return 0;<Enter>}<Esc>G?main<CR>
autocmd FileType cpp,c inoremap ;t template<><Space><++><Esc>Felli

" Autocomplete
inoremap ;" "" <++><Esc>F"i
inoremap ;' '' <++><Esc>F'i
inoremap ;( () <++><Esc>F)i
inoremap ;[ [] <++><Esc>F]i
inoremap ;{ {} <++><Esc>F}i
inoremap ;< <> <++><Esc>F>i
inoremap ;{<Enter> {<Enter><Enter>}<Esc><UP>i<Tab>
inoremap ;/*<CR> /*<CR><Esc>0R** <CR>*/<Enter><++><Esc><UP><UP>A

"" Latex previewer
" for Vim plugin
autocmd FileType tex map ;C :!lualatex %<CR><CR>
autocmd FileType tex map ;M :!mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>
