TrainerDataPointers:
	dw YoungsterData
	dw BugCatcherData
	dw LassData
	dw SailorData
	dw JrTrainerMData
	dw JrTrainerFData
	dw PokemaniacData
	dw SuperNerdData
	dw HikerData
	dw BikerData
	dw BurglarData
	dw EngineerData
	dw Juggler1Data
	dw FisherData
	dw SwimmerData
	dw CueBallData
	dw GamblerData
	dw BeautyData
	dw PsychicData
	dw RockerData
	dw JugglerData
	dw TamerData
	dw BirdKeeperData
	dw BlackbeltData
	dw Green1Data
	dw ProfOakData
	dw ChiefData
	dw ScientistData
	dw GiovanniData
	dw RocketData
	dw CooltrainerMData
	dw CooltrainerFData
	dw BrunoData
	dw BrockData
	dw MistyData
	dw LtSurgeData
	dw ErikaData
	dw KogaData
	dw BlaineData
	dw SabrinaData
	dw GentlemanData
	dw Green2Data
	dw Green3Data
	dw LoreleiData
	dw ChannelerData
	dw AgathaData
	dw LanceData

; if first byte != FF, then
	; first byte is level (of all pokemon on this team)
	; all the next bytes are pokemon species
	; null-terminated
; if first byte == FF, then
	; first byte is FF (obviously)
	; every next two bytes are a level and species
	; null-terminated

YoungsterData:
; Route 3
	db $FF,11,RATTATA,11,EKANS,0
	db 14,SPEAROW,0
; Mt. Moon 1F
	db $FF,10,RATTATA,10,RATTATA,11,ZUBAT,0
; Route 24
	db $FF,14,RATTATA,15,EKANS,13,ZUBAT,0
; Route 25
	db 15,RATTATA,SPEAROW,0
	db 17,SLOWPOKE,0
	db $FF,14,EKANS,15,SANDSHREW,0
; SS Anne 1F Rooms
	db 21,NIDORAN_M,0
; Route 11
	db 21,BULBASAUR,0
	db $FF,18,SANDSHREW,20,ZUBAT,0
	db $FF,17,RATTATA,16,PIDGEOTTO,18,RATICATE,0
	db 18,NIDORAN_M,NIDORINO,0
; Unused
	db $FF,17,SPEAROW,17,RATTATA,18,NIDORINA,18,POLIWHIRL,0
BugCatcherData:
; Viridian Forest
	db 6,WEEDLE,CATERPIE,0
	db $FF,7,WEEDLE,8,KAKUNA,7,WEEDLE,0
	db 9,WEEDLE,0
; Route 3
	db $FF,10,CATERPIE,11,WEEDLE,12,KAKUNA,0
	db 9,WEEDLE,KAKUNA,CATERPIE,METAPOD,0
	db 11,CATERPIE,METAPOD,0
; Mt. Moon 1F
	db 11,WEEDLE,KAKUNA,0
	db $FF,10,CATERPIE,12,METAPOD,14,KAKUNA,0
; Route 24
	db 14,CATERPIE,WEEDLE,0
; Route 6
	db $FF,15,WEEDLE,15,CATERPIE,16,BEEDRILL,0
	db 20,BUTTERFREE,0
; Unused
	db 18,METAPOD,CATERPIE,VENONAT,0
; Route 9
	db 19,BEEDRILL,BEEDRILL,0
	db $FF,20,BEEDRILL,20,BUTTERFREE,18,VENONAT,0
LassData:
; Route 3
	db 9,PIDGEY,SPEAROW,0
	db 10,RATTATA,NIDORAN_M,0
	db 15,JIGGLYPUFF,0
; Route 4
	db $FF,31,PARAS,33,VENOMOTH,35,PARASECT,0
; Mt. Moon 1F
	db 11,ODDISH,BELLSPROUT,0
	db 15,CLEFAIRY,0
; Route 24
	db 16,PIDGEY,NIDORAN_F,0
	db 14,SPEAROW,NIDORAN_M,0
