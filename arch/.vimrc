" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'google/vim-maktaba'
"Plugin 'google/vim-codefmt'
"Plugin 'google/vim-glaive'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'rhysd/vim-clang-format'
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

" vim-clang-format
let g:clang_format#style_options = {
\ "Language" : "Cpp",
\ "AccessModifierOffset" : 8,
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
\ "ConstructorInitializerIndentWidth": 8,
\ "ContinuationIndentWidth": 8,
\ "Cpp11BracedListStyle" : "true",
\ "DerivePointerAlignment" : "false",
\ "DisableFormat" : "false",
\ "ExperimentalAutoDetectBinPacking" : "false",
\ "FixNamespaceComments" : "true",
\ "IncludeBlocks" : "Preserve",
\ "IndentCaseLabels" : "true",
\ "IndentPPDirectives" : "AfterHash",
\ "IndentWidth": 8,
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
\ "TabWidth": 8,
\ "UseTab" : "ForIndentation" }
