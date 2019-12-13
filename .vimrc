if &compatible
  set nocompatible
endif

set encoding=UTF-8

" Relative line number with absolute on current
set number relativenumber

" Indent with space instead of tab
set expandtab
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('wsdjeg/dein-ui.vim', {'on_cmd': ['DeinUpdate']})
  call dein#add('ErichDonGubler/vim-sublime-monokai') " Colorscheme
  call dein#add('rhysd/conflict-marker.vim') " Git conflict higlighter
  call dein#add('scrooloose/nerdtree', {'on_cmd': ['NERDTreeToggle']}) " File tree tool
  call dein#add('ryanoasis/vim-devicons') " Display icon in Vim
  call dein#add('sheerun/vim-polyglot') " Collection of language packs for Vim
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" --------------------- "
"  COLOR CONFIGURATION  "
" --------------------- "
if (has('termguicolors'))
  set termguicolors
else
  set t_Co=256
endif

colorscheme sublimemonokai
let g:sublimemonokai_term_italic = 1
highlight! Normal ctermbg=NONE guibg=NONE
highlight! LineNr ctermbg=NONE guibg=NONE

" ------------------------ "
"  CONFLICT-MARKER PLUGIN  "
" ------------------------ "
" Disable the default highlight group
let g:conflict_marker_highlight_group = ''

" Include text after begin and end markers
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

" Shortcuts : 
"  - ct : themselves
"  - co : ourselves
"  - cb : both
"  - cn : none

highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e

" ----------------- "
"  NERDTREE PLUGIN  "
" ----------------- "
map <C-n> :NERDTreeToggle<CR>