; Route 25
	db 16,NIDORAN_M,NIDORAN_F,0
	db $FF,14,ODDISH,15,PIDGEY,16,BELLSPROUT,0
; SS Anne 1F Rooms
	db 18,PIDGEY,NIDORAN_F,0
; SS Anne 2F Rooms
	db 18,RATTATA,PIKACHU,0
; Route 8
	db 24,NIDOQUEEN,0
	db $FF,24,MEOWTH,25,PERSIAN,0
    db $FF,24,NIDORINO,25,NIDORINA,0
    db 23,CLEFAIRY,CLEFABLE,0
; Celadon Gym
	db 24,BELLSPROUT,WEEPINBELL,0
    db $FF,23,ODDISH,24,GLOOM,25,VILEPLUME,0
SailorData:
; SS Anne Stern
	db 18,SHELLDER,PRIMEAPE,0
    db 18,MACHOP,TENTACOOL,0
; SS Anne B1F Rooms
	db 23,SHELLDER,0
    db $FF,17,HORSEA,18,SHELLDER,19,TENTACOOL,0
    db 19,TENTACOOL,STARYU,0
    db $FF,17,HORSEA,18,WARTORTLE,17,POLIWHIRL,0
    db 22,MACHOP,0
; Vermilion Gym
	db 21,PIKACHU,ELECTABUZZ,0
JrTrainerMData:
; Pewter Gym
	db 12,DIGLETT,SANDSHREW,0
; Route 24/Route 25
	db 15,RATTATA,EKANS,0
; Route 24
	db 19,MANKEY,0
; Route 6
	db 21,SQUIRTLE,0
	db 16,SPEAROW,RATICATE,0
; Unused
	db 18,DIGLETT,DIGLETT,SANDSHREW,0
; Route 9
	db $FF,21,GROWLITHE,21,CHARMELEON,23,ARCANINE,0
    db $FF,19,RATTATA,20,DIGLETT,17,EKANS,22,SANDSHREW,0
; Route 12
	db 29,NIDORAN_M,NIDORINO,NIDOKING,0
JrTrainerFData:
; Cerulean Gym
	db 20,GOLDEEN,0
; Route 6
	db 17,RATTATA,PIKACHU,0
	db 16,PIDGEY,DODUO,PIDGEOTTO,0
; Unused
	db 22,BULBASAUR,0
; Route 9
	db 18,ODDISH,GLOOM,VILEPLUME,0
    db 25,MEOWTH,0
; Route 10
	db 21,PIKACHU,CLEFAIRY,0
    db 22,SPEAROW,PIDGEOTTO,0
; Rock Tunnel B1F
	db $FF,21,JIGGLYPUFF,22,CLEFAIRY,23,MEOWTH,0
    db 22,VICTREEBEL,0
; Celadon Gym
	db $FF,25,BULBASAUR,26,IVYSAUR,0
; Route 13
	db $FF,28,PIDGEY,29,MEOWTH,30,PIKACHU,30,EEVEE,0
    db $FF,32,POLIWHIRL,30,PSYDUCK,0
    db 29,PIDGEY,PERSIAN,PIDGEOTTO,0
    db $FF,28,GOLDEEN,30,POLIWAG,32,HORSEA,0
; Route 20
	db 40,GYARADOS,0
; Rock Tunnel 1F
	db 23,BELLSPROUT,CLEFAIRY,0
    db 20,MEOWTH,ODDISH,CHANSEY,0
    db 21,PIDGEY,CUBONE,BELLSPROUT,0
; Route 15
	db 31,GLOOM,WEEPINBELL,NIDORINA,0
    db $FF,31,PIKACHU,33,RAICHU,0
    db 36,CLEFABLE,0
    db 33,VILEPLUME,TANGELA,0
; Route 20
	db $FF,35,TENTACOOL,37,HORSEA,35,SEEL,0
PokemaniacData:
; Route 10
	db $FF,30,RHYHORN,35,LICKITUNG,0
    db 21,CUBONE,SLOWPOKE,0
