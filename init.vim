" --Plugins--

call plug#begin()

Plug 'Rigellute/rigel'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'francoiscabrol/ranger.vim'
" Dep for ranger
Plug 'rbgrouleff/bclose.vim'
call plug#end()



" --Visual--
syntax enable

set termguicolors
colorscheme rigel

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
