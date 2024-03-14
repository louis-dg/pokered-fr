class Pokemon:

    def __init__(self):
        self._name = None
        self._number = None
        self._moves = {}  # key = move name, value = level it is learnt
        self._baseHP = None
        self._baseAtk = None
        self._baseDef = None
        self._baseSpeed = None
        self._baseSpecial = None
        self._type1 = None
        self._type2 = None
        self._evol = {}  # lvl : pokemon name
        self._catchRate = None  # the lower this value is, the harder the pokemon is to catch
        self._xpYield = None  # the higher this value is, the more xp you will get from beating this pokemon
        self._baseMoveset = []
        self._learnset = []
        self._growthRate = None  # the higher this value is, the longer it takes for the pokemon to gain levels

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, v):
        self._name = v

    @property
    def moves(self):
        return self._moves

    @moves.setter
    def moves(self, v):
        self._moves = v

    @property
    def number(self):
        return self._number

    @number.setter
    def number(self, v):
        self._number = v

    @property
    def baseHP(self):
        return self._baseHP

    @baseHP.setter
    def baseHP(self, v):
        self._baseHP = v

    @property
    def baseAtk(self):
        return self._baseAtk

    @baseAtk.setter
    def baseAtk(self, v):
        self._baseAtk = v

    @property
    def baseDef(self):
        return self._baseDef

    @baseDef.setter
    def baseDef(self, v):
        self._baseDef = v

    @property
    def baseSpeed(self):
        return self._baseSpeed

    @baseSpeed.setter
    def baseSpeed(self, v):
        self._baseSpeed = v

    @property
    def baseSpecial(self):
        return self._baseSpecial

    @baseSpecial.setter
    def baseSpecial(self, v):
        self._baseSpecial = v

    @property
    def type1(self):
        return self._type1

    @type1.setter
    def type1(self, v):
        self._type1 = v

    @property
    def type2(self):
        return self._type2

    @type2.setter
    def type2(self, v):
        self._type2 = v

    @property
    def evol(self):
        return self._evol

    @evol.setter
    def evol(self, v):
        self._evol = v

    def addEvolution(self, lvl, name):
        self._evol[lvl] = name

    @property
    def catchRate(self):
        return self._catchRate

    @catchRate.setter
    def catchRate(self, v):
        self._catchRate = v

    @property
    def xpYield(self):
        return self._xpYield

    @xpYield.setter
    def xpYield(self, v):
        self._xpYield = v

    @property
    def baseMoveset(self):
        return self._baseMoveset

    @baseMoveset.setter
    def baseMoveset(self, v):
        self._baseMoveset = v

    @property
    def learnset(self):
        return self._learnset

    @learnset.setter
    def learnset(self, v):
        self._learnset = v

    @property
    def growthRate(self):
        return self._growthRate

    @growthRate.setter
    def growthRate(self, v):
        self._growthRate = v

    def __str__(self):
        return self._number + " " + self._name

    def totalStats(self):
        return int(self._baseAtk) + int(self._baseDef) + int(self._baseSpeed) + int(self.baseSpecial) + int(self._baseHP)
