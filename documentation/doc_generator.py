import os

from documentation.Pokemon import Pokemon

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

# Build the part of the documentation describing the moves and their properties
def buildMovesDoc(movesNamesDict, typeNamesDict):
    docLines = []
    docLines.append("## Liste des Attaques\n")
    docLines.append("Attaque | Puissance | Précision | PP | Type\n")
    docLines.append("--- | --- | --- | --- | ---\n")

    tmFile = open('../data/moves.asm', 'r')
    tmLines = tmFile.readlines()
    moveLines = []
    for line in tmLines:
        if line.startswith('	move'):
            parts = line[5:].split(",")
            move = movesNamesDict[parts[0].strip()]
            power = parts[2].strip()
            type = typeNamesDict[parts[3].strip()]
            precision = parts[4].strip()
            pp = parts[5].strip()
            moveLines.append(move + " | " + power + " | " + precision + " | " + pp + " | " + type + "\n")

    moveLines.sort()
    for v in moveLines:
        docLines.append(v)

    return docLines

# Build a list of all the Pokemon (see Pokemon class) and their properties
def buildPokemonsData(pokeNamesDict):
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
    pokemons = []
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
            pokemons.append(pokemon)
    return pokemons

# Build the part of the documentation describing the pokemons and their properties
def buildPokemonsDoc(pokeNamesDict, movesNamesDict):
    docLines = []
    docLines.append("## Propriétés des pokémons\n")

    pokemons = buildPokemonsData(pokeNamesDict)
    pokemons.sort(key=lambda x: x.number, reverse=False)

    for pokemon in pokemons:
        docLines.append("- " + pokemon.number + " " + pokemon.name + "\n")
        docLines.append("   * Liste des attaques apprises :\n\n")
        docLines.append("     Attaque | Niveau \n")
        docLines.append("     --- | --- \n")
        for moveName, moveLvl in pokemon.moves.items():
            docLines.append("     " + movesNamesDict[moveName] + " | " + moveLvl + " \n")

    docLines.append("\n\n")
    return docLines



############################################
#         MAIN
############################################
pokeNamesDict = buildTranslationDict('i18n/pokemon_names.csv')
movesNamesDict = buildTranslationDict('i18n/moves_names.csv')
typeNamesDict = buildTranslationDict('i18n/type_names.csv')

if(os.path.isfile(DOCUMENTATION_FILE)):
    os.remove(DOCUMENTATION_FILE)

docFile = open(DOCUMENTATION_FILE, 'w')
docFile.writelines(buildPokemonsDoc(pokeNamesDict, movesNamesDict))
docFile.writelines(buildMovesDoc(movesNamesDict, typeNamesDict))
docFile.close()

print("Documentation generated. See documentation.md file.")
