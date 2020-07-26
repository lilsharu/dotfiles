set runtimepath+=/home/mastermind/.cache/dein/repos/github.com/Shougo/dein.vim

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
if dein#load_state('/home/mastermind/.cache/dein')
    call dein#begin('/home/mastermind/.cache/dein')

  " Let dein manage dein
  " Required:
    call dein#add('/home/mastermind/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('chriskempson/base16-vim')
    call dein#add('morhetz/gruvbox')
    call dein#add('jremmen/vim-ripgrep')
    call dein#add('tpope/vim-fugitive')
    call dein#add('leafgarland/typescript-vim')
    call dein#add('vim-utils/vim-man')
    call dein#add('lyuts/vim-rtags')
    call dein#add('https://github.com/kien/ctrlp.vim')
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
    call dein#add('mbbill/undotree')
    call dein#add('junegunn/vim-easy-align')
    call dein#add('https://github.com/chrisbra/Colorizer')
    call dein#add('octol/vim-cpp-enhanced-highlight')
    call dein#add('vim-airline/vim-airline')
    call dein#add('preservim/nerdtree')
    call dein#add('Shougo/deoplete.nvim')
        inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
        inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
    call dein#add('zchee/deoplete-clang')
        let g:deoplete#enable_at_startup = 1
        let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-10/lib/libclang.so'
        let g:deoplete#sources#clang#clang_header='/usr/include/clang'
    call dein#add('lervag/vimtex')
        let g:tex_flavor='latex'
        let g:vimtex_view_method='zathura'
        let g:vimtex_quickfix_mode=0
        set conceallevel=1
        let g:tex_conceal='abdmg' 
    call dein#add('sirver/ultisnips')
        let g:UltiSnipsExpandTrigger = '<tab>'
        let g:UltiSnipsJumpForwardTrigger = '<tab>'
        let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set background=dark
set smartcase
set undofile
set incsearch
set nowrap
set termguicolors
set t_Co=256
set backspace=indent,eol,start

inoremap jk <esc>

map j gj
map k gk

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call dein#begin(expand('~/.cache/dein'))
call dein#end()

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:gruvbox_italic=1
colorscheme gruvbox

let g:airline_powerline_fonts=1
let g:airline_detect_modified=1
let g:airline_detect_paste=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
"let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
"nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
map <leader>pv :NERDTreeToggle<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>

nnoremap <TAB> >>
vnoremap <C-TAB> <gv

nnoremap <C-n> :tabnew 
