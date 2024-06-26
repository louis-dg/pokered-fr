SafariZoneWestObject:
	db $0 ; border block

	db $8 ; warps
	db $0, $14, $0, SAFARI_ZONE_NORTH
	db $0, $15, $1, SAFARI_ZONE_NORTH
	db $0, $1a, $2, SAFARI_ZONE_NORTH
	db $0, $1b, $3, SAFARI_ZONE_NORTH
	db $16, $1d, $2, SAFARI_ZONE_CENTER
	db $17, $1d, $3, SAFARI_ZONE_CENTER
	db $3, $3, $0, SAFARI_ZONE_SECRET_HOUSE
	db $b, $b, $0, SAFARI_ZONE_REST_HOUSE_2

	db $4 ; signs
	db $c, $c, $5 ; SafariZoneWestText5
	db $3, $11, $6 ; SafariZoneWestText6
	db $4, $1a, $7 ; SafariZoneWestText7
	db $16, $18, $8 ; SafariZoneWestText8

	db $4 ; objects
	object SPRITE_BALL, $8, $14, STAY, NONE, $1, MAX_POTION
	object SPRITE_BALL, $9, $7, STAY, NONE, $2, RARE_CANDY
	object SPRITE_BALL, $12, $12, STAY, NONE, $3, MAX_REVIVE
	object SPRITE_BALL, $13, $7, STAY, NONE, $4, GOLD_TEETH

	; warp-to
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $0, $14 ; SAFARI_ZONE_NORTH
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $0, $15 ; SAFARI_ZONE_NORTH
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $0, $1a ; SAFARI_ZONE_NORTH
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $0, $1b ; SAFARI_ZONE_NORTH
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $16, $1d ; SAFARI_ZONE_CENTER
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $17, $1d ; SAFARI_ZONE_CENTER
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $3, $3 ; SAFARI_ZONE_SECRET_HOUSE
	EVENT_DISP SAFARI_ZONE_WEST_WIDTH, $b, $b ; SAFARI_ZONE_REST_HOUSE_2
