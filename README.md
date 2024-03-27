# Pokémon Rouge Vermeil

Ceci est une amélioration de la hack rom de la version française de Pokémon rouge.

Le but de ce projet est de partir de la rom de Pokémon rouge VF et d'y apporter des améliorations **relativement légères** afin de **garder le ressenti du jeu original** tout en **corrigeant des défauts** qui, avec les standards d'aujourd'hui, affectent grandement la rejouabilité de cette version.

Ce projet s'adresse à un public francophone, trop peu représenté dans le monde des hack roms à mon avis :)

**Pour jouer au jeu, téléchargez le fichier pokered.gbc se trouvant dans la [release](https://github.com/LePatator/pokered-fr/releases) de ce projet et utilisez-le avec votre émulateur de prédilection.**

Le fichier de documentation [**documentation.md**](documentation/documentation.md) fournit des informations sur les propriétés du jeu incluant les modifications effectuées pour cette hack rom.

Pour construire le fichier .gbc, suivez les instructions du fichier INSTALL.md. Dans ce projet la version bleu n'est pas gérée car tous les pokémons sont obtenables cette version rouge revisitée. Il est donc inutile d'utiliser le fichier pokeblue.gbc.

Pour configurer le dépôt, voir [**INSTALL.md**](INSTALL.md).

# Liste des Modifications

- Améliorations des attaques
    * Les attaques apprises par montée de niveau ont été retravaillées : elles sont plus nombreuses et plus intéressantes.
    * Les pokémons évoluant par pierre (pierre eau, pierre feu, etc.) apprennent aussi les attaques comme leur pré-évolution. Ainsi, vous pouvez faire évoluer votre pikachu en raichu au niveau qui vous plaira car ce dernier apprendra ses attaques au même niveau que pikachu. Le but est de ne pas contraindre le joueur à attendre un certain niveau avant de pouvoir utiliser une pierre d'évolution.
    * Les CT ont été légèrement modifiés
      * CT36 est DETRITUS à la place de DESTRUCTION
      * CT30 est COUD'BOULE à la place de TELEPORT
      * CT20 est LANCE-FLAMME à la place de FRENESIE
      * CT04 est POINGLACE à la place de COUPE-VENT
      * CT47 est POING-ECLAIR à la place d'EXPLOSION
      * CT49 est POING DE FEU à la place de TRIPLATTAQUE
    * Les caractéristiques de certaines attaques ont été modifiées :
      * POING-KARATE => type combat au lieu de normal
      * TORNADE => type vol au lieu de normal
      * COUPE-VENT => type vol au lieu de normal, augmentation de puissance de à 80 à 120 et précision de 75 à 95
      * CRU-AILE -> augmentation de puissance de 35 à 60
      * SACRIFICE => augmentation de puissance de 80 à 100
      * BALAYAGE => augmentation de puissance de 50 à 60
      * MAWASHI GERI => augmentation de puissance de 60 à 65
      * DANSEFLAMME => augmentation de puissance de 15 à 20 et de précision de 70 à 85
      * DARD-NUEE => augmentation de puissance de 15 à 20
      * COUD'KRANE => augmentation de puissance de 100 à 120
      * DESTRUCTION => augmentation de puissance de 130 à 200
      * EXPLOSION => augmentation de puissance de 170 à 250
      * JET-PIERRES => augmentation de précision de 65 à 90

- Tous les pokémons de type vol peuvent apprendre la CS Vol.
    * Cela concerne notamment Dracaufeu et Dracolosse.

- Certains niveaux d'évolution ont été modifiés :
    * Draco évolue au niveau 45 à la place de 55. 
    * Rhinocorne évolue au niveau 37 à la place de 42.
    * Kabuto évolue au niveau 42 à la place de 40.
    * Amonita évolue au niveau 42 à la place de 40.

- Les pokémons fossiles (Amonita, Kabuto et Ptéra) sont reçus du labo au niveau 35 au lieu de 30.

- Les pokémons qui évoluent par échange évoluent désormais au niveau 36.

- Les CS peuvent être oubliées (attention à ne pas se bloquer ainsi).

- La variété des combats contre les dresseurs a été améliorée :
    * Les dresseurs ont plus souvent des pokémons évolués et ces derniers ont un niveau plus haut que dans la version originale.

- La variété des combats contre les pokémons sauvages a été augmentée :
    * Tous les pokémons sont obtenables dans cette version. NB : Mew est accessible uniquement via le bug du croupier.

- Les échanges internes ont été modifiés afin d'être plus intéressants.

- La pension pokémon entraîne les pokémons deux fois plus rapidement que dans le jeu original.

- Les CT achetables au magasin de Céladopole ne sont plus trouvables dans le monde et ont été modifiées.

- Les pokemons obtenables avec des jetons ont été retravaillés.

- Le PC peut contenir 60 objets au lieu de 50. 

# Remerciements

Merci au groupe de fans Pret qui a pu rendre cette version possible : https://pret.github.io/