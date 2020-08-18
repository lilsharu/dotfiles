call plug#begin()    
    "Themes and Looks
    Plug 'chriskempson/base16-vim'
    Plug 'morhetz/gruvbox'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'joshdick/onedark.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim' "Dim Paragraphs above and below
        nnoremap <C-l> :Limelight!!<CR>

    "Navigation
    Plug 'jremmen/vim-ripgrep'
    Plug 'kshenoy/vim-signature'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
        map <leader>f :Files<CR>
    Plug 'https://github.com/kien/ctrlp.vim'
        let g:ctrlp_map = '<c-p>'
        let g:ctrlp_cmd = 'CtrlP'
    Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}

    "File Management
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-eunuch' "Adds Unix Functionality (:Rename, :Delete, etc)
    Plug 'junegunn/vim-easy-align'
        "Start interactive EasyAlign in visual mode (e.g. vipga)
        xmap ga <Plug>(EasyAlign)
        "Start interactive EasyAlign for a motion/text object (e.g. gaip)
        nmap ga <Plug>(EasyAlign)

    "Version Control
    Plug 'tpope/vim-fugitive' "Git (:Git)
    Plug 'airblade/vim-gitgutter'

    "UI
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
        let g:ailine_extensions = ['branch', 'hunks', 'coc']
    Plug 'https://github.com/chrisbra/Colorizer'
    Plug 'ryanoasis/vim-devicons' "Icons for NerdTree

    "Coding Autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
        let g:coc_global_extensions = 
                    \[
                        \ 'coc-emmet', 
                        \ 'coc-css', 
                        \ 'coc-html', 
                        \ 'coc-json', 
                        \ 'coc-prettier', 
                        \ 'coc-tsserver', 
                        \ 'coc-phpls', 
                        \ 'coc-python',
                        \ 'coc-java',
                        \ 'coc-sh',
                        \ 'coc-texlab',
                        \ 'coc-clangd',
                        \ 'coc-yank'
                    \]
        command! -nargs=0 Prettier :CocCommand prettier.formatFile
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'
    Plug 'tpope/vim-surround'
    Plug 'preservim/nerdcommenter'
        let g:NERDCommentEmptyLines = 1
        let g:NERDToggleCheckAllLines = 1
        let g:NERDTrimTrailingWhitespace = 1

    "LaTeX
    Plug 'lervag/vimtex'
        let g:tex_flavor='latex'
        let g:vimtex_view_method='zathura'
        let g:vimtex_quickfix_mode=0
        set conceallevel=1
        let g:tex_conceal='abdmg' 

    "Markdown
    Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
        let g:mkdp_auto_start = 1
        let g:mkdp_refresh_slow=1
        let g:mkdp_markdown_css = '/home/mastermind/.config/nvim/github-markdown.css'
        nmap <C-s> <Plug>MarkdownPreview
        nmap <M-s> <Plug>MarkdownPreviewStop
        nmap <C-m> <Plug>MarkdownPreviewToggle

    "Python
    Plug 'vim-scripts/indentpython.vim'
    Plug 'vim-python/python-syntax'
        let python_highlight_all=1
    Plug 'nvie/vim-flake8'
        
    "HTML, CSS, and JavaScript
    Plug 'mattn/emmet-vim'

    "Snippets
    Plug 'sirver/ultisnips'
        let g:UltiSnipsExpandTrigger = '<tab>'
        let g:UltiSnipsJumpForwardTrigger = '<tab>'
        let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

call plug#end()

filetype plugin indent on

"General Indenting
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set smartindent

"Neovim Customization
    syntax on
    set noerrorbells
    set number
    set background=dark
    set backspace=indent,eol,start
    set termguicolors
    set relativenumber

"Case-insensitive searching
    set ignorecase
    set smartcase

"File Handling
    set undofile
    set incsearch
    set nowrap
    set hidden
    set nobackup
    set nowritebackup

"Additional Customization for coc.nvim
    set cmdheight=2
    set updatetime=300
    set shortmess+=c
    set signcolumn=yes

"Adds Column to signify good line length
    set colorcolumn=80
    highlight ColorColumn ctermbg=0 guibg=lightgrey

"Changes Way Panes are Set Up
    set splitright
    set splitbelow

"Customize Terminal in Neovim
    " start terminal in insert mode
    au BufEnter * if &buftype == 'terminal' | :startinsert | endif
    " open terminal on ctrl+n
    function! OpenTerminal()
        split term://bash
        resize 10
    endfunction
    nnoremap <M-t> :call OpenTerminal()<CR>

"Checks Availibility of RipGrep
    if executable('rg')
        let g:rg_derive_root='true'
    endif

