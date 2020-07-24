if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set background=dark
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nowrap
set termguicolors
set t_Co=256

inoremap jk <esc>

:set backspace=indent,eol,start

map j gj
map k gk

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
    Plug 'chriskempson/base16-vim'
    Plug 'morhetz/gruvbox'
    Plug 'jremmen/vim-ripgrep'
    Plug 'tpope/vim-fugitive'
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-utils/vim-man'
    Plug 'lyuts/vim-rtags'
    Plug 'https://github.com/kien/ctrlp.vim.git'
    Plug 'https://github.com/ycm-core/YouCompleteMe.git'
    Plug 'mbbill/undotree'
    Plug 'junegunn/vim-easy-align'
    Plug 'https://github.com/chrisbra/Colorizer'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'vim-airline/vim-airline'
    Plug 'lervag/vimtex'
        let g:tex_flavor='latex'
        let g:vimtex_view_method='zathura'
        let g:vimtex_quickfix_mode=0
        set conceallevel=1
        let g:tex_conceal='abdmg' 
    Plug 'sirver/ultisnips'
        let g:UltiSnipsExpandTrigger = '<tab>'
        let g:UltiSnipsJumpForwardTrigger = '<tab>'
        let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
call plug#end()

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

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
"let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py"

" Enable debugging
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

" If the base settings don't repro, paste your existing config for YCM only,
" here:
" let g:ycm_....

" Load YCM (only)
let &rtp .= ',' . expand( '<sfile>:p:h' )
filetype plugin indent on

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[] 

highlight YcmErrorLine guibg=#ffffa1
highlight YcmWarningLine guibg=#ffffa1
highlight YcmWarningSign guibg=#ffffa1
highlight YcmWarningSection guibg=#ffffa1

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>


" YCM
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIT<CR>
