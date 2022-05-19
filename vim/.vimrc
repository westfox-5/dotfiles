set nocompatible

" Show line numbers
set number

" Wrap text over exceeding screen length
set columns=90
set wrap

" Show status bar
set laststatus=2

" Call .vimrc.plug file
if filereadable(expand('~/.vim/.vimrc.plug'))
	source ~/.vim/.vimrc.plug
endif
