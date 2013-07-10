" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"MY PREFERENCES (PAULO)
filetype indent on                                                  "indent based off filetype
set autoindent                                                      "indent, duh
set cindent                                                     "we'll autoindent (with intelligence), bitches
set cin                                                             "auto c-indenting
set shiftround   

set winminheight=0      " Allow windows to get fully squashed

"
" Switch between windows, maximizing the current window
"
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_ 

nmap ,h <C-W>h
nmap ,j <C-W>j
nmap ,k <C-W>k
nmap ,l <C-W>l

set expandtab                                                       "expand tabs to spaces, when not an indent
set smarttab                                                        "let's be smart about our tabs
set shiftwidth=4                                                    "make tabs 4 spaces
set softtabstop=4                                                   "softtab value, 4 spaces
set tabstop=4                                                       "keep default for softtab compat.


let NERDTreeIgnore = ['\.pyc$','\.swp$']
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
map <F2> :NERDTreeToggle<cr>
"map <F3> :tabnew<cr>
inoremap <CR> x<BS><CR>
imap <CR> <CR> <BS>
inoremap kj <Esc>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

cmap w!! %!sudo tee > /dev/null %
"set guioptions-=m
"set guioptions-=T
"set guioptions-=r
"set guioptions-=R
"set guioptions-=l
"set guioptions-=L
"set guioptions-=b

"colorscheme eveningt
"highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
let g:NERDTreeDirArrows=0

"silent! nmap <C-p> :NERDTreeToggle<CR>
"silent! map <F3> :NERDTreeFind<CR>

"let g:NERDTreeMapActivateNode="<F3>"
"let g:NERDTreeMapPreview="<F4>"

"nmap <silent> <F2> :execute 'NERDTreeToggle ' . getcwd()<CR>
syntax enable


hi Normal guibg=#32322f ctermbg=236
hi NonText guibg=#32322f ctermbg=236
hi ColorColumn guibg=#000000 ctermbg=0
let &colorcolumn=join(range(1,79),",")


set cc=79
""hi ColorColumn ctermbg=lightgrey guibg=lightgrey
hi ColorColumn ctermbg=red guibg=red
set cursorline 
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
