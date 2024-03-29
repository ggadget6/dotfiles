set tabstop=4 " How much space a tab character counts as
set shiftwidth=4 " for make sure that auto indentation works
set expandtab " convert tabs to spaces
set smarttab " idk tbh
set autoindent 
set cindent
set relativenumber number " relativenumber gives you numbers relative to your current line, number replaces 0 with real line number
let mapleader = "\<Space>" " remap leader key to space

" Below: Window movement mappings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Keep things hightlighted after indenting
xnoremap > >gv
xnoremap < <gv

set splitbelow splitright " splits shouldn't be dumb
set fillchars+=vert:\  " remove ugly vertical line from split
filetype on " allows you to detect filetypes
filetype plugin on "used for vim wiki
syntax on "used for vimwiki
autocmd FileType make set noexpandtab " in makefiles, want real tabs

" Netrw options
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25

" Plugins!
" Automatically install minplug
if empty(glob(substitute(&packpath, ",.*", "", "")."/pack/plugins/opt/minPlug")) " {{{
  call system("git clone --depth=1 https://github.com/Jorengarenar/minPlug ".
        \ substitute(&packpath, ",.*", "", "")."/pack/plugins/opt/minPlug")
  autocmd VimEnter * silent! MinPlugInstall | echo "minPlug: INSTALLED"
endif " }}}

packadd minPlug " initialize minPlug
MinPlug morhetz/gruvbox
MinPlug machakann/vim-sandwich
MinPlug tpope/vim-commentary
" MinPlug itchyny/lightline.vim
" MinPlug frazrepo/vim-rainbow
" MinPlug junegunn/fzf.vim
MinPlug vimwiki/vimwiki
" MinPlug sunaku/tmux-navigate
MinPlug christoomey/vim-tmux-navigator
" MinPlug tmux-plugins/vim-tmux
MinPlug joshdick/onedark.vim main

map <C-_> gc
if has('nvim')
    " Neovim specific
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
    MinPlug glacambre/firenvim
    if exists('g:started_by_firenvim')
        set laststatus=0
        let fc['.*'] = { 'selector': 'textarea' }
    endif
else
    " vim specific
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:gruvbox_italic=1
" colorscheme gruvbox
colorscheme onedark
set termguicolors
" set background=dark
