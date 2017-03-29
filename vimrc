" Plugins for vim

" NOTE: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

set nocompatible
filetype off

" List of plugin
call plug#begin( '~/.vim/bundle' )

Plug 'altercation/vim-colors-solarized'
" Plug 'bkad/CamelCaseMotion'
" Plug 'Denaun/DoxygenToolkit.vim'
" Plug 'Denaun/molokai'
" Plug 'Denaun/vim-as'
" Tab-completion inside search command '/': Plug 'Dewdrops/SearchComplete'
" Plug 'godlygeek/tabular'
" Plug 'honza/vim-snippets'
" Plug 'inkarkat/argtextobj.vim'
" Plug 'jcfaria/Vim-R-plugin', { 'for': 'r' }
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'Keithbsmiley/investigate.vim'
Plug 'kien/rainbow_parentheses.vim'
" Plug 'klen/python-mode', { 'for': 'python' }
" Plug 'terryma/vim-multiple-cursors'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'MORZorg/vim-sol'
" Plug 'plasticboy/vim-markdown', { 'for': ['mkd', 'mmd'] }
" Plug 'pycckuu/MatlabFilesEdition', { 'for': 'matlab' }
Plug 'scrooloose/nerdtree'
Plug 'wincent/Command-T'
Plug 'scrooloose/syntastic'
" Plug 'SirVer/ultisnips'
" Plug 'svermeulen/vim-indent-object', { 'branch': 'working' }
" Plug 'toyamarinyon/vim-swift', { 'for': 'swift' }
" Plug 'tpope/vim-abolish'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-sensible'
" Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-unimpaired'
" Plug 'triglav/vim-visual-increment'
Plug 'Valloric/YouCompleteMe',
      \ { 'do': './install.sh --clang-completer --system-libclang' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" Modelica highlighting
" Plug 'BoreaWolf/vim_modelica'

call plug#end()
filetype plugin indent on

" Source initialization files
runtime! init/**.vim
