" VUNDLE
set nocompatible
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'https://github.com/Valloric/YouCompleteMe.git'

"call vundle#end()
"filetype plugin indent on
" PATHOGEN
execute pathogen#infect()

" SYNTASTIC
let g:syntastic_cpp_compiler = 'gcc'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -Wall -Werror -Wextra'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_c_include_dirs = ['../../../include', '../../include','../include','./include']

"NERDTREE CONFIG
let g:NERDTreeQuitOnOpen = 1

" SYNTAX
syntax on
set background=light
"colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:molokai_original = 1

"INDENT AND UTILITIES
set encoding=utf-8
set mouse=a
set ai
set nu
set cc=81
set t_Co=256
set cursorline
set shiftwidth=4
set tabstop=4

" ENABLE SPECIFIC EXTENSION CONFIG FILE
set modeline
filetype plugin on

"hi CursorLine term=bold cterm=bold guibg=Grey40

set autochdir

set backspace=indent,eol,start

noremap <C-g>				:NERDTreeToggle<CR>

" MOVES BETWEEN BUF
noremap <S-Right>			<C-w><Right>
noremap <S-Left>			<C-w><Left>
noremap <S-Up>				<C-w><Up>
noremap <S-Down>			<C-w><Down>

inoremap <S-Right>			<Esc><C-w><Right>i
inoremap <S-Left>			<Esc><C-w><Left>i
inoremap <S-Up>				<Esc><C-w><Up>i
inoremap <S-Down>			<Esc><C-w><Down>i

" AUTO-CLOSE
"inoremap {{		{}<Left>
"inoremap {<CR>	{<CR>}<Esc>O

"inoremap ((		()<Left>
"inoremap (<CR>	(<CR>)<Esc>O
"inoremap (;		();<Left><Left>

"inoremap [[		[]<Left>

"inoremap ""		""<Left>

"inoremap ''		''<Left>
imap jj				<Esc>
inoremap <CR>\		<Esc>o
inoremap <CR>/		<Esc>O

" CLOSE TAG HTML AND NEWLINE
"inoremap >>			<Space><bar><Esc>T<yt<Space>
"					\$a<BS><BS>><Esc>
"					\$a</<Esc>pa>
"					\<Esc>F<i<CR><CR><Up><Tab>

" FOR DJANGO
"inoremap {%			{%  %}<Left><Left><Left>
"inoremap {{			{{  }}<Left><Left><Left>

" COLUMN NUMBER
set ruler

" HIGHLIGHT DOUBLE SPACES
set hlsearch
highlight ExtraWhitespace ctermbg=red guibg=red

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

match ExtraWhitespace / \{2,\}/

" HIGHLIGHT TRAILING WHITESPACE
let c_space_errors = 1

" BACKUP
set nobackup
set noswapfile