; Rock Tunnel B1F
	db 20,SLOWPOKE,CHARMELEON,KADABRA,0
	db 22,CHARMANDER,CUBONE,0
	db 28,SLOWPOKE,0
; Victory Road 2F
	db $FF,45,CHARMELEON,43,LAPRAS,45,LICKITUNG,0
; Rock Tunnel 1F
	db 23,CUBONE,SLOWPOKE,WARTORTLE,0
SuperNerdData:
; Mt. Moon 1F
	db 11,MAGNEMITE,VOLTORB,0
; Mt. Moon B2F
	db $FF,12,GRIMER,13,VOLTORB,12,KOFFING,0
; Route 8
	db $FF,22,VOLTORB,22,KOFFING,24,MAGNEMITE,0
    db 24,GRIMER,MUK,0
    db 26,KOFFING,WEEZING,0
; Unused
	db 22,KOFFING,MAGNEMITE,WEEZING,0
	db 20,MAGNEMITE,MAGNEMITE,KOFFING,MAGNEMITE,0
	db 24,MAGNEMITE,VOLTORB,0
; Cinnabar Gym
	db $FF,36,VULPIX,40,MAGMAR,39,NINETALES,0
    db $FF,34,PONYTA,36,CHARMANDER,37,VULPIX,40,GROWLITHE,0
    db 44,RAPIDASH,NINETALES,0
    db $FF,37,ARCANINE,40,NINETALES,0
HikerData:
; Mt. Moon 1F
	db 10,GEODUDE,MACHOP,ONIX,0
; Route 25
	db 16,MACHOP,GEODUDE,0
	db $FF,13,GEODUDE,14,SANDSHREW,13,MACHOP,14,MANKEY,0
	db 17,ONIX,0
; Route 9
	db 22,GEODUDE,ONIX,0
    db 21,GEODUDE,MACHOP,CUBONE,0
; Route 10
	db 22,GEODUDE,ONIX,0
	db 25,ONIX,0
; Rock Tunnel B1F
	db 22,GRAVELER,GOLEM,0
	db 25,KABUTO,OMANYTE,0
; Route 9/Rock Tunnel B1F
	db 21,MACHOP,ONIX,0
; Rock Tunnel 1F
	db 20,GEODUDE,DIGLETT,MACHOKE,0
    db 20,ONIX,GEODUDE,MACHOKE,0
    db 21,GEODUDE,GRAVELER,GOLEM,0
BikerData:
; Route 13
	db 29,KOFFING,KOFFING,WEEZING,0
; Route 14
	db 31,KOFFING,GRIMER,0
; Route 15
	db 33,WEEZING,MUK,0
    db 32,KOFFING,GRIMER,WEEZING,0
; Route 16
	db 30,GRIMER,MUK,0
    db 36,WEEZING,0
    db $FF,26,GRIMER,28,GRIMER,30,GRIMER,27,KANGASKHAN,0
; Route 17
	db 28,WEEZING,KOFFING,HITMONCHAN,0
	db 33,MUK,0
	db 29,VOLTORB,TAUROS,VOLTORB,0
	db 29,WEEZING,MUK,0
	db 29,KOFFING,WEEZING,ONIX,RHYHORN,WEEZING,0
; Route 14
	db 30,KOFFING,MUK,GRIMER,0
    db 29,GRIMER,POLIWRATH,KOFFING,0
    db 31,FLAREON,MUK,0
BurglarData:
; Unused
	db 29,GROWLITHE,VULPIX,0
	db 33,GROWLITHE,0
	db 28,VULPIX,CHARMANDER,PONYTA,0
; Cinnabar Gym
	db $FF,36,MAGMAR,38,VULPIX,40,NINETALES,0
    db 45,PONYTA,0
    db 40,VULPIX,GROWLITHE,0
; Mansion 2F
	db $FF,34,CHARMANDER,36,CHARMELEON,38,CHARIZARD,0
; Mansion 3F
	db 41,NINETALES,0
; Mansion B1F
	db 39,GROWLITHE,PONYTA,MAGMAR,0
EngineerData:
; Unused
	db 21,VOLTORB,MAGNEMITE,0
