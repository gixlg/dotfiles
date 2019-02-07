" ~/.vimrc

"Vundle Config http://github.com/VundleVim/Vundle.Vim
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

syntax on
filetype plugin indent on
"Vundle Config END

"Vundle Plugin (in order to install plugin fo :PluginInstall inside VIM) 
"Plugin 'scrooloose/syntastic'		"https://github.com/vim-syntastic/syntastic
Plugin 'tpope/vim-fugitive'		"https://github.com/tpope/vim-fugitive
Plugin 'vim-airline/vim-airline'	"https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline-themes'	"https://github.com/vim-airline/vim-airline-themes
Plugin 'scrooloose/nerdtree'		"https://github.com/scrooloose/nerdtree
let g:airline_theme='dark'


"My configuration
set nowrap
set number
set is
set hlsearch
set list
