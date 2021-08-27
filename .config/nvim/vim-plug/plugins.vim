" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Theme
    Plug 'joshdick/onedark.vim'
    " For go language
    Plug 'fatih/vim-go'
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Git
    Plug 'tpope/vim-fugitive'
    " css3 syntax highlight
    Plug 'hail2u/vim-css3-syntax'
    " Syntax hightlight for .js
    Plug 'pangloss/vim-javascript'
    " Syntax hightlight for Vue.js
    Plug 'posva/vim-vue'

call plug#end()
