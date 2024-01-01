set number " Show absolute line numbers on the left.
filetype plugin on " Auto-detect un-labeled filetypes
syntax on " Turn syntax highlighting on
set ai " Sets auto-indentation
set si " Sets smart-indentation
set noswapfile " Prevent vim from creating .swp files
set cursorline " Highlight current cursor line
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2 
set smarttab " Be smart when using tabs
set hlsearch " When searching (/), highlights matches as you go
set incsearch " When searching (/), display results as you type (instead of only upon ENTER)
set smartcase " When searching (/), automatically switch to a case-sensitive search if you use any capital letters
set showmatch " Show matching brackets when text indicator is over them
set encoding=utf8 " Set text encoding as utf8
set clipboard=unnamed " Use the OS clipboard by default
set noendofline " No end-of-line character
set nowrap
set laststatus=2 
set belloff=all
set backspace=indent,eol,start  " more powerful backspacing


if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Fixedsys:h12:cANSI
  endif
endif


call plug#begin()
	Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'jiangmiao/auto-pairs'
	Plug 'itchyny/lightline.vim'
call plug#end()

" Template functionality -- (Basic)
command! Cpptemp :r E:\CPenv\__master.cpp
command! Ctemp :r E:\CPenv\__master.c


" Compile & Run Commands for various programming laguage.
" C++
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

" C
autocmd filetype c nnoremap <F9> :w <bar> !gcc -std=c11 % -o %:r -W<CR>
autocmd filetype c nnoremap <F10> :!%:r<CR>


