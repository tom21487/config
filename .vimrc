" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list
set listchars=tab:>-
" Indentation
set autoindent
" Absolute scrolling
set scrolloff=0
" Show line numbers
set number
" Show title in terminal
set title
" Colour scheme
colo zenburn
" Function navigation
"       https://stackoverflow.com/questions/2109503/
"       how-to-jump-to-the-beginning-of-the-current-function-body-in-vim
" Jump to the previous function
nnoremap <silent> [f :call
\ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "bw")<CR>
" Jump to the next function
nnoremap <silent> ]f :call
\ search('\(\(if\\|for\\|while\\|switch\\|catch\)\_s*\)\@64<!(\_[^)]*)\_[^;{}()]*\zs{', "w")<CR>
" Autocomplete ignores include directories 
set complete-=i
" Don't retain search highlights
set nohlsearch
" C/C++
au FileType lpc set smartindent
au FileType cpp set smartindent
" Markdown
au FileType markdown set linebreak 
