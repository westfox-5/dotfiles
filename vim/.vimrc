set nocompatible

" Show line numbers
set number

" Wrap text over exceeding screen length
" set columns=90
set wrap

" Show status bar
set laststatus=2

" Call .vimrc.plug file
if filereadable(expand('~/.vim/.vimrc.plug'))
	source ~/.vim/.vimrc.plug
endif


set noshowmode

colorscheme codedark 

" Custom commands
command! Config execute ":e $MYVIMRC"
command! Reload execute ":so $MYVIMRC"
command! Filename execute ":echo expand('%:p')"
command! SayHello execute 'echo "Hellouuuuu"'

" Requires RiGrep
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/*"'

command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nmap <leader>/ :BLines<CR>
nmap <leader>? :Rg<CR>

let g:fzf_commands_expect = 'enter'

nmap <leader>p :Files!<CR>

let g:lightline = {
  \ 'colorscheme': 'codedark',
  \ 'active': {
  \   'right': [['coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok'], ['lineinfo'], ['fileformat', 'filetype']]
  \ },
  \ 'component_function': {
  \   'filename': 'LightLineFilename'
  \ },
  \ 'component': {
  \   'lineinfo': "[%l:%-v] [%{printf('%03d/%03d',line('.'),line('$'))}]",
  \ },
  \ 'tab_component_function': {
  \   'tabnum': 'LightlineWebDevIcons',
  \ }
  \ }
" call lightline#coc#register()
" let g:highlightedyank_highlight_duration = 200



