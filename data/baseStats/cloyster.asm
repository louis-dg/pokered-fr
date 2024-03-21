db DEX_CLOYSTER ; pokedex id
db 50 ; base hp
db 95 ; base attack
db 180 ; base defense
db 70 ; base speed
db 85 ; base special
db WATER ; species type 1
db ICE ; species type 2
db 60 ; catch rate
db 203 ; base exp yield
INCBIN "pic/bmon/cloyster.pic",0,1 ; 77, sprite dimensions
dw CloysterPicFront
dw CloysterPicBack
; attacks known at lvl 0
db WITHDRAW
db SUPERSONIC
db CLAMP
db AURORA_BEAM
db 5 ; growth rate
; learnset
	tmlearn 6
	tmlearn 9,10,11,12,13,14,15
	tmlearn 0
	tmlearn 31,32
	tmlearn 33,34,39
	tmlearn 44
	tmlearn 50,53
db 0 ; padding
