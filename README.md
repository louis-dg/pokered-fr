# Pokémon: Version Rouge and Bleue

This is a disassembly of Pokémon: Version Rouge and Bleue.

It builds the following roms:

* Pokemon - Version Rouge (F) [S][!].gb  `md5: 669700657cb06ed09371cdbdef69e8a3`
* Pokemon - Version Bleue (F) [S][!].gb  `md5: 35c8154c81abb2ab850689fd28a03515`

To set up the repository, see [**INSTALL.md**](INSTALL.md).


## See also

* Disassembly of [**Pokémon Red & Blue**][pokered]
* Disassembly of [**Pokémon Yellow**][pokeyellow]
* Disassembly of [**Pokémon Crystal**][pokecrystal]
* Disassembly of [**Pokémon Pinball**][pokepinball]
* Disassembly of [**Pokémon TCG**][poketcg]
* Disassembly of [**Pokémon Ruby**][pokeruby]
* Disassembly of [**Pokémon Emerald**][pokeemerald]
* Discord: [**pret**][Discord]
* irc: **irc.freenode.net** [**#pret**][irc]

[pokered]: https://github.com/pret/pokered
[pokeyellow]: https://github.com/pret/pokeyellow
[pokecrystal]: https://github.com/pret/pokecrystal
[pokepinball]: https://github.com/pret/pokepinball
[poketcg]: https://github.com/pret/poketcg
[pokeruby]: https://github.com/pret/pokeruby
[pokeemerald]: https://github.com/pret/pokeemerald
[Discord]: https://discord.gg/cJxDDVP
[irc]: https://kiwiirc.com/client/irc.freenode.net/?#pret


# Présentation : Pokémon rouge

Ceci est un projet d'amélioration de la hackrom de Pokémon rouge.

Le but de ce projet est de partir de la rom de Pokémon rouge et d'y apporter des améliorations **relativement légères** afin de **garder le ressenti du jeu original** tout en corrigeant des défauts qui, avec les standards d'aujourd'hui, affectent grandement la rejouabilité de cette version.

Ce projet s'adresse à un public francophone, trop peu représenté dans le monde des hackroms à mon avis :)

Ce projet est en cours de réalisation. Il n'est pas terminé, néanmoins, le jeu est jouable. Voyez la liste des modifications pour plus d'informations.

Pour jouer au jeu, suivez les instructions du fichier INSTALL.md. Il vous permettra de créer le fichier pokered.gbc qu'il faudra utiliser avec votre émulateur de prédilection. Dans ce projet la version bleu n'est pas gérée. Il est donc inutile d'utiliser le fichier pokeblue.gbc.

# Liste des Modifications

- Améliorations des attaques
    * Les attaques apprises par montée de niveau ont été retravaillées : elles sont plus nombreuses et plus intéressantes.
    * Les pokémons évoluant par pierre (pierre eau, pierre feu, etc.) apprennent aussi les attaques comme leur pré-évolution. Ainsi, vous pouvez faire évoluer votre pikachu en raichu au niveau qui vous plaira car il apprendra ses attaques au même niveau que pikachu. Le but est de ne pas contraindre le joueur à attendre un certain niveau avant de pouvoir utiliser une pierre d'évolution.
    * Les CT ont été légèrement modifiés
      * CT36 est DETRITUS à la place de DESTRUCTION
      * CT30 est COUD'BOULE à la place de TELEPORT
      * CT04 est AMNESIE à la place de COUPE-VENT
      * CT20 est LANCE-FLAMME à la place de FRENESIE
    * Les caractéristiques de certaines attaques ont été modifiées :
      * POING-KARATE => type combat au lieu de normal
      * TORNADE => type vol au lieu de normal
      * COUPE-VENT => type vol au lieu de normal + augmentation de puissance de à 80 à 130 et précision de 75 à 95
      * CRU-AILE -> augmentation de puissance de 35 à 60
      * SACRIFICE => augmentation de puissance de 80 à 100
      * BALAYAGE => augmentation de puissance de 50 à 60
      * MAWASHI GERI => augmentation de puissance de 60 à 65
      * DANSEFLAMME => augmentation de puissance de 15 à 20
      * DARD-NUEE => augmentation de puissance de 15 à 20
      * COUD'KRANE => augmentation de puissance de 100 à 120
      * DESTRUCTION => augmentation de puissance de 130 à 200
      * EXPLOSION => augmentation de puissance de 170 à 250
      * JET-PIERRES => augmentation de précision de 65 à 90
      * DANSEFLAMME => augmentation de précision de 70 à 85


- Tous les pokémons de type vol peuvent apprendre la CS Vol.
    * Cela concerne notamment Dracaufeu et Dracolosse.


- Certains niveaux d'évolution ont été diminués :
    * Draco : évolue au niveau 45 à la place de 55. 
    * Rhinocorne : évolue au niveau 37 à la place de 42.


- Les pokémons qui évoluent par échange évoluent désormais au niveau 36.


- La variété des combats contre les dresseurs a été améliorée :
    * Les dresseurs ont plus souvent des pokémons évolués et ces derniers ont un niveau plus haut que dans la version originale.


- La variété des combats contre les pokémons sauvages a été augmentée :
    * Tous les pokémons sont obtenables dans cette version. NB : Mew est accessible uniquement via le bug du croupier.


- Les échanges internes ont été modifiés afin d'être plus intéressants.