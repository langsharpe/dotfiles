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

" Turn on filetype indenting and specific settings
filetype indent on
filetype plugin on

" Automatically indent a new line the same amount of characters as the current line
set autoindent

" Turn tab characters into spaces
set expandtab

" Remove any triling whitespace frmo every line
autocmd BufWritePre * :%s/\s\+$//e

" highlight search results
set hls

" line numbers
"set number

" incremental search - search as you type
set incsearch

" Turn on syntax highlighting
syntax on

" Use ctags
set tags =~/ctags

" Create a guideline on the 81st character
set colorcolumn=81
hi ColorColumn ctermbg=lightgrey


" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

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

noremap <C-j> <C-d>
noremap <C-k> <C-u>

" Change a word
noremap <Leader>c bcw

" Filetypes
au BufNewFile,BufRead *.mako set ft=mako

