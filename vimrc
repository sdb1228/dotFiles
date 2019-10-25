set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
" For gitblaming
Plugin 'tpope/vim-fugitive'
" ale linting manager
Plugin 'w0rp/ale'
" Better vim-fugative mappings
Plugin 'tpope/vim-unimpaired'
" Buffer management
Plugin 'jeetsukumaran/vim-buffergator'
" File Browsing
Plugin 'scrooloose/nerdtree'
" Multi Cursor
Plugin 'terryma/vim-multiple-cursors'
" CoffeeScript
Plugin 'kchmck/vim-coffee-script'
" Searching like AG
Plugin 'mileszs/ack.vim'
" Bottom line styling
Plugin 'bling/vim-airline'
" Themes for Bottom Line status bar
Plugin 'vim-airline/vim-airline-themes'
" jsx syntax help
Plugin 'mxw/vim-jsx'
" Color schemeing
Plugin 'chriskempson/base16-vim'
" Commenting
Plugin 'scrooloose/nerdcommenter'
" surround
Plugin 'tpope/vim-surround'
" indent me
Plugin 'nathanaelkane/vim-indent-guides'
" golang
Plugin 'fatih/vim-go'
" js highlighting
Plugin 'pangloss/vim-javascript'
" octave highlighting
Plugin 'jvirtanen/vim-octave'
"Auto completion
" Plugin 'Valloric/YouCompleteMe'
" Elixir formatting
Plugin 'elixir-lang/vim-elixir'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" commenter
let g:NERDSpaceDelims = 1

" nerdtree close when its only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" backspace fix
set backspace=indent,eol,start

" misc
let mapleader = " "
inoremap lj <esc>:w<CR>
noremap ;s :w<CR>
noremap ;; :wq<CR>
nnoremap <C-w>f :vert wincmd f <cr>
"get file path
nnoremap <leader>fp :let @*=expand("%")<CR>
nnoremap <leader>l :ALEFix<CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>s :FZF<cr>
filetype plugin indent on
set number
set nowrap
set autoread
set noswapfile
set mouse=a
syntax enable
set rtp+=/usr/local/opt/fzf
set number
" vsplit under cursor
nnoremap <leader>vp :vertical wincmd f<CR>

" tab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"mac clipboard is vim
set clipboard=unnamed

"Ag instead of ack searching
let g:ackprg = 'ag --vimgrep'
cnoreabbrev Ack Ack!

" " ale
:let b:ale_fixers = {'javascript': ['eslint']}
:let b:ale_linters = {'javascript': ['eslint']}
:let g:ale_fixers = {'javascript': ['eslint']}
:let g:ale_linters = {'javascript': ['eslint']}
let b:ale_linters = ['eslint']
let g:ale_lint_on_enter        = 1   " no checks on open
let g:ale_lint_on_save         = 1   " check on save
let g:ale_lint_on_text_changed = 1   " check on text change
let g:ale_lint_delay           = 200 " millisecond delay before checking
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>
" let g:ale_fix_on_save = 1

" Theme stuff
let g:airline_powerline_fonts = 1
if !has("gui_running")
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
endif

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
set guifont=Source\ Code\ Pro\ for\ Powerline
set guioptions-=r
set guioptions-=L
set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" no bells
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" coffee-script
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" emment
let g:user_emmet_mode='a'

" jsx highlighting without extention
let g:jsx_ext_required = 0

" multi cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-g>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" You Complete me
let g:ycm_autoclose_preview_window_after_insertion = 1

"You Complete js ctag jumpin
augroup js
  au FileType javascript.jsx,javascript noremap <buffer> <C-]> :YcmCompleter GoTo<cr>
augroup END

" indention
let g:indent_guides_enable_on_vim_startup = 1

