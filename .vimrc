" :!python % <CR> — символ % будет заменён на имя текущего редактируемого файла. В итоге, Vim приостановит работу и вызовет python filename.ext
"set wildmenu
"set wcm=<Tab>
"menu Exec.Python  :!python % <CR>
"map <F9> :emenu Exec.<Tab>

" Set encoding
set encoding=utf-8

" Show line numbers
set number

" No wrap words
set nowrap

" Syntax hightlight
syntax on

" Tab width
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set smarttab

" Highlight all
let python_highlight_all = 1

" Swap off
set noswapfile


"Настройка omnicomletion для Python (а так же для js, html и css)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


" Insert for mouse button
set mouse=a
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

execute pathogen#infect()
call pathogen#helptags()

" Enable airline
let g:airline_powerline_fonts = 0
set t_Co=256
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:molokai_original = 1
let g:rehash256 = 1

colorscheme molokai

filetype on  
filetype plugin on  
filetype indent on

" Set ignore *.pyc files
let NERDTreeIgnore=['\.pyc$']

" Show NERDTree
nmap <silent> <F2> :NERDTreeToggle<CR>
imap <silent> <F2> :NERDTreeToggle<CR

" Off select first item in autocompleate
set completeopt=menuone,longest
