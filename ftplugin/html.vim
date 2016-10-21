" HTML INDENT
set shiftwidth=2
set tabstop=2

" CLOSE TAG HTML AND NEWLINE
inoremap >>			<Space><bar><Esc>T<yt<Space>
					\$a<BS><BS>><Esc>
					\$a</<Esc>pa>
					\<Esc>F<i<CR><CR><Up><Tab>

" FOR DJANGO
inoremap {%			{%  %}<Left><Left><Left>
inoremap {{			{{  }}<Left><Left><Left>
