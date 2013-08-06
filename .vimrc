set nocompatible

execute pathogen#infect()
filetype plugin indent on

set t_Co=256
syntax on
colorscheme sizowie

silent !mkdir -p ~/.vim/{backup,swp}/
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/

set encoding=utf-8
"set number
set ruler
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"set list listchars=tab:»·,trail:·
set backspace=indent,eol,start
set incsearch
set hlsearch
set ignorecase
set smartcase
set nofoldenable
set scrolloff=10
set showmatch
set viminfo=

" strip trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

:au BufWinEnter * let w:m2=matchadd('ColumnMargin', '\%>80v.\+', -1)

" makefiles and c have tabstops at 8 for portability
au FileType make,c,cpp set noexpandtab ts=8 sw=8
" ruby
au BufNewFile,BufRead Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru set ft=ruby
" javascript
au BufNewFile,BufRead *.json set ft=javascript
" phyton
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" buffe navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-n> :bn<CR>
map <C-p> :bp<CR>

" plugin stuff
"
" ctrp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\$'
  \ }

let g:ctrlp_map = '<c-t>'

" nerdtree
let NERDTreeDirArrows=0
let NERDTreeMinimalUI=1
let NERDTreeWinSize=30
let NERDTreeMapOpenRecursively="+"
let NERDTreeMapCloseChildren="-"
map <Leader>n :NERDTreeToggle<CR>
