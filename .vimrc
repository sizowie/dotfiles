" vim:ts=8
" vim 7 -- janek richter <janek@openbug.org>

let c_minlines=500
set backspace=indent,eol,start
set hidden
set ignorecase
set incsearch
set laststatus=2
set modelines=5
set nofoldenable
set nohlsearch
set nostartofline
set pastetoggle=<C-p>
set ruler
set scrolloff=10
set showcmd
set showmatch
set showmode
set smartcase
set spellfile=~/.vimspell.add
set viminfo=

set tabstop=4 softtabstop=4 shiftwidth=4
set list listchars=tab:»-,trail:·,extends:»,precedes:«          " i really need to know that
autocmd! bufwritepre *.p[ly] set expandtab | retab! 4

set t_Co=256
syntax on
colorscheme sizowie

silent !mkdir -p ~/.vim/{backup,swp}/
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" nerdtree
let NERDTreeDirArrows=0
let NERDTreeMinimalUI=1
let NERDTreeWinSize=3
let NERDTreeMapOpenRecursively="+"
let NERDTreeMapCloseChildren="-"

" file type-specific settings
autocmd FileType * setlocal colorcolumn=0

" perl
au FileType perl setlocal ts=4 sw=4 tw=79 et sts=4 autoindent colorcolumn=80
" python
au FileType python setlocal ts=2 sw=2 tw=79 et sts=2 autoindent colorcolumn=80

" rubyish files
au BufNewFile,BufRead *.rake,*.mab setlocal ft=ruby
au BufNewFile,BufRead *.erb setlocal ft=eruby
au FileType ruby,eruby setlocal ts=2 sw=2 tw=79 et sts=2 autoindent colorcolumn=80
au FileType yaml setlocal ts=2 sw=2 et colorcolumn=80

" source code gets wrapped at <80 and auto-indented
au FileType asm,c,cpp,java,javascript,php,html,make,objc setlocal tw=79 autoindent colorcolumn=80

" makefiles and c have tabstops at 8 for portability
au FileType make,c,cpp setlocal ts=8 sw=8

" git commit
au FileType gitcommit setlocal tw=68 et colorcolumn=69

" bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <C-n> :bn<CR>
map <C-p> :bp<CR>

" correct W to w/ Q to q
cabbr W w
cabbr Q q

call pathogen#infect()
