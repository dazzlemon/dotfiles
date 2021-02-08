" comparison
syn match Normal '\!=' conceal cchar=≠
syn match Normal '>=' conceal cchar=≥
syn match Normal '<=' conceal cchar=≤
"syn match Normal '==' conceal cchar=≝

" etc
syn keyword cRepeat for conceal cchar=∀
"syn match Normal '=' conceal cchar=ᗕ
syn match Normal '->' conceal cchar=ᗒ

" bool
syn keyword cppBoolean false conceal cchar=𝐅
syn keyword cppBoolean true conceal cchar=𝐓

" sadly all concealed strings will have same highligthing(Conceal)

set conceallevel=2
