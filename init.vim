" --Plugins--

call plug#begin()
Plug 'mboughaba/i3config.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ledger/vim-ledger'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'jceb/vim-orgmode'
Plug 'cespare/vim-toml'   


" Go stuff
Plug 'fatih/vim-go' 
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Python stuff
Plug 'vim-scripts/indentpython.vim'
Plug 'hdima/python-syntax'

call plug#end()

" Theme and color
set nocompatible                                           
syntax on                                                  
set termguicolors
colorscheme dracula
highlight Normal ctermbg=NONE
filetype plugin on

source ~/.config/nvim/coc.vim
source ~/.config/nvim/airline.vim


" --Visual--
"syntax enable
" syntax on
let python_highlight_all = 1
filetype plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype indent on
set showmatch

set wildmenu

set number relativenumber

set lazyredraw

" i3 sytax highlighting
aug i3config_ft_detection
        au!
        au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

"Set no show mode so that light line looks better
set noshowmode

" --Searching--
set incsearch
set hlsearch

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" --Keybinding--
noremap B ^
noremap W $
nnoremap $ <nop>
nnoremap ^ <nop>


" make line wraps better
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$
set wrap linebreak nolist


" reasonable remaps of escape and colon
nnoremap ; :
nnoremap : <nop>
inoremap jj <esc>
inoremap <esc> <nop>

" highlight last inserted text
nnoremap gV `[v`]

" md config
let g:vim_markdown_folding_style_pythonic = 1
