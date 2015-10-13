if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

set indentexpr=InputIndent(v:lnum)
set indentkeys+=0/,0!,=~end,=~ATOMIC,=~K_POINTS

function! InputIndent(lnum)
  let s:cur = getline(a:lnum)
  let s:prev = getline(a:lnum - 1)
  let s:indent = 0

  if s:prev =~? '\v^\s*(\&(END)@!|\@IF|ATOMIC|K_POINTS|!)'
    let s:indent += 1
  endif

  if s:cur =~? '\v^\s*((\&|\@)END|ATOMIC|\/|!|K_POINTS)'
    let s:indent -= 1
  endif

  return max([indent(a:lnum - 1) + s:indent * &shiftwidth, 0])

endfunction
