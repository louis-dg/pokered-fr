import os

from documentation.Pokemon import Pokemon
from documentation.WildPokemonZone import WildPokemonZone

'''
This script is meant to create a documentation file in Markdown format
It has been tested with python 3.6
'''

CSV_SEPARATOR = ';'
DOCUMENTATION_FILE = 'documentation.md'

# Build a dict to get translation
def buildTranslationDict(filename):
    file = open(filename, 'r')
    lines = file.readlines()
    names = {}
    for line in lines:
        parts = line.split(CSV_SEPARATOR)
        names[parts[0].strip()] = parts[1].strip()
    return names

# Build a dict to get TM and HM names. key is the number (01,...,55) value is the code name (KARATE_CHOP,...)
def buildTMHMDict():
    file = open('../data/tms.asm', 'r')
    lines = file.readlines()
    lines.pop(0)
    tmhm = {}
    i = 1
    for line in lines:
        if line.strip() != '':
            moveName = line.replace('	db ', '').strip()
            tmhm[i] = moveName
            i += 1
    return tmhm

# Build the part of the documentation describing the moves and their properties
def buildMovesDoc(movesNamesDict, typeNamesDict, effectsDescriptionDict):
    docLines = []
    docLines.append("## II. Liste des Attaques\n")
    docLines.append("NB : Une attaque de type glace ne peut pas geler un pokémon de type de glace, Plaquage ne peut pas paralyser un pokémon de type normal, etc.\n\n")
    docLines.append("Attaque | Puissance | Précision | PP | Type | Description\n")
    docLines.append("--- | --- | --- | --- | --- | ---\n")

    tmFile = open('../data/moves.asm', 'r')
    tmLines = tmFile.readlines()
    moveLines = []
    for line in tmLines:
        if line.startswith('	move'):
            parts = line[5:].split(",")
            move = movesNamesDict[parts[0].strip()]
            description = effectsDescriptionDict[parts[1].strip()]
            power = parts[2].strip()
            type = typeNamesDict[parts[3].strip()]
            precision = parts[4].strip()
            pp = parts[5].strip()
            moveLines.append(move + " | " + power + " | " + precision + " | " + pp + " | " + type + " | " + description + "\n")

    moveLines.sort()
    for v in moveLines:
        docLines.append(v)

    return docLines

# Build a list of all the Pokemon (see Pokemon class) and their properties
def buildPokemonsData(pokeNamesDict):
    # Get infos from evos_moves.asm
    movesFile = open('../data/evos_moves.asm', 'r')
    movesLines = movesFile.readlines()

    pokemonLines = []
    lines = []
    last = movesLines[-1]
    for line in movesLines:
        if line.endswith('EvosMoves:\n'):
            if len(lines) > 0:
                pokemonLines.append(lines)
            lines = []
            lines.append(line)
        elif line is last:
            pokemonLines.append(lines)
        else:
            lines.append(line)

    pokemonLines.pop(0)
    pokemons = {}
    for pokemonData in pokemonLines:
        pokeNum = pokemonData[0][3:6]
        name = pokemonData[1].replace(';', '').strip()
        if name != 'MISSINGNO':
            pokemon = Pokemon()
            startIndex = 4
            if name == "EEVEE":
                startIndex += 2
            nameFr = pokeNamesDict[name]
            moves = {}
            for elem in pokemonData[startIndex:]:
                elem = elem.replace('db', '').strip()
                if "," in elem:
                    lvlAndMove = elem.split(',')
                    moveName = lvlAndMove[1].strip()
                    moveLvl = lvlAndMove[0].strip()
                    moves[moveName] = moveLvl  # key = move name, value = level it is learnt

            pokemon.number = pokeNum
            pokemon.name = nameFr
            pokemon.moves = moves
            pokemons[name] = pokemon

    # Get infos from pokemon files (in baseStats directory)
    baseStatsDir = '../data/baseStats/'
    for filename in os.listdir(baseStatsDir):
        pokemonFile = open(baseStatsDir + filename, 'r')
        fileLines = pokemonFile.readlines()
        index = 0
        if not fileLines[index].startswith('db'):
            index += 1
        nameKey = fileLines[index].replace('db DEX_', '').replace('; pokedex id', '').strip()

        pokemons[nameKey].baseHP = fileLines[index + 1].replace('db', '').replace('; base hp', '').strip()
        pokemons[nameKey].baseAtk = fileLines[index + 2].replace('db', '').replace('; base attack', '').strip()
        pokemons[nameKey].baseDef = fileLines[index + 3].replace('db', '').replace('; base defense', '').strip()
        pokemons[nameKey].baseSpeed = fileLines[index + 4].replace('db', '').replace('; base speed', '').strip()
        pokemons[nameKey].baseSpecial = fileLines[index + 5].replace('db', '').replace('; base special', '').strip()
        pokemons[nameKey].type1 = fileLines[index + 6].replace('db', '').replace('; species type 1', '').strip()
        pokemons[nameKey].type2 = fileLines[index + 7].replace('db', '').replace('; species type 2', '').strip()
        pokemons[nameKey].catchRate = fileLines[index + 8].replace('db', '').replace('; catch rate', '').strip()
        pokemons[nameKey].xpYield = fileLines[index + 9].replace('db', '').replace('; base exp yield', '').strip()
        for ind in [14,15,16,17]:
            moveLine = fileLines[index + ind].strip()
            if moveLine != 'db 0':
                pokemons[nameKey].baseMoveset.append(moveLine.replace('db ', '').strip())
        pokemons[nameKey].growthRate = fileLines[index + 18].replace('db', '').replace('; growth rate', '').strip()
        tms = []
        for ind in [20,21,22,23,24,25,26]:
            tmlearnLine = fileLines[index + ind].strip()
            tmlearnLine = tmlearnLine.replace('tmlearn', '').strip()
            rawTms = tmlearnLine.split(',')
            rawTms = list(filter(('0').__ne__, rawTms)) # remove values '0'
            tms.extend(rawTms)
        pokemons[nameKey].learnset = tms

    return list(pokemons.values())

