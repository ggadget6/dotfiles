set tabstop=4 " How much space a tab character counts as
set shiftwidth=4 " for make sure that auto indentation works
set expandtab " convert tabs to spaces
set smarttab " idk tbh
set autoindent 
set cindent
set relativenumber number " relativenumber gives you numbers relative to your current line, number replaces 0 with real line number

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

" Plugins!
packadd minPlug " initialize minPlug
MinPlug morhetz/gruvbox
MinPlug machakann/vim-sandwich
MinPlug tpope/vim-commentary
" MinPlug itchyny/lightline.vim
" MinPlug frazrepo/vim-rainbow
" MinPlug junegunn/fzf.vim
MinPlug vimwiki/vimwiki
" MinPlug christoomey/vim-tmux-navigator
" MinPlug tmux-plugins/vim-tmux
if has('nvim')
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
    " Neovim specific
else
    " vim specific
endif

let g:gruvbox_italic=1
colorscheme gruvbox
set termguicolors
set background=dark
