" Leave vi behind
set nocompatible

" Set the leader character to comma
let mapleader = ","

" status line from destroyallsoftware.com
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Use <tab> for autocompletion
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Ignore source control directories in auto completion (thanks @nippysaurus)
let g:ctrlp_custom_ignore = '\v[\/]\.(git|svn)$'

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

" Remove any triling whitespace from every line
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

" Create a guideline on the 81st character
set colorcolumn=81
hi ColorColumn ctermbg=lightgrey

" Keep text in the same place when spliting a window
set splitbelow
set splitright

" Cancel insert mode ofter 30 seconds
au CursorHoldI * stopi
set updatetime=30000

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
