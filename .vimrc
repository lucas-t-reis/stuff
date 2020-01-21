" BASIC STUFF
" If you want to know more of a certain command
" use :help command or :helpgrep command description 

syntax enable
filetype plugin on

set ignorecase
set incsearch
set number
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si

inoremap jj <Esc>

" USEFUL COMMANDS
" ctx (change till x) - xint a, int b .... int zx => xint ax

" fx (find x) - finds first x and places cursor on it
" tx (till x) - finds first x and places cursor before it
  " ; continues search when using f or t

" ?x (where is x) - find string 
  " n for next 
  " N for previous

" FINDING FILES (:find)
" Search down into subfolders and provides tab completion
set path+=**

" Display all matching files when tab completing
set wildmenu

" TAG JUMPING

" Create the 'tags' file - ctags needed - (:MakeTags)
" - Jump to tag ^]
" - Jump back ^t
" - If ambiguous g^]

command! MakeTags !ctags -R .

" AUTOCOMPLETE - grabs data from 'tags' file
" - only in current file, prepend following commands with ^x 
" - go back ^p
" - only tags ^]
" - anything ^n
" - file/path/here + ^x^f (open vim from project root folder)


" Always show the status line and format it
set laststatus=2
set statusline=\%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