; Route 11
	db 22,MAGNETON,0
	db 18,MAGNEMITE,MAGNETON,0
Juggler1Data:
; none
FisherData:
; SS Anne 2F Rooms
	db 17,GOLDEEN,TENTACOOL,SQUIRTLE,0
; SS Anne B1F Rooms
	db 18,TENTACOOL,STARYU,SHELLDER,0
; Route 12
	db 24,GOLDEEN,POLIWAG,0
    db 26,TENTACOOL,GOLDEEN,0
    db 28,SEAKING,0
    db 22,POLIWAG,SHELLDER,GOLDEEN,HORSEA,0
; Route 21
	db $FF,40,SEAKING,41,POLIWRATH,0
    db 39,SHELLDER,CLOYSTER,0
    db $FF,15,MAGIKARP,42,GYARADOS,0
    db 38,GOLDEEN,SEAKING,0
; Route 12
	db 25,HORSEA,0
SwimmerData:
; Cerulean Gym
	db 16,HORSEA,SHELLDER,0
; Route 19
	db 35,SHELLDER,TENTACRUEL,0
	db 34,GOLDEEN,HORSEA,STARYU,0
	db 33,POLIWAG,POLIWHIRL,POLIWRATH,0
    db $FF,33,HORSEA,33,TENTACOOL,35,TENTACRUEL,0
    db 33,GOLDEEN,SHELLDER,WARTORTLE,0
    db 34,HORSEA,TENTACRUEL,0
    db $FF,33,STARYU,34,HORSEA,35,TENTACRUEL,0
; Route 20
	db 36,SHELLDER,CLOYSTER,0
    db 40,SEADRA,0
    db $FF,33,HORSEA,35,SEADRA,32,GYARADOS,0
; Route 21
	db 38,SEADRA,TENTACRUEL,0
    db 41,STARMIE,0
    db 39,STARYU,WARTORTLE,0
    db 38,POLIWHIRL,TENTACOOL,SEADRA,0
CueBallData:
; Route 16
	db $FF,28,MACHOP,30,MANKEY,28,MACHOP,0
    db 31,MANKEY,MACHOP,0
    db 34,MACHOKE,0
; Route 17
	db 31,MANKEY,PRIMEAPE,0
    db 30,MACHOP,MACHOKE,0
    db 31,MACHOKE,MACHOKE,0
    db $FF,26,MANKEY,28,PRIMEAPE,30,MACHOKE,32,MACHOP,0
    db 31,PRIMEAPE,MACHOKE,0
; Route 21
	db 41,TENTACRUEL,0
GamblerData:
; Route 11
	db 19,POLIWAG,HORSEA,0
    db 19,BELLSPROUT,ODDISH,0
    db 20,VOLTORB,MAGNEMITE,0
    db 19,GROWLITHE,VULPIX,0
; Route 8
	db 24,POLIWAG,HORSEA,POLIWHIRL,0
; Unused
	db 22,ONIX,GEODUDE,GRAVELER,0
; Route 8
	db 26,GROWLITHE,VULPIX,0
BeautyData:
; Celadon Gym
	db 22,ODDISH,BELLSPROUT,IVYSAUR,0
    db 26,BELLSPROUT,WEEPINBELL,0
    db 28,EXEGGCUTE,0
; Route 13
	db 29,RATTATA,PIKACHU,MEOWTH,0
    db 29,CLEFAIRY,JIGGLYPUFF,0
; Route 20
	db 41,SEAKING,0
    db 36,SHELLDER,CLOYSTER,0
    db 42,SEAKING,0
; Route 15
	db 31,PIDGEOTTO,WIGGLYTUFF,0
    db 31,BULBASAUR,IVYSAUR,0
; Unused
	db 33,WEEPINBELL,BELLSPROUT,WEEPINBELL,0
; Route 19
	db $FF,33,POLIWAG,33,SEAKING,33,GOLDEEN,34,POLIWHIRL,0
    db 35,GOLDEEN,SEAKING,0
    db $FF,33,STARYU,33,SLOWPOKE,34,STARMIE,0
