if &filetype != 'verilog'
  setlocal filetype=verilog
endif

if &filetype != 'systemverilog'
  setlocal filetype=systemverilog
endif

if &syntax != 'verilog'
  setlocal syntax=verilog
endif

if &syntax != 'systemverilog'
  setlocal syntax=systemverilog
endif

filetype plugin indent on

au BufReadPost *.sv   set syntax=verilog
au BufReadPost Scons* set syntax=python
au BufReadPost Cons*  set syntax=perl
au BufReadPost *.mke  set syntax=make
au BufReadPost make*  set syntax=make
au BufReadPost *.fcc  set syntax=cpp
au BufReadPost *.fhh  set syntax=cpp
au BufReadPost *.c	set syntax=c
au BufReadPost *.cpp  set syntax=cpp

syn on

set shortmess+=filmnrxoOtT                  	" abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set history=1000

set backspace=indent,eol,start              	" backspace for dummys
set linespace=0                             	" No extra space between rows
set nu                                      	" set line number
set showmatch                               	" show matching brackets/parenthesis
set incsearch                               	" find as you search
set hlsearch                                	" highlight search terms
set winminheight=0                          	" window can be 0 line high
set ignorecase                              	" case insensitive search
set smartcase                               	" case sensitive when upper case present
set wildmenu                                	" show list instead of just completing
set wildmode=list:longest,full              	" command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]               	" backspace and cursor keys wrap to
set scrolljump=5                            	" lines to scroll when cursor leaves screen
set scrolloff=3                             	" min lines to keep above and below cursor
set wrap                                    	" wrap long lines
set autoindent                              	" indent at the same level of the previous line
set shiftwidth=2                            	" use indent of 2 spaces
set tabstop=2                               	" an indentation every 2 column

nnoremap <C-S-Down> :m .+1<CR>==
nnoremap <C-S-Up>   :m .-2<CR>==
inoremap <C-S-Down> <Esc>:m .+1<CR>==gi
inoremap <C-S-Up>   <Esc>:m .-2<CR>==gi
vnoremap <C-S-Down> :m '>+1<CR>gv=gv
vnoremap <C-S-Up>   :m '<-2<CR>gv=gv

nnoremap <C-d>    :t.<CR>
inoremap <C-d>  <Esc>:t.<CR>
vnoremap <C-d>  :t.<CR>

set shiftwidth=2   															 " Indents will have a width of 2
set softtabstop=2                           	" Sets the number of columns for a TAB
set expandtab                               	" Expand TABs to spaces

:colorscheme darkblue "molokai

