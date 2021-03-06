""" Setup/cleaning

" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Plugin hosted on GitHub
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

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
"

" Pathogen Plug-in Manager
execute pathogen#infect()
" Remove ALL auto commands for the current group.
autocmd!

""" Settings

" set nocompatible

set showcmd
set ruler
set number
set cursorline
" set cursorcolumn
set hlsearch
set incsearch 

set shiftwidth=4
set tabstop=4
set softtabstop=4
" set expandtab
set foldmethod=syntax
source ~/.vim/indent.vim

syntax enable
" filetype plugin indent on

" Disable arrow keys for navigation
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
set mouse=a

" Command to clear search
command! C let @/ = ""
" Command to save as su
command! W :execute ':silent w !sudo tee %' | :edit!

" Shortcuts for S&R
noremap ;; :s///<Left><Left>
noremap ;' :%s///g<Left><Left><Left>


""" Plug-ins

" let mapleader="ù"

"" tagbar (show function and classes)
" nmap <leader>l :TagbarToggle<CR> 

"" NERDtree (show files)
" nmap <leader>n :NERDTreeToggle<CR>
" Auto close if NERDtree is the only window left open
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType")
      \ && b:NERDTreeType == "primary") | q | endif

"" Doxygen
" let g:load_doxygen_syntax = 1
" let g:DoxygenToolkit_authorName = "Riccardo Orizio"

"" Syntastic
" nmap <leader>s :SyntasticCheck<CR>

" nmap <leader>e :call ErrorsToggle()<CR>
" 
" let g:errors_is_open = 0
" function! ErrorsToggle()
"   if g:errors_is_open
"     lcl
"     let g:errors_is_open = 0
"     execute g:errors_return_to_window . "wincmd w"
"   else
"     let g:errors_return_to_window = winnr()
"     Errors
"     let g:errors_is_open = 1
"   endif
" endfunction

"" neocomplcache
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_ignore_case = 1
" let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_enable_fuzzy_completion = 1
" let g:neocomplcache_fuzzy_completion_start_length = 1
" let g:neocomplcache_enable_auto_select = 1

""" Colors

set background=dark
"colorscheme elflord
colorscheme github
"colorscheme molokai
"colorscheme solarized      " solarized is set in gvimrc

" Highlight characters after the 80th
set colorcolumn=80
" (auto command because gets overwritten by colorscheme changes)
autocmd BufRead,BufNewFile *
      \ highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
      \ | match OverLength /\%>80v.\+/

