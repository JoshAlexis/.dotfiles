set clipboard=unnamedplus
set cursorline
set hidden
set mouse=a
set number
set showcmd
set hlsearch
" set list
set relativenumber
set title
set wildmenu
set ignorecase
set encoding=utf-8
set nowrap
" Tab size
set expandtab
set smarttab
set si
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on
set t_Co=256

call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'jiangmiao/autopairs'
  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  Plug 'preservim/nerdtree'
call plug#end()

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" maps

let mapleader=' '

nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q!<CR>
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>q :bdelete<CR>

" Tabs
nnoremap <S-Tab> :tabp<CR>
nnoremap <Tab> :tabn<CR>
nnoremap <silent> <S-t> :tabnew<CR>

" NERDTree Config
let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * NERDTree | if argc() > 0 || exists('s:std_in') | wincmd p | endif
" exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" if another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
