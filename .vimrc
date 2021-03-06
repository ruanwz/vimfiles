set runtimepath=~/gitrepos/vimfiles,~/gitrepos/vim-fugitive,~/gitrepos/vim-rails,~/gitrepos/vim-ruby,~/gitrepos/vim-erlang,~/gitrepos/git-vim,~/hgrepos/vimclojure/vim,~/gitrepos/snipmate.vim,$VIMRUNTIME,~/gitrepos/snipmate.vim/after
syntax on
set nocompatible
filetype plugin indent on
set ignorecase
set incsearch
set hlsearch
if has("terminfo")
	set t_Co=8
	set t_Sf=[3%p1%dm
	set t_Sb=[4%p1%dm
else
	set t_Co=8
	set t_Sf=[3%dm
	set t_Sb=[4%dm
endif

if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
	    cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
	    cs add $CSCOPE_DB
	endif
	set csverb
endif

nmap T :TlistToggle<CR>

set go=m
"set encoding=prc
"set fileencoding=prc
"set fileencodings=utf8,prc
set statusline=%{strftime('%H:%M')}\ \ %F%*\ %y\ %2*%r%m%*\ %l,%c\ %=%l/%L\ (%p%%)%*
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"Gtags
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-\> :GtagsCursor<CR>
nmap <silent> <Leader>P <Plug>ToggleProject
nmap <silent> <Leader>tn :tabnext<CR>
nmap <silent> <Leader>tp :tabprevious<CR>
let g:proj_flags="imstg"
set path=.,/usr/include,/vob/ltecore/src/mme/inc,/vob/ltecore/src/cmn/inc,/vob/ltecore/src/gw/inc
map <unique> <silent> <Leader>f <Plug>SimpleFold_Foldsearch
let mapleader = "," 
set tabstop=2
set foldmethod=syntax
compiler ruby         " Enable compiler support for ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
set fileencodings=utf-8,gb2312,gbk,gb18030
"ruby require 'rubygems'
" for indent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
"clojure
"let clj_highlight_builtins = 1
let vimclojure#HighlightBuiltins = 1
"let clj_highlight_contrib = 1
"let g:clj_paren_rainbow=1
let vimclojure#ParenRainbow=1
autocmd BufNewFile,BufRead *.clj set filetype=clojure
au Bufenter,Bufnewfile *.clj setl complete+=k~/.clj_completions
"let vimclojure#NailgunClient = "/home/david/gitrepos/vimclojure/ng"
let g:clj_want_gorilla = 1
let vimclojure#WantNailgun = 1
