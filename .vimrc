call plug#begin('~/.vim/plugged')
  " Make sure you use single quotes

  Plug 'tomasr/molokai'

  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'jeetsukumaran/vim-buffergator'

  " Plug 'powerline/powerline'
  Plug 'vim-airline/vim-airline'

  Plug 'benekastah/neomake'
  Plug 'rails.vim'
  Plug 'rking/ag.vim'

  Plug 'airblade/vim-gitgutter'

  Plug 'ervandew/supertab'

  " Group dependencies, vim-snippets depends on ultisnips
  " Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

  " On-demand loading
  " Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  " Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

  " Using a non-master branch
  " Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

  " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
  " Plug 'fatih/vim-go', { 'tag': '*' }

  " Plugin options
  " Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

  " Plugin outside ~/.vim/plugged with post-update hook
  " Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  " Unmanaged plugin (manually installed and updated)
  " Plug '~/my-prototype-plugin'

  " Add plugins to &runtimepath
call plug#end()


colorscheme molokai

autocmd! bufwritepost .vimrc source $MYVIMRC
autocmd! bufwritepost *.rb Neomake mri

" Interface
  " Character encoding used inside Vim
  " Only available when compiled with the +multi_byte feature
  try
    set encoding=utf-8
  catch
    " like we care
  endtry
  " Character encodings considered when starting to edit an existing file
  " Only available when compiled with the +multi_byte feature
  set fileencodings=utf-8,cp1251
  " Enhance command-line completion
  " Only available when compiled with the +wildmenu feature
  set wildmenu
  " Set completion mode
  " When more than one match, list all matches and complete first match
  " Then complete the next full match
  set wildmode=list:longest,full
  " Ignore following files when completing file/directory names
  " Version control
  set wildignore+=.hg,.git,.svn
  " OS X
  set wildignore+=*.DS_Store
  " Python byte code
  set wildignore+=*.pyc
  " Binary images
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
  " Set title of the window to filename [+=-] (path) - VIM
  " Only available when compiled with the +title feature
  set title
  " Show (partial) command in the last line of the screen
  " Comment this line if your terminal is slow
  " Only available when compiled with the +cmdline_info feature
  set showcmd
  " Minimal number of lines to scroll when cursor gets off the screen
  " set scrolljump=5
  " Minimal number of lines to keep above and below the cursor
  " Typewriter mode = keep current line in the center 
  set scrolloff=999
  " Always show tabs
  " set showtabline=2
  " Display invisible characters
  set list
  set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
  " NO wrap long lines
  set wrap
  " Don't break words when wrapping
  " Only available when compiled with the +linebreak feature
  set linebreak
  set formatoptions+=l
  " Show ↪ at the beginning of wrapped lines
  if has("linebreak")
      let &sbr = nr2char(8618).' '
  endif
  " Number of column to be highlighted
  " Only available when compiled with the +syntax feature
  " set colorcolumn=100
  " Maximum width of text that is being inserted
  " Longer lines will be broken after white space to get this width
  " set textwidth=80
  " Copy indent from current line when starting a new line
  set autoindent
  " Do smart indenting when starting a new line
  " Only available when compiled with the +smartindent feature
  set smartindent
  " Number of spaces to use for each step of (auto)indent
  set shiftwidth=2
  " Use spaces instead of tab
  set expandtab
  " Number of spaces that a tab counts for
  set tabstop=2
  " Number of spaces that a tab counts for while performing editing operations
  set softtabstop=2
  " Number of pixel lines inserted between characters
  " Only in GUI
  set linespace=1
  " Highlight the screen line of the cursor
  " Only available when compiled with the +syntax feature
  set cursorline
  " Turn off cursor blinking in normal mode
  " Only available when compiled with GUI enabled
  set guicursor=n:blinkon0
  " Remove all components and options of the GUI
  " Only available when compiled with GUI enabled
  set guioptions=
  " Number of colors
  set t_Co=256
  " Splitting a window will put the new window below the current one
  " See :sp
  " Only available when compiled with the +windows feature
  set splitbelow
  " Splitting a window will put the new window right of the current one
  " See :vsp
  " Only available when compiled with the +vertsplit feature
  set splitright
  " Don't show the intro message starting Vim
  set shortmess+=I
  " Turn mouse pointer to a up-down sizing arrow
  " Only available when compiled with the +mouseshape feature
  set mouseshape=s:udsizing,m:no
  " Hide the mouse when typing text
  " Only works in GUI
  set mousehide
  set mouse=
  " Edit several files in the same time without having to save them
  set hidden

  " No beeps, no flashes
  set visualbell
  set t_vb=
  " List of directories which will be searched when using :find, gf, etc.
  " Search relative to the directory of the current file
  " Search in the current directory
  " Search downwards in a directory tree
  " Only available when compiled with the +path_extra feature
  set path=.,,**

  " Don't create backups
  set nobackup
  " Don't create swap files
  set noswapfile



let mapleader = ' '

" Custom Keybindings
  " switch buffers spacemacs-style
  nmap <Space><Tab> :b#<CR>

  " < > don't reset selection in visual mode
  vnoremap < <gv
  vnoremap > >gv

  " <Esc><Esc>
  " Clear the search highlight in Normal mode
  nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

  " Navigate with <Ctrl>-hjkl in Insert mode
  imap <silent> <C-h> <C-o>h
  imap <silent> <C-j> <C-o>j
  imap <silent> <C-k> <C-o>k
  imap <silent> <C-l> <C-o>l

  " Navigate lines with Ctrl shortcuts
  cnoremap <c-e> <end>
  imap     <c-e> <c-o>$
  cnoremap <c-a> <home>
  imap     <c-a> <c-o>^

  " edit .vimrc
  nmap <Leader>v :e ~/.vimrc<CR>

  nmap <leader>p :CtrlP<CR>
  nmap <Leader>s :Ag<Space>

  nmap <Leader>bd :bd<CR>


" NERDTree
  nmap <Bs> :NERDTreeToggle<CR>
  let NERDTreeShowBookmarks=1
  let NERDTreeChDirMode=2
  let NERDTreeQuitOnOpen=1
  let NERDTreeIgnore=["\.git","\.eunit"]
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=0
  " Disable display of the 'Bookmarks' label and 'Press ? for help' text
  let NERDTreeMinimalUI=1
  " Use arrows instead of + ~ chars when displaying directories
  let NERDTreeDirArrows=1
  let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

  " open nerdtree when no files specified after launch
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Buffergator
  nmap <CR> :BuffergatorOpen<CR>
  let g:buffergator_viewport_split_policy="T"
  let g:buffergator_sort_regime="mru"
  let g:buffergator_hsplit_size=10

" Powerline
  let g:Powerline_symbols = 'fancy'
  let g:airline_powerline_fonts = 1

" CtrlP
  let g:ctrlp_custom_ignore = '\v[\/]\w+\.(beam)$'

" Neomake
  let g:neomake_ruby_enabled_makers = ['mri']
  let g:neomake_verbose = -1
