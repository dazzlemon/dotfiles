set nocompatible
" for vim-polyglot

" VIM-PLUG CODE
" AUTO INSTALL
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
call plug#begin('~/.vim/plugged')

Plug 'bluz71/vim-moonfly-colors'
Plug 'reewr/vim-monokai-phoenix'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()  
 
" VIM-PLUG END

" ST TrueColor
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" ST TrueColor

set nu
set termguicolors
syntax on
colorscheme monokai-phoenix"moonfly
