" load pathogen
execute pathogen#infect()

set ff=unix			" prevent ^M line endings
set number			" show line numbers
set timeoutlen=200

" persistent undo
set undofile
set undolevels=1000
set undoreload=10000

" set directories
set backupdir=~/.vimfiles/backup
set directory=~/.vimfiles/swap
set undodir=~/.vimfiles/undo

" spacing
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set wrap

syntax on				" syntax highlighting

" load NERDTree
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree

" status line
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

