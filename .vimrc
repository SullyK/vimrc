call plug#begin()
Plug 'ajmwagar/vim-deus'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

colorscheme deus

set number                   " Show line numbers
set linebreak                " Break lines at word (requires Wrap lines)
set showbreak=+++            " Wrap-broken line prefix
set textwidth=100            " Line wrap (number of cols)
set showmatch                " Highlight matching brace
set virtualedit=all          " Enable free-range cursor

set hlsearch                 " Highlight all search results
set smartcase                " Enable smart-case search
set ignorecase               " Always case-insensitive
set incsearch                " Searches for strings incrementally

set autoindent               " Auto-indent new lines
set shiftwidth=4             " Number of auto-indent spaces
set smartindent              " Enable smart-indent
set smarttab                 " Enable smart-tabs
set softtabstop=4            " Number of spaces per Tab

set ruler                    " Show row and column ruler information

set undolevels=1000          " Number of undo levels
set backspace=indent,eol,start " Backspace behaviour
set cindent " should help me with c indent, will check back

"clang format current buffer in vim - Ctrl + K
"old version - map <C-K> :%!clang-format<CR>  
map <C-K> mz:%!clang-format<CR>'z

"basic build and compile script which runs for c files
command! -nargs=0 CC :w | set makeprg=~/comp_run_c.sh\ %:t | make

command! G GoRun

syntax on

