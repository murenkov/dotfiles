"" General Settings
set encoding=utf-8
set number
set title
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab

"" Show hidden characters, tabs, trailing whitespace
set list
set listchars=tab:→\ ,trail:·,nbsp:·

"" Automatically remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

"" Remap <Esc>
inoremap jk <Esc>

syntax on
filetype plugin indent on

"" Vim-plug installing
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" Plugins
call plug#begin('~/.vim/bundle')
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'neomake/neomake'
Plug 'vhda/verilog_systemverilog.vim'
" Asyncronous Lint Engine
Plug 'dense-analysis/ale'
call plug#end()

"" Airline Configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "Ln:%l/%L Col:%c"
let g:Powerline_symbols = 'unicode'

"" TeX Configuration
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode = 0
let conceallevel = 1
let g:tex_conceal = 'abdmg'
"let g:vimtex_quickfix_mode = 0

"" ALE Configuration
let g:ale_fixers = {
            \ 'python': ['black', 'isort'],
            \ }
let g:ale_linters = {
            \ 'python': ['flake8'],
            \ }
let g:ale_fix_on_save = 1
