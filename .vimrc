set nocompatible              " be iMproved, required
filetype on                  " required
filetype plugin indent on    " required
filetype plugin on

set nonumber
set rnu
set hidden
set ignorecase
set autoindent
set bs=2
set encoding=utf-8
set list listchars=nbsp:⎵
set colorcolumn=120

syntax enable

if has('vim')
  packadd! matchit
else
  runtime! macros/matchit.vim
endif

"Matchit

" set the vsplit on the right side
set splitright
" Mantaining lines below cursor
set scrolloff=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
let mapleader=" "
call plug#begin('~/.vim/plugged')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Solarized theme
Plug 'overcache/NeoSolarized'

" Dracula theme
Plug 'dracula/vim', {'as': 'dracula'}

" Lint Helper
"Plug 'dense-analysis/ale'

" Sensible
Plug 'tpope/vim-sensible'

"Colorscheme
Plug 'drewtempelmeyer/palenight.vim'

" Fugitive. git handler
Plug 'tpope/vim-fugitive'

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}

" Rails Plug
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

" Rbenv integration
Plug 'tpope/vim-rbenv'

" Neodark color Theme
Plug 'KeitaNakamura/neodark.vim'

"palenight terminal italics
let g:palenight_terminal_italics=1

let g:ctrlp_max_depth = 20
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[\/](tmp|log|node_modules|templates|bin|\.git)$',
			\ }
" Matchparen limiters
let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2
"
" Matchparen
let g:textobj_ruby_more_mappings = 1

" Project Browser
Plug 'scrooloose/nerdtree'

" Terminal emulator
Plug 'vim-scripts/Conque-Shell'

"Rename
Plug 'vim-scripts/rename'

"Git browser
Plug 'xuyuanp/nerdtree-git-plugin'

" Ruby highlightning
Plug 'vim-ruby/vim-ruby'

" Slim highlightning
Plug 'slim-template/vim-slim'

" Rspec
Plug 'thoughtbot/vim-rspec'

" Testing
Plug 'skalnik/vim-vroom'

" adds end and do into ruby syntax
Plug 'tpope/vim-endwise'

" VIM sugar for UNIX shell commands
Plug 'tpope/vim-eunuch'

" vim fugitive helper
Plug 'tpope/vim-rhubarb'

"Status line
Plug 'itchyny/lightline.vim'

"Tmux navigator
Plug 'christoomey/vim-tmux-navigator'

"Tmux runner
Plug 'christoomey/vim-tmux-runner'
"Surround helper
Plug 'tpope/vim-surround'

"Repeat dot helper
Plug 'tpope/vim-repeat'

" Commennt helper
Plug 'tpope/vim-commentary'

" Coffescript highlightning
Plug 'kchmck/vim-coffee-script'

" Javascript highlightning
Plug 'isRuslan/vim-es6'

" Text objects blocks
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'jasonlong/vim-textobj-css'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Ability to pass arguments to AG and Rg
Plug 'jesseleite/vim-agriculture'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['ruby']
  \ }

" vcl files highlightning
Plug 'fgsch/vim-varnish'

" autogenerate tags plugin
Plug 'ludovicchabant/vim-gutentags'

"autoclose pairs
Plug 'Raimondi/delimitMate'

" Startify
Plug 'mhinz/vim-startify'

" Terraform, mostly for highlightning
Plug 'hashivim/vim-terraform'

" nvim configuration
if has("nvim")
  " Auto completion
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

call plug#end()            " required

"Color scheme
set background=dark
colorscheme dracula

" The Silver Searcher
"if executable('ag')
"  " Use ag over grep
"  set grepprg=ag\ --nogroup\ --nocolor
"
"  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
"
"  " ag is fast enough that CtrlP doesn't need to cache
"  let g:ctrlp_use_caching = 0
"endif
"
" bind K to grep word under cursor
" nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

let g:deoplete#enable_at_startup = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" Forcing file detection
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim

