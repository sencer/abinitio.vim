let b:match_words = '&\(END\)\@!:&END,@IF:@ENDIF,&\S*:\/'

let g:tagbar_type_input = {
    \ 'ctagstype' : 'input',
    \ 'kinds' : [
        \ 's:Sections',
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
      \ 's' : 'section',
    \ },
    \ 'sort': 0
\ }

