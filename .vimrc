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

Plug 'chrisbra/colorizer'
Plug 'bluz71/vim-moonfly-colors'
Plug 'reewr/vim-monokai-phoenix'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()  
 
" VIM-PLUG END

" COLORSCHEME
" ST TrueColor
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" ST TrueColor

set nu
set termguicolors
syntax on
colorscheme monokai-phoenix " moonfly
" COLORSCHEME END

" ALE SETTINGS
" clangcheck excluded because doesn't see headers
" cc excluded because doesn't know std::ranges
" clazy excluded because doesn't see headers
" clangd excluded because doesn't know std::ranges
let g:ale_linters = {
      \ 'cpp': ['ccls', 'clangtidy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder'],
\}
let g:ale_cpp_clang_options="-Iinclude -std=c++20 -Wall -Wextra -Werror"
let g:ale_cpp_clangtidy_options=g:ale_cpp_clang_options
let g:ale_cpp_clangtidy_checks=['modernize*', 'bugprone*', 'cert*', 'concurrency-mt-unsafe', 'cppcoreguidelines*', 'google*', 'llvm-*', 'misc*', 'perfomance*', 'readability*', ]
let g:ale_cpp_gcc_options=g:ale_cpp_clang_options
" ALE SETTINGS END
let g:colorizer_auto_color=1
