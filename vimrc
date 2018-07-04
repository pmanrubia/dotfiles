call plug#begin()
Plug 'jlanzarotta/bufexplorer'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-ruby/vim-ruby'
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
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'milkypostman/vim-togglelist'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
call plug#end()

let mapleader=","

syntax enable                     " Enable syntax
colorscheme solarized             " Use solarized colorscheme
filetype on                       " Enable filetype detection
filetype indent on                " Enable filetype-specific indenting
filetype plugin on                " Enable filetype-specific plugins

set nocompatible                  " We're running Vim, not Vi!
set colorcolumn=100               " Draw a vertical bar after 80 characters
set encoding=utf-8                " Use UTF-8 by default
set expandtab                     " Use spaces instead of tabs
set hlsearch                      " Highlight search matches
set ignorecase                    " Make searches case insensitive
set list                          " List invisible characters
set nobackup                      " Don't create backup files
set noswapfile                    " Don't create swap files
set nowrap                        " Don't wrap long lines
set number                        " Show line numbers
set scrolloff=5                   " Scroll the buffer before reaching the end
set shiftwidth=2                  " Auto-indent using 2 spaces
set shortmess+=I                  " Hide the welcome message
set smartcase                     " (Unless they contain a capital letter)
set sts=2                         " Backspace deletes whole tabs at the end of a line
set t_Co=256                      " Use all 256 colours
set t_te=                         " Don't clear screen when suspending vim
set tabstop=2                     " A tab is two spaces long
set timeoutlen=300                " Leader key timeout is 300ms
set undodir=~/.vim/undo           " Store undo files in ~/.vim
set undofile                      " Persist undos between sessions
set wildmode=list:longest,full    " Autocompletion favours longer string
set clipboard=unnamed             " Use clipboard as the default register.
set nohlsearch                    " Search highlight non persistent
set background=dark               " use solarized black background

" File types to ignore
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*/tmp/*
set wildignore+=*/.git/*,*/.rbx/*,*/.hg/*,*/.svn/*,*/.DS_Store
set wildignore+=*.swp,*~,._*

" Set file types for various extensions
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Procfile,*.ru,*.rake} set ft=ruby
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set ft=markdown | set wrap | setlocal spell
au BufRead,BufNewFile {*.json,.jshintrc,.eslintrc,*.pegjs} set ft=javascript

" Use the full window width for the quickfix list
au FileType qf wincmd J

" Quit the quickfix list with q
au FileType qf nmap <buffer> q :q<cr>

" Remember last location in a file, unless it's a git commit message
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

nnoremap <C-J> <C-W><C-J> " Bind moving across windows
nnoremap <C-K> <C-W><C-K> " Bind moving across windows
nnoremap <C-L> <C-W><C-L> " Bind moving across windows
nnoremap <C-H> <C-W><C-H> " Bind moving across windows

vnoremap > >gv " Bind indentation commands
vnoremap < <gv " Bind indentation commands

nmap <leader>N :NERDTreeFind<cr><Paste>
nmap <leader>f :set hlsearch<cr>:Ack!<space>
nmap <leader>fr :AckFromSearch<cr>
nmap <leader>x :Dispatch<space>
nmap <leader>X :Dispatch!<space>

nmap <silent> t<C-n> :TestNearest<CR> " jamko-m/vimtest
nmap <silent> t<C-f> :TestFile<CR>    " jamko-m/vimtest
nmap <silent> t<C-s> :TestSuite<CR>   " jamko-m/vimtest
nmap <silent> t<C-l> :TestLast<CR>    " jamko-m/vimtest
nmap <silent> t<C-g> :TestVisit<CR>   " jamko-m/vimtest

nmap <leader>t= :Tabularize /=<CR>    " godlygeek/tabular
vmap <leader>t= :Tabularize /=<CR>    " godlygeek/tabular
nmap <leader>t: :Tabularize /:\zs<CR> " godlygeek/tabular
vmap <leader>t: :Tabularize /:\zs<CR> " godlygeek/tabular

map <C-n> :NERDTreeToggle<CR>
map <leader>be :BufExplorer<CR> " jlanzarotta/bufexplorer
map <leader>gl :Gist -l<CR>           " mattn/gist-vim
map <leader>gd :Gist -d<CR>           " mattn/gist-vim
map <leader>ge :Gist -e<CR>           " mattn/gist-vim
map <leader>gb :Gist -b<CR>           " mattn/gist-vim

" URL: https://github.com/kien/ctrlp.vim
let g:ctrlp_custom_ignore     = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_working_path_mode = 'ra'

let g:gist_clip_command  = 'pbcopy'
let g:gist_post_private  = 1
let g:gist_show_privates = 1

" Plugin: ack URL: https://github.com/mileszs/ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:ackhighlight = 1

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

" Plugin: NERDTree
" URL: https://github.com/scrooloose/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Strip trailing whitespace on write
function! <SID>StripTrailingWhitespace()
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespace()

