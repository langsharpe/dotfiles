" Leave vi behind
set nocompatible

" Set the leader character to comma
let mapleader = ","

""""" Vundle installation
filetype on
filetype off
set rtp+=~/.vundle/vundle
call vundle#rc('~/.vundle/')

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'ack.vim'

" Command-T Fix the height of the file window
let g:CommandTMaxHeight = 20
let g:CommandTMinHeight = 20

set wildignore+=build/*,dist/*,*.pyc,*.png,*.jpg,*.dia

" Turn on filetype indenting and specific settings
filetype indent on
filetype plugin on

" Automatically indent a new line the same amount of characters as the current line
set autoindent

" Always display a status line
set laststatus=2

" Use 4 characters and actual tabs by default
set shiftwidth=4
set tabstop=4
set softtabstop=4
set noexpandtab

" Remove any triling whitespace frmo every line
autocmd BufWritePre * :%s/\s\+$//e

" highlight search results
set hls

" line numbers
set number

" incremental search - search as you type
set incsearch

" Turn off html rendering i.e. <em> <b>...
let html_no_rendering=1

" Turn on syntax highlighting
syntax on

" Use a vertical line in insert mode

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Use ctags
set tags =~/ctags

" Create a guideline on the 101st character
set colorcolumn=101
hi ColorColumn ctermbg=lightgrey

" Keep text in the same place when spliting a window
set splitbelow
set splitright

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\	exe "normal g`\"" |
	\ endif

" Mad vi tinkering

" Cancel insert mode ofter 30 seconds
au CursorHoldI * stopi
set updatetime=30000

" Disable the arrow keys
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Make the cursor stay still when switching back to normal mode
inoremap <silent> <Esc> <ESC>`^
inoremap <silent> <C-c> <ESC>`^

" Spatial navigation
noremap <C-j> <C-d>
noremap <C-k> <C-u>

noremap <Leader>j G
noremap <Leader>k gg

noremap <C-h> b
noremap <C-l> w

noremap <Leader>h ^
noremap <Leader>l $

" Filetypes
au BufNewFile,BufRead *.mako set ft=mako

" Solarized color scheme
set background=dark
let g:solarized_termcolors=16
set t_Co=16
colorscheme solarized

