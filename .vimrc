" Load Pathogen
execute pathogen#infect()

" Use Vim settings, rather then Vi settings (much better!).
set nocompatible

" Default configuration in case there's no other definition in ftplugin
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set autoindent
set smartindent
syntax enable

set incsearch
set hlsearch

set splitbelow
set splitright

"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_start_level=2
"let g:indent_guides_guide_size = 1

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" allow backspacing over everything in insert mode
set backspace=2
set backspace=indent,eol,start
set number

set noswapfile

set wildignore=*.o,*~,*.pyc,*.swp

"color scheme"
" colorscheme elflord
" colorscheme delek
" colorscheme desert
" colorscheme PaperColor
" colorscheme default
" colorscheme solarized
" colorscheme badwolf
" colorscheme gruvbox
colorscheme neodark
" Set background type
set background=dark
" status line
" set statusline=%(%F%m%r%h%w\ [%Y]\ %{&encoding}\ %)%=%(%l,%v\ %LL\ %p%%%)
set laststatus=2
set linespace=0
" let g:airline_theme = 'badwolf'"let g:airline_theme = 'wombat'
let g:airline_theme = 'neodark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" Keep git sign column as default (+, -, ~, etc.)
" let g:gitgutter_override_sign_column_highlight = 0
" let g:gitgutter_max_signs = 10000

"Disable autoindentation"
set noai

" Enable filetype plugins "
filetype plugin on

" Disable preview code when using omni complete"
set completeopt=menu

" Allow modelines
set modelines=1

" set spelllang=en,pt_br

" vim markdown settings
let g:vim_markdown_folding_disabled=1

" force vim to use 265 colors
if match($XDG_CURRENT_DESKTOP, "KDE") != -1
  set term=konsole-256color
elseif match($XDG_CURRENT_DESKTOP, "GNOME") != -1
  set term=gnome-256color
elseif match($XDG_CURRENT_DESKTOP, "XFCE") != -1
  set term=xfce
else
  set term=xterm-256color
endif

" Set column and line highlight
" set cursorcolumn
set cursorline
" hi CursorLine term=bold ctermfg=Yellow gui=bold guifg=Yellow
" hi CursorLineNr term=bold ctermfg=Yellow gui=bold guifg=Yellow

"-----------Mappings------------"
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
