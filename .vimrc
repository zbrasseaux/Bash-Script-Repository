set nocompatible	" use vim improvements
set autoindent	" automatically indent new lines...

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim Indent Guides Plugin
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

set smartindent	" ...smartly

set nomodeline	" don't overwrite own .vimrc
set ignorecase	" searches are case-insensitive...
set smartcase	" ...unless they contain upper-case characters
set wrapscan	" wrap searches
set hlsearch	" highlight searches...
noremap <silent> <Space> :silent noh<Bar>echo<CR>	" ...but clear them with :space:
set nowrap	" don't wrap lines
setlocal comments-=://	" don't automatically comment
set nobackup	" don't use backup files...
set nowritebackup	" ...and don't create them
set ruler	" show the cursor
set number
highlight LineNr term=bold cterm=NONE ctermfg=2 ctermbg=NONE
set showmatch	" highlight matching brackets
set history=500	" keep 500 lines of history
set laststatus=2
syntax on	" turn on syntax highlighting
" use an informative status line...	
"set gdefault	" assume /g (global) on substitutions
"
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
