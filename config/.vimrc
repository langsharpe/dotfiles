" Fix to get rvm to work from within vi
set shell=/bin/sh

"2 character tabs. No tab characters
set tabstop=2
set shiftwidth=2
set expandtab

" Automatically indent a new line the same amount of characters as the current line
set autoindent

" highlight search results 
set hls

" line numbers
set number

" incremental search - search as you type
set incsearch

" Turn on syntax highlighting
syntax on


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

