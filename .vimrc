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
colorscheme minimalist

" Customize line number column and add a separator
highlight LineNr ctermfg=DarkGrey guifg=DarkGrey
set signcolumn=yes
highlight SignColumn cterm=NONE ctermbg=NONE ctermfg=DarkGrey guibg=NONE guifg=DarkGrey

" Keymaps to make life easy.

" Define a mapping for F5 to execute both F9 and F10 commands 
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++14 % -o %:r -DDEBUG -Wl,--stack,268435456 -I E:\CP\includes<CR>:!%:r<CR>

" Map Ctrl+A to select all text in any mode
noremap <C-a> ggVG
inoremap <C-a> <Esc>ggVG
vnoremap <C-a> <Esc>ggVG

" Map Ctrl+Backspace to delete word in any mode
noremap <C-BS> db
inoremap <C-BS> <C-W>
vnoremap <C-BS> d

" For terminals that send <C-H> for <C-BS>
noremap <C-H> db
  inoremap <C-H> <C-W>
vnoremap <C-H> d

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 13
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win33")
    set guifont=Consolas:h11:cANSI
  endif
endif

call plug#begin()
 Plug 'jiangmiao/auto-pairs'
 Plug 'dikiaap/minimalist'
 Plug 'itchyny/lightline.vim'
call plug#end()

" Make comments more visible while keeping minimalist theme
highlight Comment ctermfg=28 guifg=#57A64A gui=italic

" Colorscheme plugin settings
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
