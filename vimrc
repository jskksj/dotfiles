set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'klen/python-mode'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"" sudo apt-get install build-essential cmake python-dev
"" cd ~/.vim/bundle/YouCompleteMe
"" ./install.py --clang-completer
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'Rykka/riv.vim' " help is not working


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}


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


let g:solarized_termcolors=256
set t_Co=256
set background=light
colorscheme solarized


set nofoldenable                " disable code folding
let g:DisableAutoPHPFolding = 1 " disable PIV's folding


" Show syntax highlighting groups for word under cursor
nmap <F9> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
        if !exists("*synstack")
             return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


"split window navigation keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Exspecially for python 3
set encoding=utf-8

" Python Rope, disable help lookup
let g:pymode_rope_show_doc_bind = ""
let g:pymode_rope_completion = 1
" let ropevim_extended_complete=1
" let g:pymode_rope_completion_bind = '<C-Space>'
"
" Kivy syntax
au BufNewFile,BufRead *.kv set filetype=kivy
