" --Plugins--

call plug#begin()
" Formating Plugins
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Visual Plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'altercation/vim-colors-solarized'

" Plugins For File Types
Plug 'mboughaba/i3config.vim'
Plug 'ledger/vim-ledger'
Plug 'jceb/vim-orgmode'

" Search Plugins
Plug 'junegunn/fzf.vim'

" Go Plugins
Plug 'fatih/vim-go' 
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Python Plugins 
Plug 'vim-scripts/indentpython.vim'
Plug 'hdima/python-syntax'

" Fun Plugins
Plug 'takac/vim-hardtime'

call plug#end()

" ################# 
"  Theme and Color
" ################# 

set nocompatible
syntax enable 
set background=light
colorscheme dracula 
"colorscheme solarized
highlight Normal ctermbg=NONE
filetype plugin on
"highlight clear LineNr

" ########
"  Source 
" ########

" source coc configuration file
" coc provides completion for pretty much everything
source ~/.config/nvim/coc.vim

" source airline configuration
source ~/.config/nvim/airline.vim

" ########
"  Visual
" ########
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

" ##########
"  Org Mode
" ##########

" Org mode leading stars
let g:org_heading_shade_leading_stars = 0

" Only todo keywords are WORKING and DONE (for me no key word means it is a todo)
let g:org_todo_keywords=['WORKING', 'DONE']

nmap \t <Plug>OrgTodoToggleNonInteractive


" ###########
"  Searching
" ###########

set incsearch
set hlsearch

" Turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" ############
"  Keybinding
" ############

" Leader remapping
let mapleader = "\<Space>"
let maplocalleader = "\\"

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

" FZF  project settings
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

nnoremap ff :Files<CR>

" Hide highlights
nnoremap <leader>h :noh<CR>

" Hard times
let  g:hardtime_default_on = 1
let g:hardtime_timeout = 500
let g:hardtime_showmsg = 1

"python mappings
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
