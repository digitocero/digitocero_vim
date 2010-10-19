set nocompatible
set showmatch
set wrapmargin=8
set smartindent
set tabstop=4 "set tab character to 4 characters
set expandtab "turn tabs into whitespace
set shiftwidth=4 "indent width for autoindent
filetype on
filetype indent on "indent depends on filetype
syntax on
set ruler
set expandtab
set number
colorscheme symfony

"80+ chars error
match ErrorMsg '\%>80v.+'

"Turn on incremental search with ignore case (except explicit caps)
set incsearch
set ignorecase
set smartcase

"Enable indent folding
set foldenable
set fdm=indent

"Set space to toggle a fold
nnoremap <space> za

filetype plugin on
set ofu=syntaxcomplete#Complete

"supertab omni with TAB no ctrol+o+x
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

let Tlist_Auto_Open=0 " let the tag list open automagically


filetype plugin indent on " load filetype plugins/indent settings
set autochdir " always switch to the current file directory
set backspace=indent,eol,start " make backspace a more flexible
set backup " make backup files
set backupdir=~/.vim/backup " where to put backup files
set clipboard+=unnamed " share windows clipboard
set directory=~/.vim/tmp " directory to place swap files in
set fileformats=unix,dos,mac " support all three, in this order
set hidden " you can change buffers without saving
" (XXX: #VIM/tpope warns the line below could break things)
set iskeyword+=_,$,@,%,# " none of these are word dividers
set mouse=a " use mouse everywhere
set noerrorbells " don't make noise

"Search current dir and upwards until a tags file is found
set tags=tags;/

"Esc alternative
:inoremap kj <Esc>

"autoclose tags
":au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 
":let g:closetag_html_style=1 
":source ~/.vim/scripts/closetag.vim
:au Filetype * source ~/.vim/scripts/closetag.vim 

"remember windows and pass globals to mksession
set sessionoptions+=resize,winpos,globals

"reopen last command in its window
"Conqueshell test
"if exists("ConqueTerm_LastCommand")
    ""retrieve buffer name and command
    "if bufexists(ConqueTerm_LastCommand)
        ""execute command in buffer
        "":execute "buffer " nextbuf
    "endif
"endif

"pass line to external cmomand (test,not working atm)
"map !s :! ./hours.php % <C-r>=line('.')<CR><CR>

