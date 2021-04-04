class WildPokemonZone:

    def __init__(self, name):
        self._name = name
        self._wildPokemons = {}  # key = pokemon name, value = list of levels it appears

    @property
    def name(self):
        return self._name

    @property
    def wildPokemons(self):
        return self._wildPokemons

    def addWildPokemon(self, pokemon, lvl):
        if pokemon is None or lvl is None:
            raise Exception("All parameters of addPokemonToZone method must be not None")
        if pokemon in self._wildPokemons.keys():
            self._wildPokemons[pokemon].append(lvl)
        else:
            lvlList = []
            lvlList.append(lvl)
            self._wildPokemons[pokemon] = lvlList

    def __str__(self):
        return self._name