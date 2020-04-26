---
title: "Version de maintenance: Godot 3.2.1"
layout: actualite
description: >-
  Godot Engine 3.2.1 vient de sortir, elle apporte de nombreuses corrections par rapport à la version 3.2.
  Elle est 100% compatible avec la version 3.2, pensez a mettre à jour vos projets.
categories: actualite
by: Rémi Verschelde 
translated: "Xavier \"Binogure\""
tags:
- 3.2.1
- Stable
- Maintenance
original_url: https://godotengine.org/article/maintenance-release-godot-3-2-1
icon: code-branch
---

![Fist of the Forgotten](https://godotengine.org/storage/app/uploads/public/5e6/76e/b88/5e676eb885595988806573.jpg){: .center-image }

La version stable actuelle, Godot 3.2, [est sortie fin janvier](https://www.godot-francophone.org/actualite-godot-3-2-released/). Elle constitue une mise à jour majeure de toutes les fonctionnalités et de l'expérience utilisateur du moteur. Mais comme pour toute version de logiciel, il y a toujours des choses qui peuvent être améliorées et des bogues qui peuvent être corrigés, et en tant que tel, nous prévoyons de publier des versions de maintenance fréquentes pour la branche 3.2, afin de la rendre encore plus agréable et fiable à utiliser.

En particulier, parmi les 2000 corrections de bogues et améliorations apportées à la version 3.2 de Godot, quelques régressions sont passés sous le radar, et cette première version de Godot 3.2.1 vise à les corriger. Un grand merci à tous les contributeurs qui ont aidé à corriger les bogues, à améliorer l'expérience utilisateur et à écrire la documentation de cette version.

[Téléchargez Godot 3.2.1](https://godotengine.org/download) maintenant et lisez les changements de cette mise à jour.

Note : Crédits de l'illustration au bas de cette page.[^1]

## Liste des changements
Cette version comprend près de [200 changements de code](https://github.com/godotengine/godot/compare/3.2-stable...3.2.1-stable) corrigeant des bugs, améliorant l'expérience utilisateur, la documentation et des traductions. Voici quelques points forts:

- `Android`: Correction d'une régression d'événement de double pression ([GH-35701](https://github.com/godotengine/godot/pull/35701)).
- `Android`: Correction des entrées du clavier virtuel LineEdit ([GH-35785](https://github.com/godotengine/godot/pull/35785)).
- `Bullet`: Correction de la détection de la forme concave dans Area ([GH-33690](https://github.com/godotengine/godot/pull/33690)).
- `Camera2D`: Correction de l'utilisation inversée de l'offset_v de Camera2D ([GH-36689](https://github.com/godotengine/godot/pull/36689)).
- `Débogueur`: Correction de l'inspection des objets libérés en cas de crash ([GH-36532](https://github.com/godotengine/godot/pull/36532)).
- `Expression`: Correction de l'analyse des entiers en 32 bits ([GH-36529](https://github.com/godotengine/godot/pull/36529)).
- `HTML5`: Correction de `EMWSClient::get_connection_status()` ([GH-36250](https://github.com/godotengine/godot/pull/36250)).
- `HTML5`: Correction du support des événements tactiles avec Emscripten 1.39.5+ ([GH-36557](https://github.com/godotengine/godot/pull/36557)).
- `macOS`: Correction du rappel de déconnexion de la manette de jeu sur macOS Catalina ([GH-36845](https://github.com/godotengine/godot/pull/36845)).
- `Particules`: Correction d'un comportement indéfini avec atan dans GPU Particles ([GH-36031](https://github.com/godotengine/godot/pull/36031)).
- `Skin`: Ajout de la prise en charge des bindings nommés ([GH-36415](https://github.com/godotengine/godot/pull/36415)).
- `TileSet`: Cacher les propriétés du TileSet à l'inspecteur, correction du crash de l'OOM sur les énormes tilesets ([GH-35908](https://github.com/godotengine/godot/pull/35908)).
- `Vidéo`: Correction d'un bogue de lecture WebM après la correction de la latence de l'AudioServer ([GH-35993](https://github.com/godotengine/godot/pull/35993)).
- `Windows`: Correction d'une régression UPNP ([GH-35953](https://github.com/godotengine/godot/pull/35953)).
- `Windows`: Désactivation de la réutilisation des adresses NetSocket ([GH-36321](https://github.com/godotengine/godot/pull/36321)).
- Mises à jour de la documentation de l'API.
- Mises à jour de la traduction de l'éditeur.
- Et bien d'autres corrections de bogues et améliorations de l'ergonomie tout autour du moteur !


Vous pouvez consulter [la liste complète des changements sur GitHub](https://github.com/godotengine/godot/compare/3.2-stable...3.2.1-stable).

Certaines nouvelles fonctionnalités/améliorations sont attendues pour les prochaines versions de 3.2.x, cependant pour la version 3.2.1 nous nous concentrons sur la stabilité et les régressions.

## Rapports de bugs

À l'heure actuelle, il n'y a aucun problème d'incompatibilité avec la version 3.2. Nous encourageons tous les utilsaiteurs a utiliser la version 3.2.1.

Si, après avoir migré vos projets avec la version 3.2.1 vous constatez des problèmes, s'il vous plait [remplissez un ticket sur GitHub](https://github.com/godotengine/godot/issues).

[^1]: L'illustration est tirée de [Fist of the Forgotten](https://store.steampowered.com/app/1105470/Fist_of_the_Forgotten/), un jeu de plates-formes de combat de précision axé sur le mouvement fluide avec de superbes silhouettes en 3D, développé par le studio [Lone Wulf](https://twitter.com/jitspoe). [Ajoutez le a votre liste de souhaits sur Steam](https://store.steampowered.com/app/1105470/Fist_of_the_Forgotten/), et suivez son développement sur son [site web](https://fistoftheforgotten.com/), [Twitter](https://twitter.com/fistforgotten/), et les directs de développement de [@jitspoe sur Twitch](https://www.twitch.tv/jitspoe/).