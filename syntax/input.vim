if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "input"

set commentstring=!\ %s
setlocal foldmethod=syntax
setlocal foldlevel=1

syn match inputComment "!.*$"
hi link inputComment Comment

syn region inputSection start=/\v\&(END)@!/ skip=/\v\\./ end=/\v^\s*(\&END\s*(\S*)|\/)\s*/ transparent fold extend
syn region inputConditional start=/\v\@IF/ skip=/\v\\./ end=/\v^\s*\@ENDIF\s*/ transparent fold extend
syn region inputAtoms start=/\v^\s*(ATOMIC|K_POINTS)/ skip=/\v\\./ end=/\v\ze^\s*(ATOMIC|K_POINTS)/ fold