; Route 20
	db $FF,35,KRABBY,37,KINGLER,0
PsychicData:
; Saffron Gym
	db $FF,30,KADABRA,32,SLOWPOKE,34,MR_MIME,33,KADABRA,0
	db 37,MR_MIME,KADABRA,0
	db 35,SLOWPOKE,HYPNO,SLOWBRO,0
	db 41,SLOWBRO,0
RockerData:
; Vermilion Gym
	db 20,VOLTORB,MAGNEMITE,ELECTABUZZ,0
; Route 12
	db 29,VOLTORB,ELECTRODE,0
JugglerData:
; Silph Co. 5F
	db 31,KADABRA,MR_MIME,0
; Victory Road 2F
	db $FF,45,HYPNO,43,KADABRA,46,JYNX,0
; Fuchsia Gym
	db $FF,32,SLOWBRO,33,DROWZEE,33,KADABRA,36,GOLDUCK,0
    db 37,DROWZEE,HYPNO,0
; Victory Road 2F
	db 50,MR_MIME,0
; Unused
	db 36,HYPNO,0
; Fuchsia Gym
	db 40,HYPNO,0
    db 37,DROWZEE,KADABRA,0
TamerData:
; Fuchsia Gym
	db 37,SANDSLASH,ARBOK,0
    db $FF,33,ARBOK,35,SANDSLASH,35,KANGASKHAN,0
; Viridian Gym
	db 47,RHYHORN,0
    db 42,ARBOK,TAUROS,0
; Victory Road 2F
	db 47,PERSIAN,GOLDUCK,0
; Unused
	db 42,RHYHORN,PRIMEAPE,ARBOK,TAUROS,0
BirdKeeperData:
; Route 13
	db 29,PIDGEY,PIDGEOTTO,PIDGEOT,0
    db 32,PIDGEOTTO,0
    db 29,PIDGEY,PIDGEOTTO,SPEAROW,FEAROW,0
; Route 14
	db 37,FARFETCHD,0
    db 31,SPEAROW,FEAROW,0
; Route 15
	db 31,PIDGEOTTO,FARFETCHD,DODUO,0
    db 32,DODUO,DODRIO,0
; Route 18
	db 31,SPEAROW,FEAROW,0
    db 37,DODRIO,0
    db 27,SPEAROW,FEAROW,PIDGEOT,0
; Route 20
	db 37,FARFETCHD,PIDGEOTTO,0
; Unused
	db 39,PIDGEOTTO,PIDGEOTTO,PIDGEY,PIDGEOTTO,0
	db 42,FARFETCHD,FEAROW,0
; Route 14
	db 30,PIDGEY,DODUO,DODRIO,0
    db 33,PIDGEOT,0
    db 31,PIDGEOTTO,FEAROW,0
    db 32,SPEAROW,DODUO,FEAROW,0
BlackbeltData:
; Fighting Dojo
	db 40,HITMONLEE,HITMONCHAN,0
    db 34,MANKEY,MANKEY,PRIMEAPE,0
    db 35,MACHOP,MACHOKE,0
    db 40,PRIMEAPE,0
    db 33,MACHOP,MANKEY,PRIMEAPE,0
; Viridian Gym
	db 44,MACHOP,MACHOKE,0
    db 45,MACHAMP,0
    db 41,MACHOKE,MACHOP,POLIWRATH,0
; Victory Road 2F
	db 46,MACHOKE,HITMONLEE,MACHOKE,0
Green1Data:
	db 5,SQUIRTLE,0
	db 5,BULBASAUR,0
	db 5,CHARMANDER,0
; Route 22
	db $FF,9,PIDGEY,8,SQUIRTLE,0
	db $FF,9,PIDGEY,8,BULBASAUR,0
	db $FF,9,PIDGEY,8,CHARMANDER,0
; Cerulean City
	db $FF,19,PIDGEOTTO,16,ABRA,15,RATTATA,18,SQUIRTLE,0
	db $FF,19,PIDGEOTTO,16,ABRA,15,RATTATA,18,BULBASAUR,0
	db $FF,19,PIDGEOTTO,16,ABRA,15,RATTATA,18,CHARMANDER,0