# Build the part of the documentation describing the pokemons and their properties
def buildPokemonsDoc(movesNamesDict, tmhmDict, pokemons):
    docLines = []
    docLines.append("## I. Propriétés des pokémons\n")

    docLines.append("- Taux de catpure : Plus cette valeur est petite, plus le pokémon est difficile à attraper.\n\n")
    docLines.append("- Taux de rendement d'expérience : Plus cette valeur est grande, plus le pokémon donne des points d'expérience lorsqu'il est battu.\n\n")
    docLines.append("- Taux de croissance : Plus cette valeur est grande, plus le pokémon nécessite de points d'expérience pour passer des niveaux.\n\n\n")

    pokemons.sort(key=lambda x: x.number, reverse=False)

    for pokemon in pokemons:
        docLines.append("- " + pokemon.number + " " + pokemon.name + "\n")

        docLines.append("   * Statistiques :\n\n")
        docLines.append("     Stat | Valeur de base \n")
        docLines.append("     --- | --- \n")
        docLines.append("     PV | " + pokemon.baseHP + " \n")
        docLines.append("     FOR | " + pokemon.baseAtk + " \n")
        docLines.append("     DEF | " + pokemon.baseDef + " \n")
        docLines.append("     VIT | " + pokemon.baseSpeed + " \n")
        docLines.append("     SPE | " + pokemon.baseSpecial + " \n")
        docLines.append("   * Taux de catpure : " + pokemon.catchRate + " \n\n")
        docLines.append("   * Taux de rendement d'expérience : " + pokemon.xpYield + " \n\n")
        docLines.append("   * Taux de croissance : " + pokemon.growthRate + " \n\n")
        docLines.append("   * Attaques de départ :\n\n")
        for mv in pokemon.baseMoveset:
            docLines.append("     * " + movesNamesDict[mv] + "\n\n")
        docLines.append("   * Liste des attaques apprises :\n\n")
        docLines.append("     Attaque | Niveau \n")
        docLines.append("     --- | --- \n")
        for moveName, moveLvl in pokemon.moves.items():
            docLines.append("     " + movesNamesDict[moveName] + " | " + moveLvl + " \n")
        docLines.append("   * Attaques accessibles via CT/CS :\n\n")
        docLines.append("     CT/CS | Attaque \n")
        docLines.append("     --- | --- \n")
        for tmhm in pokemon.learnset:
            intTMHM = int(tmhm)
            if intTMHM < 51:
                docLines.append("     CT" + '{:02}'.format(intTMHM) + " | " + movesNamesDict[tmhmDict[intTMHM]] + "\n")
            else:
                docLines.append("     CS" + '{:02}'.format(intTMHM - 50) + " | " + movesNamesDict[tmhmDict[intTMHM]] + "\n")

    docLines.append("\n\n")
    return docLines

# build a dict associating each zone with its properties (see WildPokemonZone.py)
def buildWildPokemonsData():
    zones = []

    wildPokemonDir = '../data/wildPokemon/'
    for filename in os.listdir(wildPokemonDir):
        file = open(wildPokemonDir + filename, 'r')
        lines = file.readlines()
        zone = os.path.splitext(filename)[0]
        if zone != 'nomons':
            wildPokeZone = WildPokemonZone(zone)
            for line in lines:
                if ',' in line:
                    line = line.strip()
                    line = line[3:] # remove 'db '
                    lvlAndName = line.split(',')
                    lvl = lvlAndName[0].strip()
                    name = lvlAndName[1].strip()
                    wildPokeZone.addWildPokemon(name, lvl)
            zones.append(wildPokeZone)
    return zones