"Sets up Color Scheme
    let g:gruvbox_italic=1
    let g:gruvbox_termcolors=256
    colorscheme gruvbox "onedark gruvbox

"Set Up Airline
    let g:airline_powerline_fonts=1
    let g:airline_detect_modified=1
    let g:airline_detect_paste=1
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

"Configure CtrlP
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
    let g:netrw_browse_split = 2
    "let g:netrw_banner = 0
    let g:ctrlp_use_caching = 0
    let g:netrw_winsize = 25

"Set up fzf
    nnoremap <leader>, :FZF<CR>
    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit'
      \}
    let $FZF_DEFAULT_COMMAND = 'ag -g ""'
    let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
    let $FZF_DEFAULT_OPTS='--reverse'

"Some other git stuff
    map <silent><Leader>z :call setbufvar(winbufnr(popup_atcursor(systemlist("cd " . shellescape(fnamemodify(resolve(expand('%:p')), ":h")) . " && git log --no-merges -n 1 -L " . shellescape(line("v") . "," . line(".") . ":" . resolve(expand("%:p")))), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>

"coc.nvim Config
    inoremap <silent><expr> <C-j>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.
    inoremap <silent><expr> <c-space> coc#refresh()

    " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
    " Coc only does snippet and additional edit on confirm.
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

    " Use `[c` and `]c` to navigate diagnostics
    nmap <silent> [c <Plug>(coc-diagnostic-prev)
    nmap <silent> ]c <Plug>(coc-diagnostic-next)

    " Remap keys for gotos
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window
    nnoremap <silent> K :call <SID>show_documentation()<CR>

    function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
      else
        call CocAction('doHover')
      endif
    endfunction

    autocmd CursorHold * silent call CocActionAsync('highlight')

    " Remap for rename current word
    nmap <leader>rn <Plug>(coc-rename)

    " Remap for format selected region
    xmap <leader>f  <Plug>(coc-format-selected)
    nmap <leader>f  <Plug>(coc-format-selected)

    augroup mygroup
      autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
    xmap <leader>a  <Plug>(coc-codeaction-selected)
    nmap <leader>a  <Plug>(coc-codeaction-selected)

    " Remap for do codeAction of current line
    nmap <leader>ac  <Plug>(coc-codeaction)
    " Fix autofix problem of current line
    nmap <leader>qf  <Plug>(coc-fix-current)

    " Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
    nmap <silent> <C-n> <Plug>(coc-range-select)
    xmap <silent> <C-n> <Plug>(coc-range-select)
    xmap <silent> <C-p> <Plug>(coc-range-select-backword)

    " Use `:Format` to format current buffer
    command! -nargs=0 Format :call CocAction('format')

    " Use `:Fold` to fold current buffer
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)

    " use `:OR` for organize import of current buffer
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

    " Add status line support, for integration with other plugin, checkout `:h coc-status`
    set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

    " Using CocList
        " Show all diagnostics 
        nnoremap <silent> ,a  :<C-u>CocList diagnostics<cr>
        " Manage extensions
        nnoremap <silent> ,e  :<C-u>CocList extensions<cr>
        " Show commands
        nnoremap <silent> ,c  :<C-u>CocList commands<cr>
        " Find symbol of current document
        nnoremap <silent> ,o  :<C-u>CocList outline<cr>
        " Search workspace symbols
        nnoremap <silent> ,s  :<C-u>CocList -I symbols<cr>
        " Do default action for next item.
        nnoremap <silent> ,j  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent> ,k  :<C-u>CocPrev<CR>
        " Resume latest coc list
        nnoremap <silent> ,p  :<C-u>CocListResume<CR>

"Remap functions
    inoremap jk <esc>
    let mapleader = " "
    
    nnoremap <leader>g :Goyo<CR>

    nnoremap <TAB> >>
    nnoremap <S-TAB> <<

    "turn terminal to normal mode with jk
    tnoremap jk <C-\><C-n>

    "Rempas Control-Backspace to delete the previous word in insert mode
    inoremap <C-_> <C-w>
    inoremap <C-BS> <C-w>

    "Shortcut Remaps
    nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><ESC>
    imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

"Window Management
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>
    nnoremap <leader>u :UndotreeShow<CR>
    nnoremap <leader>pv <CMD>CHADopen<CR>
    nnoremap <leader>ppv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
    nnoremap <silent> <Leader>+ :vertical resize +5<CR>
    nnoremap <silent> <Leader>- :vertical resize -5<CR>
    nnoremap <leader>n :tabn<CR>
    nnoremap <leader>p :tabp<CR>
    nnoremap <leader>t :tabnew 

"Use RipGrep
    nnoremap <Leader>ps :Rg<SPACE>

