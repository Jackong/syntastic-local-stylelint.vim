let s:lcd = fnameescape(getcwd())
silent! exec "lcd" expand('%:p:h')
let s:stylelint_path = system('PATH=$(npm bin):$PATH && which stylelint')
exec "lcd" s:lcd
let b:syntastic_css_stylelint_exec = substitute(s:stylelint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
