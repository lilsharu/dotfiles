set number
syntax on
colorscheme Tomorrow-Night
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set cursorline
filetype indent on

set wildmenu
set lazyredraw
set showmatch

set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR> 
"This makes , <space> remove highlights from a search

set foldenable
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za 
"space upons surrounding folds
set foldmethod=indent

nnoremap gV `[v`] "highlights last inserted code

inoremap jk <esc>
nnoremap <leader>u :GundoToggle<CR> 
"undo \u
"edit vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"Save session and reopen with vim -S
nnoremap <leader>s :mksession<CR>

"open ag.vim
nnoremap <leader>a :Ag

"Configuring CtrlP
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_swtich_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -hidden -g ""'

call pathogen#infect()

"For Specific File Types
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END

call plug#begin('~/.vim/plugged')

    Plug 'junegunn/vim-easy-align'
    Plug 'https://github.com/chrisbra/Colorizer'

call plug#end()


