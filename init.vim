:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set arabicshape!
set splitbelow splitright
set relativenumber

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-;> <C-w>l


call plug#begin('C:\Users\Acer\AppData\Local\nvim\plugged')

Plug 'turbio/bracey.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'thaerkh/vim-indentguides'
" Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
" Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
" Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'dracula/vim'
" Plug 'mattn/vim-fz'
" Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
" Plug 'https://github.com/glepnir/dashboard-nvim'
" Plug 'liuchengxu/vim-clap'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty'
Plug 'https://github.com/farmergreg/vim-lastplace'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'joshdick/onedark.vim'
Plug 'https://github.com/lepture/vim-jinja'
" Plug 'https://github.com/SirVer/ultisnips' | Plug 'https://github.com/honza/vim-snippets'
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'https://github.com/cj/vim-webdevicons'
Plug 'https://github.com/pangloss/vim-javascript'

set encoding=UTF-8

call plug#end()

let java_highlight_functions = 1
let java_highlight_all = 1
" If you are trying this at runtime, you need to reload the syntax file
set filetype=java

" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc



autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>


:colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
:nmap <space>e <Cmd>CocCommand explorer<CR>


