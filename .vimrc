" Plugins
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()

" Fuzzy finder - https://github.com/junegunn/fzf/blob/master/README-VIM.md
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" File explorer
Plug 'preservim/nerdtree'
" VSCode color scheme
Plug 'tomasiser/vim-code-dark'
" Stylish status bar
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme codedark

" Key Mappings
imap jj <Esc>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF<CR>

" Options
set ignorecase
set incsearch
set number
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