" Removing Trailing Whitespaces
autocmd BufWritePre * :%s/\s\+$//e


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

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"

" Ale config
let g:ale_linters = {'javascript': ['eslint']}

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_linters_explicit = 1
"
" RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" Shortcut for saving
map <Leader>w :update<CR>

" Shortcut for escape Shift Enter
inoremap jj <Esc>

" Place cursor between brackets
" inoremap <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Navigating through wrapped lines
nmap k gk
nmap j gj
nmap ,f :NERDTreeFind<CR>

" FZF mappings
nnoremap <C-p> :FZF<CR>
nnoremap <Leader>f :Ag<CR>
nnoremap <leader>. :Tags<CR>
nnoremap <leader>, :BTags<CR>
nnoremap <leader>bc :BCommits<cr>
nnoremap <leader>c :Commits<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>hc :History:<cr>
nnoremap <leader>hs :History/<cr>

" not search for filename in Rf command
" command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
" command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" https://github.com/junegunn/fzf.vim/issues/346
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%', '?'),
  \                 <bang>0)

" Fomat ruby
nmap <Leader>pr <Plug>(Prettier)

" Git Fugitive
nmap <Leader>gb :Git blame<CR>

" Open vim config
nnoremap <Leader>vc :vsp ~/.vimrc<CR>

" Show hidden files NERDTree
let NERDTreeShowHidden=1

" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

" Removing the highlight search on escape
nnoremap <esc> :noh<return><esc>

" formatting on paste
set pastetoggle=<F2>

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" editing tabs
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType elm setlocal ts=4 sts=4 sw=4
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType scss setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType yajl  setlocal ts=2 sts=2 sw=2 autoindent=off
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"undo commands
set undofile
set undodir=~/.vim/undodir
set tags+=gems.tags

"clipboard sharing
set clipboard=unnamed

" Go to tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Tag navigation
nnoremap <leader>ld :vsp ~/Dev/rails/masterpages/config/locales/de.yml<cr>
nnoremap <leader>le :vsp ~/Dev/rails/masterpages/config/locales/en.yml<cr>

" always indent current line
nnoremap p ]p
" If you don't want to format in the current line
nnoremap <leader>p p

"localorie (Rails locale) mappings
nnoremap <silent> <leader>lt :call localorie#translate()<CR>
nnoremap <silent> <leader>lx :echo localorie#expand_key()<CR>

"<TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Macros

" Git
nnoremap <leader>gi :Git<cr>

let @c="oconsole.log();jjF(a''jjF'a"
let @b="obinding.pryjj"
let @p='oputs ""jji'
let @d="odebugger;jj"

"Commands
command! -nargs=1 PSearch vimgrep /<args>/gj **/*

" current spec file
nmap <leader>ct :exe  system('tmux split -h "carwow run bundle exec rspec ' . expand('%') . ' --format documentation; read"')<CR>
" spec under cursor
nmap <leader>cs :call system('tmux split -h "carwow run bundle exec rspec ' . expand('%') . ':' . line('.') . ' --format documentation; read"')<CR>

"nmap <leader>ru :exe "! carwow run bundle exec rubocop " . expand("%")<CR>
"nmap <leader>ra :exe "! carwow run bundle exec rubocop -A " . expand("%")<CR>

nmap <leader>ru :call system('tmux split -h "carwow run bundle exec rubocop ' . expand("%") . '; read"') <CR>
nmap <leader>ra :call system('tmux split -h "carwow run bundle exec rubocop -A ' . expand("%") . '; read"') <CR>


nmap <leader>gcc :call fzf#run({'source': 'git branch --format="%(if)%(HEAD)%(then)%(color:green)%(end)%(refname:short)" --color=always', 'sink': 'Git checkout', 'down': '30%', 'options': '--ansi' })<CR>

nmap <leader>po :Git push origin HEAD<CR>



"lightline specs
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['gitbranch', 'readonly', 'filename', 'modified' ]]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

hi Pmenu cterm=NONE

