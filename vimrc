call plug#begin()
Plug 'craigemery/vim-autotag'
Plug 'jlanzarotta/bufexplorer'
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
Plug 'janko-m/vim-test'
Plug 'vim-syntastic/syntastic'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
call plug#end()

let mapleader=","

syntax enable
set background=dark
colorscheme solarized

set expandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamed
set number

map <leader>s :w<CR>
map <leader>sc <leader>s<CR> :bd<CR>
map <leader>sa :wa<CR>
map <leader>sx :xa<CR>

map <leader>fa ggVGgq``<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" configure Vim to watch for changes in your .vimrc and automatically reload the config.
" https://superuser.com/questions/132029/how-do-you-reload-your-vimrc-file-without-restarting-vim
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
    autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd


" Plugin: NERDTree
" URL: https://github.com/scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>


" Plugin: BufferExplorer
" URL: https:://github.com/jlanzarotta/bufexplorer
map <leader>be :BufExplorer<CR>


" Plugin: Control-p
" URL: https://github.com/kien/ctrlp.vim 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore     = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'


" Plugin: Vim-gist
" Url: https://github.com/mattn/gist-vim
map <leader>gl :Gist -l<CR>
map <leader>gd :Gist -d<CR>
map <leader>ge :Gist -e<CR>
map <leader>gb :Gist -b<CR>

let g:gist_clip_command  = 'pbcopy'
let g:gist_post_private  = 1
let g:gist_show_privates = 1


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
nmap <leader>t= :Tabularize /=<CR>
vmap <leader>t= :Tabularize /=<CR>
nmap <leader>t: :Tabularize /:\zs<CR>
vmap <leader>t: :Tabularize /:\zs<CR>


" Markdown 
au BufRead,BufNewFile *.md setlocal textwidth=80

" http://vimdoc.sourceforge.net/htmldoc/spell.html
autocmd BufRead,BufNewFile *.md setlocal spell


" Plugin: plasticboy/vim-markdown
" URL: http://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled           = 1
let g:markdown_fenced_languages               = ['css', 'javascript', 'ruby', 'bash = sh']
let g:vim_markdown_follow_anchor              = 1
let g:vim_markdown_new_list_item_indent       = 2
let g:vim_markdown_no_extensions_in_markdown  = 1
let g:vim_markdown_autowrite                  = 1
let g:vim_markdown_toc_autofit                = 1

" Plugin: junegunn/goyo.vim
" URL: https://github.com/junegunn/goyo.vim
nmap <leader>gs :Goyo<CR>
nmap <leader>gq :Goyo!<CR>
