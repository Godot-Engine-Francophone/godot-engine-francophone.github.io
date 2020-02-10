---
title: "Godot 3.2 et la pseudo-3D"
layout: actualite
description: >-
  Je vous déterre et traduit un article qui date d'avril 2019 parlant de la future implémentation de la pseudo-3D dans Godot 3.2, suite
  à un tweet de Coldragon, utilisateur du discord Godot 
  Francophone.
categories: actualite
by: Juan Linietsky
translated: Topy
original_url: https://godotengine.org/article/godot-32-will-get-pseudo-3d-support-2d-engine
tags:
- 3.2
- Stable
icon: code-branch
---

*NdT : Je vous déterre et traduit un article qui date d'avril 2019 parlant d'implémentation de la pseudo-3D dans Godot 3.2, suite
à un [tweet](https://twitter.com/GodotFrancopho1/status/1226850911760388097) de Coldragon, utilisateur du discord Godot 
Francophone. Les ressources et autres tutos sur cette fonctionnalité étant rares, vous êtes invités à proposer vos propres
tutoriels, ou à traduire certains tutoriels existant pour le site web ! Ça se passe 
[ici](https://github.com/Godot-Engine-Francophone/godot-engine-francophone.github.io/issues/new/choose)*

![Pseudo 3D démo](https://godotengine.org/storage/app/uploads/public/5ca/776/3d9/5ca7763d99acc514180027.png){: .center-image }

## Support de la pseudo-3D
Le support de la 2D dans Godot est déjà très mature et la plupart des utilisateurs aiment travailler avec le moteur 2D. 
On observe toutefois une tendance croissante à ajouter des couches 3D aux jeux en 2D, comme le montrent des titres à succès 
tels que [Hollow Knight](https://www.youtube.com/watch?v=nvzUzQbkikY) ou [Rayman Origins](https://www.youtube.com/watch?v=_umLnGZZBrg). Cela est possible parce que les moteurs dans lesquels ces jeux sont réalisés sont 
de véritables moteurs 3D utilisant des plans 2D. En fin de compte, cela est possible, mais il faut pour cela comprendre et 
connaître le fonctionnement des moteurs 3D.

### Même technique dans Godot
Cela est également possible dans Godot en utilisant le moteur 3D, via des noeuds tels que [Sprite3D](https://docs.godotengine.org/en/3.1/classes/class_sprite3d.html), mais la vérité est que 
cette technique demande à l'utilisateur de faire plus de travail et de comprendre davantage le fonctionnement de l'espace 3D.

La parallaxe (via le noeud [ParralaxBackground](https://docs.godotengine.org/en/3.0/classes/class_parallaxbackground.html)) fonctionne dans une certaine mesure, mais il est davantage destiné à être 
utilisé comme un fond lointain plutôt que pour ajouter de la profondeur à la zone de jeu.

Pour cette raison, une nouvelle façon d'implémenter la pseudo 3D a été ajoutée au moteur 2D, de sorte que les mêmes résultats 
peuvent être obtenus avec une programmation 2D pure, ce qui rend le développement de ce type de jeux beaucoup plus facile 
tout en utilisant tous les outils (et atouts) 2D existants que Godot fournit.

### Les Canvas Layers
Le moteur 2D de Godot possède déjà un noeud nommé [CanvasLayer](https://docs.godotengine.org/en/3.0/tutorials/2d/canvas_layers.html). Tout ce qui en est l'enfant ou le petit enfant sera rendu 
sur ce calque. L'index de la couche peut être spécifié sous la forme d'un nombre (et il est également ordonné dans l'arbre) 
pour contrôler le placement de la profondeur, de sorte qu'aucun positionnement en Z n'est nécessaire.

L'utilisation de ce noeud est une pratique courante pour réaliser des interfaces utilisateur, car ils ne défilent pas avec 
le reste de la fenêtre d'affichage, les calques pouvant se déplacer indépendamment.

Cependant, il peut être souhaitable de se déplacer avec la fenêtre d'affichage, c'est pourquoi une nouvelle option a été 
ajoutée : "Suivre la fenêtre d'affichage". En activant cette option, on s'assure que ce calque se déplacera avec la 
fenêtre lorsqu'on utilise un [Camera2D](https://docs.godotengine.org/en/3.1/classes/class_camera2d.html). 

### Ajouter de la profondeur

Avec *Follow Viewport*, il existe une nouvelle propriété `Scale`. Cette valeur permet de mettre à l'échelle le canvas 
tout en suivant la fenêtre de visualisation. C'est un paramètre simple mais il peut être utilisé pour faire de la 
*pseudo-3D* facilement :

{% youtube "https://youtu.be/CWZvPZ5mGmY" %}

En pratique, il suffit de créer votre niveau en utilisant plusieurs noeuds CanvasLayer. Modifiez-les ensemble comme 
si vous utilisiez une vue orthogonale en 3D :

![Démo pseudo-3D](https://godotengine.org/storage/app/uploads/public/5ca/774/33b/5ca77433b020d570359819.png){: .center-image }

Dans les captures d'écran ci-dessus, quelques noeuds CanvasLayer ont été créés. Ensuite, le TileMap de la démo 2D de Platformer 
a été dupliqué en brut et inséré dans chacun d'eux.

Enfin, l'option "Follow Viewport" a été activée, ainsi qu'une valeur de Scale. Cela permet d'activer l'effet pseudo-2D 
sur chaque calque.

### Prévisualiser sans lancer le jeu

Prévisualiser l'effet dans l'éditeur est très simple, utilisez simplement la nouvelle option "Preview Canvas Scale" dans le menu de
la vue 2D :

{% youtube "https://youtu.be/CE1GIakmHR0" %}

### Limitations

La principale limite de cette technique est qu'il n'est pas possible de déplacer un seul objet dans plusieurs calques, 
car il faudra absolument qu'elles soient séparées (aucun des jeux mentionnés ci-dessus n'utilise cependant cette technique). 
On peut toujours contourner ce problème avec un noeud [RemoteTransform2D](https://docs.godotengine.org/en/3.1/classes/class_remotetransform2d.html), mais cela demande un peu plus de travail.
