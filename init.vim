" Put this here -> /Users/<username>/~/.config/nvim/init.vim

" =============
" Plugins
" =============
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'stephpy/vim-yaml'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'arcticicestudio/nord-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim'
Plug 'fatih/vim-go'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/denite.nvim'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

call plug#end()

" =============
" Configuration
" =============

set number " line numbers
set ruler

set autoindent " newlines inherit from previous lines
set expandtab " tabs -> spaces
set shiftround " round indentation to nearest shiftwidth
set shiftwidth=4 " use 4 spaces when shifting
set smarttab " indent tabstop number of spaces for tab
set tabstop=4 " 4 spaces for a tab

set hlsearch " search highlighting
set ignorecase " ignore case when searching
set incsearch " search match as you type
set smartcase " switch to case sensitive when using capital letter

set nowrap " disable line wrap

set laststatus=2 " always display status bar
set noshowmode " hide vim status -- insert -- etc
set cursorline " highlight current line
set hidden " hide files in bg instead of closing them
set history=1000 " increase undo limit
set nobackup " disable backups
set noswapfile " disable swap files
set list " show hidden characters
set listchars=tab:>\ ,trail:⋅,nbsp:+,extends:>,precedes:<
set updatetime=100 " reduce delay

set backspace=indent,eol,start " fix backspace

filetype plugin indent on " enable plugins/indent rules for file types

let g:deoplete#enable_at_startup = 1
let g:nord_italic_comments = 1
let g:lightline = { 'colorscheme': 'nord' }
let g:ale_linters = { 'javascript': ['eslint'] }
let g:indentLine_color_term = 8 " match nord comment colors
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_whitespace_confirm=0
let g:indentLine_fileTypeExclude = ['nerdtree']
let g:indentLine_bufNameExclude = ['NERD_tree.*']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let mapleader=','

nnoremap <leader><leader> <C-^>
nnoremap § :noh<cr>
nnoremap <leader>[ :NERDTree<cr>
nnoremap <leader>] :NERDTreeClose<cr>
nnoremap <leader>' :NERDTreeFind<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>y :Buffers<cr>
nnoremap <C-F> :Files<cr>
nnoremap <S-F> :Rg<cr>

colorscheme nord

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
