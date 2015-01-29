set nonumber
if exists('+relativenumber')
  set norelativenumber
end
set hidden


noremap <PageUp> :bp<CR>
noremap <Left> :bp<CR>
noremap <PageDown> :bn<CR>
noremap <Right> :bn<CR>
noremap Q :q<CR>

b 1
b 2
b 3
b 4
b 5
6,10SyntaxInclude asterisk
b 6
6,10SyntaxInclude asterisk
b 7
6,10SyntaxInclude asterisk
b 8
b 9
6,24SyntaxInclude asterisk
b 1