ProfOakData:
; Unused
	db $FF,66,TAUROS,67,EXEGGUTOR,68,ARCANINE,69,BLASTOISE,70,GYARADOS,0
	db $FF,66,TAUROS,67,EXEGGUTOR,68,ARCANINE,69,VENUSAUR,70,GYARADOS,0
	db $FF,66,TAUROS,67,EXEGGUTOR,68,ARCANINE,69,CHARIZARD,70,GYARADOS,0
ChiefData:
; none
ScientistData:
; Unused
	db 34,KOFFING,VOLTORB,0
; Silph Co. 2F
	db 29,GRIMER,KOFFING,WEEZING,0
    db 30,MAGNEMITE,VOLTORB,MAGNETON,0
; Silph Co. 3F/Mansion 1F
	db 31,ELECTRODE,WEEZING,0
; Silph Co. 4F
	db 35,ELECTRODE,0
; Silph Co. 5F
	db 30,MAGNETON,KOFFING,WEEZING,0
; Silph Co. 6F
	db 31,VOLTORB,KOFFING,MAGNETON,0
; Silph Co. 7F
	db 32,ELECTRODE,MUK,0
; Silph Co. 8F
	db 32,GRIMER,ELECTRODE,0
; Silph Co. 9F
	db 33,VOLTORB,KOFFING,MAGNETON,0
; Silph Co. 10F
	db 33,ELECTABUZZ,KOFFING,0
; Mansion 3F
	db 39,MAGNEMITE,MAGNETON,0
; Mansion B1F
	db 40,VOLTORB,ELECTRODE,0
GiovanniData:
; Rocket Hideout B4F
	db $FF,29,ONIX,28,RHYHORN,31,KANGASKHAN,0
; Silph Co. 11F
	db $FF,39,NIDORINO,40,KANGASKHAN,37,RHYHORN,44,NIDOQUEEN,0
; Viridian Gym
	db $FF,49,RHYHORN,46,DUGTRIO,49,NIDOQUEEN,50,NIDOKING,55,RHYDON,0
RocketData:
; Mt. Moon B2F
	db 14,RATTATA,ZUBAT,0
	db 11,SANDSHREW,RATTATA,ZUBAT,0
	db 12,ZUBAT,EKANS,0
	db 16,RATICATE,0
; Cerulean City
	db 18,MACHOP,DROWZEE,0
; Route 24
	db 15,EKANS,ZUBAT,0
; Game Corner
	db 23,RATICATE,ZUBAT,0
; Rocket Hideout B1F
	db 24,DROWZEE,MACHOP,0
    db 25,RATICATE,RATICATE,0
    db 23,GRIMER,KOFFING,0
    db $FF,24,RATICATE,22,NIDORINO,22,NIDORINA,0
    db 25,DROWZEE,KOFFING,0
; Rocket Hideout B2F
	db $FF,22,ZUBAT,22,KOFFING,23,GRIMER,23,RATICATE,0
; Rocket Hideout B3F
	db 23,RATICATE,DROWZEE,0
	db 24,MACHOP,MANKEY,0
; Rocket Hideout B4F
	db $FF,24,SANDSHREW,24,EKANS,25,SANDSLASH,0
    db $FF,24,EKANS,24,SANDSHREW,25,ARBOK,0
	db 26,MUK,0
; Pokémon Tower 7F
	db 27,ZUBAT,GOLBAT,0
    db 28,KOFFING,DROWZEE,0
    db $FF,26,ZUBAT,26,RATTATA,27,RATICATE,0
; Unused
	db 27,DROWZEE,KOFFING,0
; Silph Co. 2F
	db 30,CUBONE,ZUBAT,0
    db $FF,26,ZUBAT,26,GOLBAT,28,RATICATE,30,POLIWHIRL,0
; Silph Co. 3F
	db 30,EKANS,HYPNO,RATICATE,0