# Build the part of the documentation describing the regions and wild pokemons appearing in it
def buildZonesDoc(pokeNamesDict, zoneNamesDict, wildPokemonZones):
    docLines = []
    docLines.append("## III. Description des régions\n\n")
    docLines.append("Le taux d'apparition d'un pokémon à un niveau donné est toujours de 10%. "
                    + "Donc plus un pokémon apparaît avec des niveaux différents, "
                    + "plus il est probable de le rencontrer aléatoirement.\n\n")

    wildPokemonZones.sort(key=lambda x: x.name, reverse=False)
    for zone in wildPokemonZones:
        docLines.append("- " + zoneNamesDict[zone.name] + "\n\n")
        wildPokeDict = zone.wildPokemons
        if len(wildPokeDict) == 0:
            docLines.append("    * Pas de pokémon sauvage\n\n\n")
        else:
            docLines.append("     Pokémon | Niveau(x) \n")
            docLines.append("     --- | --- \n")
            for wildPokemon, levels in wildPokeDict.items():
                docLines.append("     " + pokeNamesDict[wildPokemon] + " | " + ', '.join(levels) + "\n")

    return docLines

# Build the part of the documentation : ranking by statistics
def buildPokemonsStatsData(pokemons):
    docLines = []
    docLines.append("## IV. Classements par stats\n\n")

    docLines.append("Classement | PV | FOR | DEF | VIT | SPE\n")
    docLines.append("--- | --- | --- | --- | --- | ---\n")

    pokeHP = sorted(pokemons, key=lambda x: int(x.baseHP), reverse=True)
    pokeAtk = sorted(pokemons, key=lambda x: int(x.baseAtk), reverse=True)
    pokeDef = sorted(pokemons, key=lambda x: int(x.baseDef), reverse=True)
    pokeSpeed = sorted(pokemons, key=lambda x: int(x.baseSpeed), reverse=True)
    pokeSpecial = sorted(pokemons, key=lambda x: int(x.baseSpecial), reverse=True)

    start = 0
    maxsize = len(pokeHP)
    for i in range(start, maxsize):
        docLines.append(str(i + 1) + " | "
                        + "**" + pokeHP[i].name + "** (" + pokeHP[i].baseHP + ") | "
                        + "**" + pokeAtk[i].name + "** (" + pokeAtk[i].baseAtk + ") | "
                        + "**" + pokeDef[i].name + "** (" + pokeDef[i].baseDef + ") | "
                        + "**" + pokeSpeed[i].name + "** (" + pokeSpeed[i].baseSpeed + ") | "
                        + "**" + pokeSpecial[i].name + "** (" + pokeSpecial[i].baseSpecial + ")"
                        + "\n")
        i += 1

    return docLines

############################################
#         MAIN
############################################
pokeNamesDict = buildTranslationDict('i18n/pokemon_names.csv')
movesNamesDict = buildTranslationDict('i18n/moves_names.csv')
typeNamesDict = buildTranslationDict('i18n/type_names.csv')
zoneNamesDict = buildTranslationDict('i18n/zone_names.csv')
effectsDescriptionDict = buildTranslationDict('i18n/effects_description.csv')
tmhmDict = buildTMHMDict()
pokemons = buildPokemonsData(pokeNamesDict)
wildPokemonDict = buildWildPokemonsData()

if(os.path.isfile(DOCUMENTATION_FILE)):
    os.remove(DOCUMENTATION_FILE)

docFile = open(DOCUMENTATION_FILE, 'w')
docFile.write("# Pokémon Rouge\n\n")
docFile.write("Ceci est la documentation associée à la hack rom Pokémon Rouge créée par LePatator.\n\n")
docFile.write("Page du projet : https://github.com/LePatator/pokered-fr\n\n")
docFile.write("## Sommaire\n\n")
docFile.write("- I. Propriétés des pokémons\n\n")
docFile.write("- II. Liste des Attaques\n\n")
docFile.write("- III. Description des régions\n\n")
docFile.write("- IV. Classement par stats\n\n")
docFile.writelines(buildPokemonsDoc(movesNamesDict, tmhmDict, pokemons))
docFile.writelines(buildMovesDoc(movesNamesDict, typeNamesDict, effectsDescriptionDict))
docFile.writelines(buildZonesDoc(pokeNamesDict, zoneNamesDict, wildPokemonDict))
docFile.writelines(buildPokemonsStatsData(pokemons))
docFile.close()

print("Documentation generated. See documentation.md file.")
