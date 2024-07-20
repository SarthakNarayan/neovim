" Options
" clipboard
" set clipboard+=unnamedplus " use system clipboard as default register

" set colorscheme
set colorscheme gruvbox

" more space in the neovim command line (at the bottom) for displaying messages. Default is 1
" set cmdheight=2

set completeopt=menuone,noselect " Insert mode completion using tab
set conceallevel=0 " so that `` is visible in markdown files
set fileencoding=utf-8

" highlight all matches on previous search pattern
set hlsearch

" allow the mouse to be used in neovim in all modes
set mouse=a

" number of items to show in pop-up menu when you use tab
set pumheight=10

" we don't need to see things like -- INSERT -- anymore at the bottom of the screen
set showmode=false

" always show tabs
set showtabline=2

set autoindent " copy indent from current line when starting new one
set smartindent " make indenting smarter again
set splitbelow " force all horizontal splits to go below current window
set splitright " force all vertical splits to go to the right of current window
set noswapfile " do not create a swapfile
set termguicolors " set term gui colors (most terminals support this)
set timeoutlen=1000 " time to wait for a mapped sequence to complete (in milliseconds)

" save undo history to an undo file
set undofile
set updatetime=300 " faster completion (4000ms default)
set nowritebackup " if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

set expandtab " convert tabs to spaces
set shiftwidth=2 " the number of spaces inserted for each indentation
set tabstop=2 " insert 2 spaces for a tab

set cursorline " highlight the current line
set number " set numbered lines
set norelativenumber " set relative numbered lines
set signcolumn=yes " always show the sign column, otherwise it would shift the text each time

" search settings
set ignorecase " ignore case when searching
set smartcase " if you include mixed case in your search, assumes you want case sensitive.

" wrap long text
set wrap

" disable tilde on end of buffer
set fillchars=eob:\ 

" scroll automatically when nearing the end of screen
set scrolloff=10
set sidescrolloff=10
set guifont=monospace:h17 " the font used in graphical neovim applications

set shortmess+=c

" Run vim script in a lua file
set whichwrap+=<,>,[,],h,l

" treats words like hello-world as one word so dw will remove hello-world and not just hello or world depending on where your cursor is
set iskeyword+=-

" to not continue comments
" https://www.reddit.com/r/neovim/comments/sqld76/stop_automatic_newline_continuation_of_comments/
" https://www.reddit.com/r/neovim/comments/ijukpr/problem_with_removing_auto_comment/
autocmd BufEnter * set formatoptions-=cro
autocmd BufEnter * setlocal formatoptions-=cro

" Keymaps
" ##########################################################################################
" Modes
"   normal_mode = "n",
"   insert_mode = "i",
"   visual_mode = "v",
"   visual_block_mode = "x",
"   term_mode = "t",
"   command_mode = "c",

" silent = true means you won't see the command which ran
let s:opts = { 'noremap': v:true, 'silent': v:true }

" ##########################################################################################
" remap the leader key to ,
" Nop means no remap
nnoremap <silent> , <Nop>
let mapleader = ","
let maplocalleader = ","

" ##########################################################################################
" Normal Mode --
" Better window navigation
" Use Ctrl + h,j,k,l for navigation
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

" Go to end and beginning of the line using H and L.
" S stands for Shift
nnoremap <silent> <S-h> ^
nnoremap <silent> <S-l> $

" Quicker navigation
" K is equivalent to 10k
nnoremap <silent> <S-k> 10kzz
nnoremap <silent> <S-j> 10jzz

" Remapping G to come to centre
nnoremap <silent> <S-g> Gzz

" Centre window while searching
nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" move between lines if the lines are wrapped
nnoremap <silent> j gj
nnoremap <silent> k gk

" window splits
nnoremap <silent> <leader>sv <C-w>v
nnoremap <silent> <leader>sh <C-w>s
nnoremap <silent> <leader>se <C-w>=
nnoremap <silent> <leader>sx :close<CR>

" tab management
nnoremap <silent> <leader>to :tabnew<CR>
nnoremap <silent> <leader>tx :tabclose<CR>
nnoremap <silent> <leader>tn :tabn<CR>
nnoremap <silent> <leader>tp :tabp<CR>
nnoremap <silent> <leader>tf :tabnew %<CR>

" remove search highlight
nnoremap <silent> <leader>nh :nohl<CR>

" Copying to the system clipboard
nnoremap <silent> <leader>y "+yy

" ##########################################################################################
" Insert Mode --
" Press jk fast to enter
inoremap <silent> jk <ESC>
inoremap <silent> JK <ESC>

" ##########################################################################################
" Visual --
" Stay in indent mode. Holds the indent mode
vnoremap <silent> < <gv
vnoremap <silent> > >gv

" move quickly in visual mode
vnoremap <silent> <S-k> 10k
vnoremap <silent> <S-j> 10j

" move to the end of the line in visual mode
" without these settings it goes to the end of the line
vnoremap <silent> <S-l> $
vnoremap <silent> <S-h> ^

" remap esc in visual mode
vnoremap <silent> <leader>jk <ESC>

" copying to clipboard while in visual mode
vnoremap <silent> <leader>y "+y

" ##########################################################################################
" Command Mode --
" Escape from command mode using jk
cnoremap <silent> jk <C-c>