; Silph Co. 4F
	db 30,MACHOP,DROWZEE,0
    db $FF,30,EKANS,30,ZUBAT,32,CUBONE,0
; Silph Co. 5F
	db 36,ARBOK,0
    db 36,HYPNO,0
; Silph Co. 6F
	db 31,MACHOP,MACHOKE,0
    db 33,ZUBAT,GOLBAT,0
; Silph Co. 7F
	db $FF,30,RATICATE,32,ARBOK,32,KOFFING,30,GOLBAT,0
    db 33,CUBONE,GRAVELER,0
    db 32,SANDSHREW,SANDSLASH,0
; Silph Co. 8F
	db $FF,29,RATICATE,31,ZUBAT,33,GOLBAT,0
    db 32,WEEZING,GOLBAT,KOFFING,0 ; un des 4 freres rockets
; Silph Co. 9F
	db 36,TAUROS,0
    db 33,GOLBAT,DROWZEE,HYPNO,0 ; un des 4 freres rockets
; Silph Co. 10F
	db 36,MACHOKE,0
; Silph Co. 11F
	db $FF,30,RATTATA,30,ZUBAT,33,MUK,33,ARBOK,0
    db $FF,32,CUBONE,32,DROWZEE,35,MAROWAK,0
CooltrainerMData:
; Viridian Gym
	db 40,NIDOQUEEN,NIDOKING,0
; Victory Road 3F
	db $FF,43,EXEGGUTOR,45,CLOYSTER,47,ARCANINE,0
    db $FF,43,KINGLER,44,TENTACRUEL,48,BLASTOISE,0
; Unused
	db 48,KINGLER,STARMIE,0
; Victory Road 1F
	db $FF,44,IVYSAUR,44,WARTORTLE,44,CHARMELEON,48,CHARIZARD,0
; Unused
	db $FF,47,TAUROS,47,KANGASKHAN,47,SCYTHER,0
	db 53,NIDOKING,0
	db 47,GYARADOS,CLOYSTER,0
; Viridian Gym
	db 42,SANDSLASH,DUGTRIO,0
    db 48,RHYDON,0
CooltrainerFData:
; Celadon Gym
	db $FF,24,WEEPINBELL,25,GLOOM,26,IVYSAUR,0
; Victory Road 3F
	db 46,VILEPLUME,VICTREEBEL,0
    db 46,PARASECT,DEWGONG,CHANSEY,0
; Unused
	db 46,VILEPLUME,BUTTERFREE,0
; Victory Road 1F
	db 47,PERSIAN,NINETALES,VAPOREON,0
; Unused
	db 45,IVYSAUR,VENUSAUR,0
	db 45,NIDORINA,NIDOQUEEN,0
	db 43,PERSIAN,NINETALES,RAICHU,0
BrunoData:
	db $FF,55,ONIX,57,HITMONCHAN,57,HITMONLEE,58,ONIX,60,MACHAMP,0
BrockData:
	db $FF,12,GEODUDE,14,ONIX,0
MistyData:
	db $FF,19,STARYU,22,STARMIE,0
LtSurgeData:
	db $FF,23,VOLTORB,20,PIKACHU,25,RAICHU,0
ErikaData:
	db $FF,31,VICTREEBEL,26,TANGELA,31,VILEPLUME,0
KogaData:
	db $FF,40,KOFFING,41,MUK,40,KOFFING,45,WEEZING,0
BlaineData:
	db $FF,46,GROWLITHE,44,PONYTA,46,RAPIDASH,50,ARCANINE,0
SabrinaData:
	db $FF,41,KADABRA,40,MR_MIME,41,VENOMOTH,46,ALAKAZAM,0
GentlemanData:
; SS Anne 1F Rooms
	db 19,GROWLITHE,GROWLITHE,0
    db 17,NIDORINO,NIDORINA,0
; SS Anne 2F Rooms/Vermilion Gym
	db 25,PIKACHU,0
; Unused
	db 48,PRIMEAPE,0
; SS Anne 2F Rooms
	db 18,GROWLITHE,PONYTA,0
