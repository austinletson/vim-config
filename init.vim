"ls /sys/class/backlight/ --Plugins--

call plug#begin()
Plug 'iCyMind/NeoSolarized'
Plug 'mboughaba/i3config.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

" Ranger stuff
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Go stuff
Plug 'fatih/vim-go' 

call plug#end()



" --Visual--
colorscheme NeoSolarized
set background=dark
let g:airline_powerline_fonts = 1


let g:airline_extensions = ['fugitiveline', 'branch']
let g:airline_section_y = '' 
let g:airline_section_x = '' 
let g:airline_section_z = '%{airline#util#prepend("",0)}%{airline#util#prepend("",0)}%{airline#util#prepend("",0)}%{airline#util#wrap(airline#parts#filetype(),0)}'
syntax enable
set tabstop=4
set softtabstop=4
set expandtab

filetype indent on
set showmatch

set wildmenu

set number

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

" highlight last inserted text
nnoremap gV `[v`]

inoremap jj <esc>
let mapleader = " "



let g:lightline = {
                        \ 'colorscheme': 'wombat',
                        \ 'active': {
                        \   'left': [ [ 'mode', 'paste' ],
                        \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
                        \   'right': [ [ 'lineinfo' ] ] },
                        \ 'component_function': {
                        \   'gitbranch': 'fugitive#head'
                        \ },
                        \ }
