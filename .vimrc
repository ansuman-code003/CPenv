set number " Show absolute line numbers on the left.
filetype plugin on " Auto-detect un-labeled filetypes
syntax on " Turn syntax highlighting on
set ai " Sets auto-indentation
set si " Sets smart-indentation
set noswapfile " Prevent vim from creating .swp files
set cursorline " Highlight current cursor line
set tabstop=2 " Tab equal 2 spaces (default 4)
set shiftwidth=2 " Arrow function (>>) creates 2 spaces
set expandtab " Use spaces instead of a tab charater on TAB
set smarttab " Be smart when using tabs
set wrap " Wrap overflowing lines
set hlsearch " When searching (/), highlights matches as you go
set incsearch " When searching (/), display results as you type (instead of only upon ENTER)
set encoding=utf8 " Set text encoding as utf8
set numberwidth=4 " Sets width of the 'gutter' column used for numbering to 3 (default 4)
set clipboard=unnamed " Use the OS clipboard by default
set noendofline " No end-of-line character
set belloff=all
set nowrap
set laststatus=2
set backspace=indent,eol,start 


" Customize line number column and add a separator.
highlight LineNr ctermfg=DarkGrey guifg=DarkGrey
set signcolumn=yes
highlight SignColumn cterm=NONE ctermbg=NONE ctermfg=DarkGrey guibg=NONE guifg=DarkGrey


" Define a mapping for F5 to execute both F9 and F10 commands sequentially.
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 % -o %:r -DDEBUG -Wl,--stack,268435456 -I E:\CP\includes<CR>:!%:r<CR>

" Font Settings.
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  endif
endif

" Plugins to make life easy.
call plug#begin()
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'itchyny/lightline.vim'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

" Plugin Settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
