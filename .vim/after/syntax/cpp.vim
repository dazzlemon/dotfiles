" comparison
syn match cppOperator '\!=' conceal cchar=≠
syn match cppOperator '>=' conceal cchar=≥
syn match cppOperator '<=' conceal cchar=≤

" etc
syn keyword cRepeat for conceal cchar=∀

" bool
syn keyword cppBoolean false conceal cchar=𝐅
syn keyword cppBoolean true conceal cchar=𝐓

hi link cppOperator Operator
hi link cRepeat Repeat
hi link cppBoolean Boolean
hi! link Conceal Operator
hi! link Conceal Repeat
hi! link Conceal Boolean

set conceallevel=1
