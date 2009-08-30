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
nmap <C-S-tab> :tabprevious<cr> 
nmap <C-tab> :tabnext<cr> 
map <C-S-tab> :tabprevious<cr> 
map <C-tab> :tabnext<cr> 
imap <C-S-tab> <ESC>:tabprevious<cr>i 
imap <C-tab> <ESC>:tabnext<cr>i 

