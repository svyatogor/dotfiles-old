set nocompatible
syntax on
colorscheme ir_black
set nu
set sts=2
set sw=2
set ts=2
set smartindent
filetype indent on
set incsearch
set ignorecase
set smartcase
set cursorline
set showcmd
set showmatch
set wildmenu
set wildignore=*.o,*~
set textwidth=80

"make arrows even on wrapped lines
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

filetype on
filetype plugin on

"cindent is great everywhere but in xml
autocmd FileType xml set nocindent "also try smartindent

autocmd FileType python set foldmethod=indent

"set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]
"let g:fuzzy_ignore = "gems/*"
noremap <C-p> :NERDTreeToggle<CR>
noremap <C-t> :FuzzyFinderFile \*\*/<CR>
"let g:FuzzyFinderOptions.File.excluded_path = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|Icom^M$'
let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 
\                      'MruFile':{}, 'MruCmd':{}, 'Bookmark':{},
\                      'Tag':{}, 'TaggedFile':{},
\                      'GivenFile':{}, 'GivenDir':{},
\                      'CallbackFile':{}, 'CallbackItem':{}, }
let g:FuzzyFinderOptions.Base.key_open_tab="<CR>"
nnoremap <space> za

" tabs 
let mapleader = ","
nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt
nmap <leader>9 9gt
nmap <leader>w :tabclose<CR>
nmap <leader>l :tabs<CR>

map <F10> :g/^/norm gqq<CR> "Normalise the text

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
