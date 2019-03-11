"
" Karel De Coster
"
"========================================================================= 
" Enable pathogen
execute pathogen#infect()

"Enable VIM features
set nocompatible

set encoding=utf-8

filetype plugin on
filetype indent on

"========================================================================= 
" Enable syntax highlighting.
syntax enable

" Use 256 colors
set t_Co=256

set background=light
colorscheme PaperColor
"========================================================================= 
" Switch on search pattern highlighting
set hlsearch

"========================================================================= 
" Show matching brace.
set showmatch

" Wrap at 78 characters
set textwidth=78

" Numer of spaces that a <TAB> in the file counts for.
set ts=4
set sw=4

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Show at least 10 lines above and below the cursor
set so=10

"========================================================================= 
" Enable linenumbers
set relativenumber
set number
set showbreak=↪

" Enable line and column highlighting
set cursorline
set cursorcolumn

"========================================================================= 
" Enable tags
set tags=tags;


"========================================================================= 
" keep 500 lines of command line history
set history=500

" Magic...
set magic

" use spaces instead of tabs
set expandtab

"========================================================================= 
" Formatting :
" t -- auto-wrap text
" c -- auto-wrap comments
" r -- automatically insert the current comment leader
set formatoptions=tcr

"========================================================================= 
" Status line
" Make command line one line high
set ch=1

" Handled by airline
set noruler

" Always show a status line
set laststatus=2

"========================================================================= 
" Show whitespace characters
set list
set listchars=tab:>.,trail:.

"========================================================================= 
" NERDTree
" Short-cut to toggle NERDTree window
map <C-n> :NERDTreeToggle<Cr>
" Replace    :e 
let NERDTreeHijackNetrw=1

"========================================================================= 
" Airline
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols for the status bar.
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='light'

"========================================================================= 
" Indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_exclude_filetypes = ['nerdtree']
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd ctermbg=215
hi IndentGuidesEven ctermbg=110

"========================================================================= 
" Automatically store a file the way I like it.
" Automatically remove trailing spaces on write
autocmd BufWritePre *%s/\s\+$//e

" Automatically change DOS line-endings to unix
autocmd BufWritePre * set ff=unix


"========================================================================= 
" Easy code completion
" Recursively searches through the dir
:set path=+**

" Show a cool menu on tab complete
set wildmenu

"========================================================================= 
" Allows to use <F5> to re-execute a command in the history window and
" immediately returns to the history window.
" See <http://vim.wikia.com/wiki/Using_command-line_history>
"
:autocmd CmdwinEnter * nnoremap <buffer> <F5> :let g:CmdWindowLineMark=line(".")<CR><CR>g::execute "normal ".g:CmdWindowLineMark."G"<CR>

