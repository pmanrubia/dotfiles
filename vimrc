call plug#begin()
Plug 'craigemery/vim-autotag'
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'elixir-editors/vim-elixir'
Plug 'janko-m/vim-test'
Plug 'vim-syntastic/syntastic'
call plug#end()

let mapleader=","

source ./vim/custom/nerdtree
source ./vim/custom/buf_explorer
source ./vim/custom/ctrlp
source ./vim/custom/test

set expandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamed
set number

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