Green2Data:
; SS Anne 2F
	db $FF,21,PIDGEOTTO,17,RATICATE,19,KADABRA,22,WARTORTLE,0
    db $FF,21,PIDGEOTTO,17,RATICATE,19,KADABRA,22,IVYSAUR,0
    db $FF,21,PIDGEOTTO,17,RATICATE,19,KADABRA,22,CHARMELEON,0
; Pokémon Tower 2F
	db $FF,27,PIDGEOTTO,25,GROWLITHE,24,EXEGGCUTE,22,KADABRA,27,WARTORTLE,0
    db $FF,27,PIDGEOTTO,25,GYARADOS,24,GROWLITHE,22,KADABRA,27,IVYSAUR,0
    db $FF,27,PIDGEOTTO,25,EXEGGCUTE,24,GYARADOS,22,KADABRA,27,CHARMELEON,0
; Silph Co. 7F
	db $FF,39,PIDGEOT,40,GROWLITHE,37,EXEGGCUTE,37,ALAKAZAM,41,BLASTOISE,0
    db $FF,39,PIDGEOT,40,GYARADOS,37,GROWLITHE,37,ALAKAZAM,41,VENUSAUR,0
    db $FF,39,PIDGEOT,40,EXEGGCUTE,37,GYARADOS,37,ALAKAZAM,41,CHARIZARD,0
; Route 22
	db $FF,49,PIDGEOT,47,RHYHORN,48,GROWLITHE,50,EXEGGCUTE,52,ALAKAZAM,55,BLASTOISE,0
    db $FF,49,PIDGEOT,47,RHYHORN,48,GYARADOS,50,GROWLITHE,52,ALAKAZAM,55,VENUSAUR,0
    db $FF,49,PIDGEOT,47,RHYHORN,48,EXEGGCUTE,50,GYARADOS,52,ALAKAZAM,55,CHARIZARD,0
Green3Data:
    db $FF,63,PIDGEOT,61,ALAKAZAM,63,RHYDON,64,ARCANINE,65,EXEGGUTOR,67,BLASTOISE,0
    db $FF,63,PIDGEOT,61,ALAKAZAM,63,RHYDON,64,GYARADOS,65,ARCANINE,67,VENUSAUR,0
    db $FF,63,PIDGEOT,61,ALAKAZAM,63,RHYDON,64,EXEGGUTOR,65,GYARADOS,67,CHARIZARD,0
LoreleiData:
	db $FF,56,DEWGONG,55,CLOYSTER,56,SLOWBRO,58,JYNX,58,LAPRAS,0
ChannelerData:
; Unused
	db 22,GASTLY,0
	db 24,GASTLY,0
	db 23,GASTLY,GASTLY,0
	db 24,GASTLY,0
; Pokémon Tower 3F
	db 23,GASTLY,0
	db 25,GASTLY,0
; Unused
	db 24,HAUNTER,0
; Pokémon Tower 3F
	db 24,GASTLY,0
; Pokémon Tower 4F
	db 25,GASTLY,0
	db 24,GASTLY,GASTLY,0
; Unused
	db 24,GASTLY,0
; Pokémon Tower 4F
	db 24,GASTLY,0
; Unused
	db 24,GASTLY,0
; Pokémon Tower 5F
	db 24,HAUNTER,0
; Unused
	db 24,GASTLY,0
; Pokémon Tower 5F
	db 23,GASTLY,0
	db 26,GASTLY,0
	db 24,HAUNTER,0
; Pokémon Tower 6F
	db 23,GASTLY,HAUNTER,0
    db 26,GASTLY,0
    db 25,HAUNTER,0
; Saffron Gym
	db 36,GASTLY,HAUNTER,0
    db 40,HAUNTER,0
    db 34,GASTLY,HAUNTER,GENGAR,0
AgathaData:
	db $FF,58,GENGAR,58,GOLBAT,57,HAUNTER,60,ARBOK,62,GENGAR,0
LanceData:
	db $FF,60,GYARADOS,58,DRAGONAIR,58,DRAGONAIR,62,AERODACTYL,64,DRAGONITE,0
