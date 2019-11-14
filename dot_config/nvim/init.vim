" install neovim plugin manager
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd!
    autocmd VimEnter * PlugInstall
endif

" Declare the general config group for autocommand
augroup vimrc
  autocmd!
augroup END



" +----------------+
" | install plugin |
" +----------------+

call plug#begin('~/nvim/plugged')



call plug#end()



" +-----------------+
" | general binding |
" +-----------------+

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" +----------------+
" | general config |
" +----------------+

" delete trailing space when saving files
autocmd vimrc BufWrite *.php,*.js,*.jsx,*.vue,*.twig,*.html,*.sh,*.yaml,*.yml :call general#DeleteTrailingWS()

" the copy goes to the clipboard
set clipboard+=unnamedplus

" set line number
set number

" use 4 spaces instead of tab (to replace existing tab use :retab)
" copy indent from current line when starting a new line
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Better ex autocompletion
set wildmenu
set wildmode=list:longest,full
