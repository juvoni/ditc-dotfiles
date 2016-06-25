set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'valloric/youcompleteme'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mhartington/oceanic-next'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'ryanoasis/vim-devicons'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


let g:syntastic_javascript_checkers = ['eslint']
let g:airline_powerline_fonts = 1
let g:jsx_ext_required = 0
let g:airline_theme='oceanicnext'
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:WebDevIconsUnicodeGlyphDoubleWidth = 3

set guifont=DroidSansMonoForPowerline\ Nerd\ Font:h14
set laststatus=2
set colorcolumn=100
set t_Co=256
set formatoptions-=t
set nowrap
set cursorline
set number
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set scrolloff=5
set linespace=4

syntax enable
colorscheme oceanicnext
set background=dark
