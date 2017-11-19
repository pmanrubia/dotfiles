call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
call plug#end()

# NERDTree: automatically when vim starts up
autocmd vimenter * NERDTree

# NERDTree: automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

# NERDTree: close  vim if the only window left open is a NERDTree0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

# NERDTree: start
map <C-n> :NERDTreeToggle<CR>
