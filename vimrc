" Vincent Foley Bourgon's .vimrc (gnuvince@yahoo.ca)
" Last change: 2001/07/09


" No compatible.  You want to use Vim, not vi
set nocp

" We don't wrap lines, they become a LONG horizontal one (useful)  
" set nowrap 

" Set background to dark to have nicer syntax highlighting.
set background=dark

" We keep 3 lines when scrolling
set scrolloff=3

" We show vertical and horizontal position
set ruler

" Y = y$ not yy.  More intuative
noremap Y y$

" Tilde (~) acts like an operator (à la 'd' or 'c')
"set top

" Incremental search
set is

" Ignore case when searching
set ic

" Show matching ()'s []'s {}'s
set sm

" Autoindents
set ai

" Autoindents C code
set cin

" Tabs are 4 spaces long
set tabstop=2

" When autoindent does a tab, it's 4 spaces long
set shiftwidth=2

" No need to save to make a :next :previous, etc.
set aw

" C-a and C-e go to beginning/end of line in insert mode (I hate Home and End)
inoremap <C-a> <Home>
inoremap <C-e> <End> 

" I like using C-g à la Emacs in the command line.  Don't ask me why.
cnoremap <C-g> <Esc>

" No idea what it's for...
set backspace=2

" No bell sound
set noerrorbells

" Put title in title bar
set title

" Smoother changes
set ttyfast

" Tabs are converted to space characters
" set et

" Remove autocommands just in case
autocmd!

" When using mutt or slrn, text width=72
autocmd BufRead  mutt*[0-9]                    set tw=72
autocmd BufRead  .followup,.article,.letter    set tw=72

" Text files have a text width of 72 characters
autocmd BufNewFile *.txt                       set tw=72
autocmd BufRead    *.txt                       set tw=72

" LaTeX configuration is in ~/vim/vim.latex
" autocmd BufNewFile *.tex            source ~/vim/latex.vimrc
" autocmd BufRead    *.tex            source ~/vim/latex.vimrc
autocmd BufNewFile *.tex            set tw=72
autocmd BufRead    *.tex            set tw=72
autocmd BufNewFile *.html           set tw=72
autocmd BufRead    *.html            set tw=72


" Automatically chmod +x Shell and Perl scripts
autocmd BufWritePost   *.sh             !chmod +x %
autocmd BufWritePost   *.pl             !chmod +x %

" Also, support editing of gzip-compressed files. DO NOT REMOVE THIS!
" This is also used when loading the compressed helpfiles.
augroup gzip
  " Remove all gzip autocommands
  au!

  " Enable editing of gzipped files
  "	  read:	set binary mode before reading the file
  "		uncompress text in buffer after reading
  "	 write:	compress file after writing
  "	append:	uncompress file, append, compress file
  autocmd BufReadPre,FileReadPre	*.gz set bin
  autocmd BufReadPre,FileReadPre	*.gz let ch_save = &ch|set ch=2
  autocmd BufReadPost,FileReadPost	*.gz '[,']!gunzip
  autocmd BufReadPost,FileReadPost	*.gz set nobin
  autocmd BufReadPost,FileReadPost	*.gz let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost	*.gz execute ":doautocmd BufReadPost " . expand("%:r")

  autocmd BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
  autocmd BufWritePost,FileWritePost	*.gz !gzip <afile>:r

  autocmd FileAppendPre			*.gz !gunzip <afile>
  autocmd FileAppendPre			*.gz !mv <afile>:r <afile>
  autocmd FileAppendPost		*.gz !mv <afile> <afile>:r
  autocmd FileAppendPost		*.gz !gzip <afile>:r
augroup END

augroup bzip2
  " Remove all bzip2 autocommands
  au!

  " Enable editing of bzipped files
  "       read: set binary mode before reading the file
  "             uncompress text in buffer after reading
  "      write: compress file after writing
  "     append: uncompress file, append, compress file
  autocmd BufReadPre,FileReadPre        *.bz2 set bin
  autocmd BufReadPre,FileReadPre        *.bz2 let ch_save = &ch|set ch=2
  autocmd BufReadPost,FileReadPost      *.bz2 |'[,']!bunzip2
  autocmd BufReadPost,FileReadPost      *.bz2 let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost      *.bz2 execute ":doautocmd BufReadPost " . expand("%:r")

  autocmd BufWritePost,FileWritePost    *.bz2 !mv <afile> <afile>:r
  autocmd BufWritePost,FileWritePost    *.bz2 !bzip2 <afile>:r

  autocmd FileAppendPre                 *.bz2 !bunzip2 <afile>
  autocmd FileAppendPre                 *.bz2 !mv <afile>:r <afile>
  autocmd FileAppendPost                *.bz2 !mv <afile> <afile>:r
  autocmd FileAppendPost                *.bz2 !bzip2 -9 --repetitive-best <afile>:r
augroup END



" We put syntax highlighting (COLORS!!)
syntax on

" Fikse farger i gvim og vim.
hi normal   guifg=white  guibg=black
hi nontext  guifg=blue   guibg=black
