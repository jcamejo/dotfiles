set nocompatible              " be iMproved, required
filetype off                  " required
set number

"Matchit
packadd! matchit

syntax on
" set the vsplit on the right side
set splitright
" Colorscheme
set background=dark
" Mantaining lines below cursor
set scrolloff=4

let g:solarized_termcolors=16
colorscheme solarized
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let mapleader=" "
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Rails plugin
Plugin 'tpope/vim-rails'

" Rbenv integration
Plugin 'tpope/vim-rbenv'

" Navigation
Plugin 'ctrlpvim/ctrlp.vim'

" Project Browser
Plugin 'scrooloose/nerdtree'

" Terminal emulator
Plugin 'vim-scripts/Conque-Shell'

"Git browser
Plugin 'xuyuanp/nerdtree-git-plugin'

" Ruby highlightning
Plugin 'vim-ruby/vim-ruby'

" Bundler
Plugin 'tpope/vim-bundler'

" Slim highlightning
Plugin 'slim-template/vim-slim'

" Rspec
Plugin 'thoughtbot/vim-rspec'

" Testing
Plugin 'skalnik/vim-vroom'

" adds end and do into ruby syntax
Plugin 'tpope/vim-endwise'

" Autocompletion
Plugin 'ervandew/supertab'

"Status line
Plugin 'itchyny/lightline.vim'

"Tmux navigator
Bundle 'christoomey/vim-tmux-navigator'

"Tmux runner
Plugin 'christoomey/vim-tmux-runner'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Forcing file detection
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set guifont=Menlo\ Regular:h13
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Shortcut for saving
map <Leader>w :update<CR>

" Shortcut for escape Shift Enter
inoremap jj <Esc>

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Navigating through wrapped lines
nmap k gk
nmap j gj

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" editing tabs
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
"undo commands
set undodir=~/.vim/undodir

