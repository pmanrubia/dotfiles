call plug#begin()
Plug 'craigemery/vim-autotag'
Plug 'jlanzarotta/jufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'elixir-editors/vim-elixir'
Plug 'vim-syntastic/syntastic'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'godlygeek/tabular'
call plug#end()

let mapleader=","

set expandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamed
set number

map <leader>s :w<CR>
map <leader>a :wa<CR>
map <leader>x :xa<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" configure Vim to watch for changes in your .vimrc and automatically reload the config.
" https://superuser.com/questions/132029/how-do-you-reload-your-vimrc-file-without-restarting-vim
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END


" Plugin: NERDTree
" URL: https://github.com/scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>


" Plugin: BufferExplorer
" URL: https:://github.com/jlanzarotta/jufexplorer
map <leader>be :BufExplorer<CR>


" Plugin: Control-p
" URL: https://github.com/kien/ctrlp.vim 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore     = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'


" Plugin: Vim-gist
" Url: https://github.com/mattn/gist-vim
let g:gist_clip_command    = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private    = 1
let g:gist_show_privates   = 1


" Plugin: ack
" URL: https://github.com/mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" Plugin: vim-test
" URL: https://github.com/janko-m/vim-test
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
let test#strategy = "dispatch"

" Plugin: godlygeek/tabular
" URL: https://github.com/godlygeek/tabular
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

