---
title: "Instantané: Godot 3.2 beta 6"
layout: actualite
description: >-
  Après une semaine très chargée avec de nombreux correctifs (ainsi que l'ajout de plusieurs
  améliorations mineures sans risque et une document mise à niveau), voici sans plus attendre Godot 3.2 beta 6!
categories: actualite
by: Rémi Verschelde 
translated: Xavier "Binogure"
tags:
- Snapshot
- 3.2
- Beta
original_url: https://godotengine.org/article/dev-snapshot-godot-3-2-beta-6
icon: code-branch
---

![Fantastic Creatures](https://godotengine.org/storage/app/uploads/public/5e1/9ae/32b/5e19ae32b8b87812018580.png){: .center-image }

Après une semaine très chargée avec de nombreux correctifs (ainsi que l'ajout de plusieurs améliorations mineures sans risque et une document mise à niveau), voici sans plus attendre **Godot 3.2 beta 6**!

Comme mentionné dans une [brève précédente](https://godotengine.org/article/dev-snapshot-godot-3-2-beta-5), la phase de release candidate est on ne peut plus proche, j'ai même hésité à la nommer ainsi. Cependant, au vu des nombreux changements, j'ai préféré rester en phase de beta mais si tout va bien la RC 1 (release candidate 1) devrait arriver dans les prochains jours.

*Note: Les crédits pour l'image sont en bas de page*

Cette version contient [219 changements](https://github.com/godotengine/godot/compare/399e53e8c328f47bc116b743cd19c66c83e1122b...0ab1726b43dbe81c96d208a41a582435b76fd058) depuis la 3.2 beta 5. Cette version est construite à partir de [0ab1726](https://github.com/godotengine/godot/commit/0ab1726b43dbe81c96d208a41a582435b76fd058)

## Avertissement
**IMPORTANT: Il s'agit d'une version [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), cela signifie qu'elle n'est pas utilisable pour la production ni pour les revues de pressed car cela ne reflète pas ce que la version `3.2` de Godot sera.**

Des corrections vont encore être apportées avant la version finale, et nous aurons besoin de vos rapports de bogue détaillés pour comprendre les problèmes et les corriger.

## Les fonctionnalités
Les notes de version ne sont pas encore écrites, mais vous pouvez vous référer au [journal des modifications détaillé](https://gist.github.com/Calinou/49aefe52ce8f67ffa3f743932123d14f) que notre contributeur Hugo Locurcio conteinue de maintenir.

Nos blogs de développement passés devraient également vous donner une idée des principaux points forts de la prochaine version. Notez que le port de Vulkan décrit dans les derniers messages de Juan est développé dans une branche séparée pour Godot `4.0`, et n'est pas inclus dans cette version.

Les rédacteurs de la documentation travaillent d'arrache-pied pour tenir la documentation à jour, et la [dernière branche](https://docs.godotengine.org/fr/latest/) devrait déjà inclure des détails sur la majorité des nouvelles fonctionnalités de la `3.2`.

Pour les changements depuis la dernière version alpha, voir la [liste des livraisons](https://github.com/godotengine/godot/compare/399e53e8c328f47bc116b743cd19c66c83e1122b...0ab1726b43dbe81c96d208a41a582435b76fd058).

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de téléchargement officielle pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2/beta6/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2/beta6/mono/) (support C# + tout ce qui précède). Vous devez avoir MSbuild installé pour utiliser la compilation Mono. Les parties pertinentes de Mono 6.6.0 Preview sont incluses dans cette version.

**IMPORTANT:** Faites des sauvegardes de vos projets Godot 3.1 avant de les ouvrir dans toute version de développement `3.2`.

## Rapports de bugs
Il y a encore des [centaines de rapports de bogues](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+milestone%3A3.2+label%3Abug+) ouverts pour le jalon `3.2`, ce qui signifie que nous sommes déjà au courant de nombreux bogues. Cependant, bon nombre de ces problèmes ne sont peut-être pas critiques pour la version `3.2`, et vu que nous avons atteint le gel de la version `3.2`, ils seront réexaminés à nouveau puis certains seront réglés ultérieurement.

En tant que testeur, vous êtes encouragé à ouvrir les rapports de bogue si vous rencontrez des problèmes avec la version `3.2` beta. Veuillez d'abord vérifier si le problème que vous avez rencontré n'existe pas déjà, en utilisant la fonction de recherche avec les mots-clés pertinents, pour vous assurer que le bogue que vous rencontrez n'est pas déjà connu.

----

*L'illustration est tirée de [Sealed Bite](https://securas.itch.io/sealedbite), un magnifique graphisme pixel à la metroidvania par [Securas](https://twitter.com/Securas2010) avec la musique composée par [Wandard](https://soundcloud.com/fabienmerten). Il s'agit du jeu qui a gagné le [Github Game Off 2019](https://itch.io/jam/game-off-2019) (Gamejam organisée par github).
Allez voir ça sur [http://itch.io](https://securas.itch.io/sealedbite), vous pouvez même jouer avec le [code source du jeu qui est disponible sur Github](https://github.com/securas/SealedBite). N'oubliez pas de suivre [Securas sur Twitter](https://twitter.com/Securas2010), qui est un des plus profilique et talentueux Jammers de Godot.*