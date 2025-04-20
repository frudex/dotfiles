" --- PLUGIN SETUP ---
call plug#begin('~/.vim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Status line
Plug 'nvim-lualine/lualine.nvim'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Git integration
Plug 'tpope/vim-fugitive'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Commenting
Plug 'tpope/vim-commentary'

" Colorscheme
Plug 'morhetz/gruvbox'

call plug#end()

" --- GENERAL SETTINGS ---
syntax on
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamedplus
set mouse=a
set background=dark
colorscheme gruvbox

" --- KEYBINDINGS ---
nnoremap <C-n> :NERDTreeToggle<CR>

