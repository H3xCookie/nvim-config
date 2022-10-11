set number
set showmatch
set mouse=a
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set nocompatible
syntax on

call plug#begin('~/.config/nvim/plugged')
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'https://github.com/tpope/vim-commentary'
    Plug 'http://github.com/tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'https://github.com/ap/vim-css-color'
    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'https://github.com/tc50cal/vim-terminal'
	Plug 'neovim/nvim-lspconfig'
	Plug 'https://github.com/preservim/tagbar'
	Plug 'https://github.com/terryma/vim-multiple-cursors'
    Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
    Plug 'ray-x/navigator.lua'
	Plug 'dracula/vim'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'neoclide/coc.nvim', {'branch': 'release', 'do' : { -> coc#util#install()}}
	Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}
	Plug ('preservim/nerdtree')
call plug#end()

colorscheme dracula


" use <Tab> for autocomplete
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()


filetype plugin indent on 

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>
nnoremap <silent>    <A-t> :tabnew<CR>


nmap <F8> :TagbarToggle<CR>
