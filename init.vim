
" File: init.vim
" Link: https://github.com/vonbrownie/dotfiles

" == General Configuration ==

set nocompatible            " Disable compatibility to old-time vi
set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
"set mouse=a                " Enable mouse usage (all modes)
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set laststatus=2
" set cc=80                   " set an 80 column border for good coding style
tnoremap <Esc> <C-\><C-n>
set t_Co=256
set ttimeoutlen=10
set encoding=utf-8

" color scheme
colorscheme nord
if has('termguicolors') && $TERM_PROGRAM ==# 'iTerm.app' && $TERM !~# '^\%(screen\|tmux\)'
   set termguicolors
else
   set notermguicolors
endif

syntax on

" n  Normal mode map. Defined using ':nmap' or ':nnoremap'.
" i  Insert mode map. Defined using ':imap' or ':inoremap'.

" map leader
let g:mapleader = ','
nnoremap <leader>h :rightbelow vertical help

" date+time stamp
inoremap <leader>d <C-R>=strftime("%Y-%m-%dT%H:%M")<CR>

" toggle spelling
nnoremap <leader>s :set invspell<CR>

" == Plugins ==

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'vimwiki/vimwiki'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/vim-webdevicons'
" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes

" nord vim theme
Plug 'arcticicestudio/nord-vim'
Plug 'vim-scripts/trailing-whitespace'

" Initialize plugin system
call plug#end()

" vimwiki
" let g:vimwiki_list = [{'path': '~/doc/wiki/', 'path_html': '~/doc/wiki/html/'}]

" Ctrlp Plugin settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" status line for nord
let g:nord_uniform_status_lines = 1

" nord comments
let g:nord_comment_brightness = 12

" italics
let g:nord_italic = 1

"italic comments
let g:nord_italic_comments = 1

" underline in nord
let g:nord_underline = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_exe = 'python3 -m pylint3'

"airline 
let g:airline_theme='nord'

let g:airline_powerline_fonts = 1

set guifont=DroidSansMono_Nerd_Font:h11

let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '⚡'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '⚡'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.whitespace = ''

" Configure NERDTree settings
"
let g:NERDTreeDirArrowExpandable = '⬗'
let g:NERDTreeDirArrowCollapsible = '⬙'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "📝",
    \ "Staged"    : "🎭",
    \ "Untracked" : "⚠️",
    \ "Renamed"   : "✍️",
    \ "Unmerged"  : "⛔️",
    \ "Deleted"   : "🗑",
    \ "Dirty"     : "💩",
    \ "Clean"     : "✅",
    \ 'Ignored'   : '🔕',
    \ "Unknown"   : "❓"
    \ }

let g:WebDevIconsUnicodeDecorateFolderNodes = 1

let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol=''

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['htm'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['erb'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jbuilder'] = 'ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = 'ﬥ'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sqlite3'] = ''

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['jbuilder'] = s:red
let g:NERDTreeExtensionHighlightColor['sqlite3'] = s:blue

let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitconfig'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['webpack.config.js'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['node_modules'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.git'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['gemfile'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['gemfile.lock'] = ' '

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['.gitconfig'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['.git'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['webpack.config.js'] = s:blue
let g:NERDTreeExactMatchHighlightColor['node_modules'] = s:green
let g:NERDTreeExactMatchHighlightColor['gemfile'] = s:red
let g:NERDTreeExactMatchHighlightColor['gemfile.lock'] = s:red

let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*_spec\.rb$'] = ''

let g:NERDTreePatternMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red
