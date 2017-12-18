" set the runtime path to include Vundle and initialize"
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Plugin
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"

" Disable VI compatibility"
set nocompatible

" Show row number"
set nu

" Hide scroll bar"
set guioptions-=r
set guioptions-=L
set guioptions-=b

" Set top line"
set showtabline=0

" Set font"
set guifont=Monaco:h13

syntax on

let g:solarized_termcolors=256 " solarized主题设置在终端下的设置
set background=dark
colorscheme solarized

set nowrap
set fileformat=dos
set cindent
set tabstop=4
set shiftwidth=4
set showmatch
set scrolloff=5
set laststatus=2
set fenc=utf-8
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase
set incsearch
set hlsearch
set noexpandtab
set whichwrap+=<,>,h,l
set autoread
set cursorline

filetype on

"split navigations
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" au BufNewFile,BufRead *.py set tabstop=4
" au BufNewFile,BufRead *.py set softtabstop=4
" au BufNewFile,BufRead *.py set shiftwidth=4
" au BufNewFile,BufRead *.py set textwidth=79
" au BufNewFile,BufRead *.py set expandtab
" au BufNewFile,BufRead *.py set autoindent
" au BufNewFile,BufRead *.py set fileformat=dos
" au BufRead,BufNewFile *.py,*.pyc,*.c,*.h match BadWhitespace /\s\+$/

" au BufNewFile,BufRead *.js, *.html, *css set tabstop=2
" au BufNewFile,BufRead *.js, *.html, *css set softtabstop=2
" au BufNewFile,BufRead *.js, *.html, *css set shiftwidth=2

map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let NERDTreeWinSize=25

let g:indentLine_char='|'
let g:indentLine_enabled=1

let g:autopep8_disable_show_diff=1

set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

map <F5> :call CompileRun()<CR>
func! CompileRun()
	exec "w !python"
endfunc

