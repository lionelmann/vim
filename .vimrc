set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'posva/vim-vue'
Plugin 'morhetz/gruvbox'
Plugin 'wakatime/vim-wakatime'
Plugin 'mattn/emmet-vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set nowrap
colorscheme gruvbox
" reconfigure ESCkl key
inoremap jk <ESC>
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
" Toggle NerdTreeFocus with <F6F6F6F6F6F6>
nnoremap <silent> <expr> <F6> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
" set tmp file for all .swp files
set directory^=$HOME/.vim/tmp//
:iabbrev vue <template><CR><CR></template><CR><CR><script><CR>export default {<CR><CR>}<CR></script><CR><CR><style scoped><CR><CR></style>
