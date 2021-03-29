class Pokemon:

    def __init__(self):
        self._name = None
        self._number = None
        self._moves = {}  # key = move name, value = level it is learnt

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

    def __str__(self):
        return self._number + " " + self._name