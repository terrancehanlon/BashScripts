au BufNewFile,BufRead *.go set filetype=go
set number
set nocompatible              " be iMproved, required
filetype off                  " required
execute pathogen#infect()
" Set the runtime path to include Vundle and initialize plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add your Go-related plugins here
Plugin 'fatih/vim-go'
Plugin 'cespare/vim-toml'

call vundle#end()            " required
filetype plugin indent on    " required


let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')
Plug 'octol/vim-cpp-enhanced-highlight'
" Add your plugins here

call plug#end()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
