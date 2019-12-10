set nu
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16
set encoding=utf-8
set nocompatible 
set textwidth=80
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
syntax enable 
filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'scroolose/nerdtree'
Plug 'lervag/vimtex'
Plug 'Valloric/YouCompleteMe'
Plug 'neomake/neomake'
call plug#end()

"Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "Ln:%l/%L Col:%c"
let g:Powerline_symbols = 'unicode'

"Nerdtree
autocmd vimenter * NERDTree

"TeX settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode = 0
let conceallevel = 1
let g:tex_conceal = 'abdmg'
"let g:vimtex_quickfix_mode = 0
