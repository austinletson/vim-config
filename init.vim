" --Plugins--

call plug#begin()
" Formating Plugins
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'

" Visual Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }

" Plugins For File Types
Plug 'mboughaba/i3config.vim'
Plug 'ledger/vim-ledger'
Plug 'jceb/vim-orgmode'

" Go Plugins
Plug 'fatih/vim-go' 
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Python Plugins 
Plug 'vim-scripts/indentpython.vim'
Plug 'hdima/python-syntax'

call plug#end()

" ---------------
" Theme and Color
" ---------------

set nocompatible
syntax enable 
colorscheme dracula
highlight Normal ctermbg=NONE
filetype plugin on


" ----------
" --Source--
" ----------

" source coc configuration file
" coc provides completion for pretty much everything
source ~/.config/nvim/coc.vim

" source airline configuration
source ~/.config/nvim/airline.vim


" --Visual--
let python_highlight_all = 1
filetype plugin on

" Tab nonsense
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

" Highlight last inserted text
nnoremap gV `[v`]

" Markdown config
let g:vim_markdown_folding_style_pythonic = 1


" ---------
" Searching
" ---------

set incsearch
set hlsearch

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>


" ----------
" keybinding
" ----------

" $ and 0 really?
noremap b ^
noremap w $
nnoremap $ <nop>
nnoremap ^ <nop>


" make line wraps better
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$
set wrap linebreak nolist


" Reasonable remaps of escape and colon
nnoremap ; :
nnoremap : <nop>
inoremap kj <esc>
inoremap <esc> <nop>



"python mappings
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
