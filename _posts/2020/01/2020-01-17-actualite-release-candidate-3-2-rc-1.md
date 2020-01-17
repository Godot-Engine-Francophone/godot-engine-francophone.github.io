---
title: "Release candidate 1: Godot 3.2"
layout: actualite
description: >-
  Et voilà; Godot 3.2 est bientôt prêt. Nous sommes heureux de vous annoncer cette première Release Candidate. 
  Nous espérons que cela va encourager les tests de ce qui va devenir Godot 3.2 dans les jours à venirs.

categories: actualite
by: Rémi Verschelde 
translated: Xavier Sellier
tags:
- 3.2
- Release candidate
original_url: https://godotengine.org/article/release-candidate-godot-3-2-rc-1
icon: code-branch
---

Et voilà; Godot 3.2 est bientôt prêt. Nous sommes heureux de vous annoncer cette première Release Candidate. 
Nous espérons que cela va encourager les tests de ce qui va devenir Godot 3.2 dans les jours à venirs.

## Petit deviendra grand

Godot 3.2 devait être une petite mise à jour, apportant avec elle son lot habituel d'améliorations par rapport à la version précédente sans pour autant apporter de changements majeurs. C'est la prochaine version, la 4.0 de Godot Engine, sur laquelle nous travaillons qui apportera le support de Vulkan, de nouvelles fonctionnalités de rendus et une refonte du moteur. Nous voulions la publier vers mi-2019, cependant, comme toujours dans le développement logiciel, guidé par la communauté du libre, nous avons été un peu trop optimiste.

Cependant, cette rallonge de temps a été bénéfique pour la version 3.2. Elle est livrée avec une tonne de nouvelles et importantes fonctionnalités ainsi qu'un nombre conséquent de correctifs - plus de 6000 changements de code apportés par près de 450 contributeurs! Avant de basculer sur la branche `vulkan`, Juan a pris le temps de développer quelques superbes fonctionnalités, et le reste a été fait par les contributeurs qui ont travaillés sans relâche pour implémenter toutes sortes de choses et pour corriger quelques 2000 bugs. Godot 3.2 sera bien plus mature que 3.1 sur tous les aspects, et ce sera une excellente version pour les developpeurs qui souhaitent développer des jeux avec la version 3.x (dans le cas ou porter les jeux à la version 4.0 s'avère compliqué)

Bon, je vous tiens en haleine, mais j'ai pas encore la lsite des changements décrivant les plus importants pour le moment - avec un peu de chance la semaine qui vient me donnera un peu de temps libre pour faire un brouillon pour la version finale.

Cette version contient [187 changements](https://github.com/godotengine/godot/compare/0ab1726b43dbe81c96d208a41a582435b76fd058...ba7aca4199019529dec60555a5ff005f6692d281) depuis la 3.2 beta 6. Cette version est construite à partir de [0ab1726](https://github.com/godotengine/godot/commit/ba7aca4199019529dec60555a5ff005f6692d281)

## Avertissement
**IMPORTANT: Il s'agit d'une version [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), cela signifie qu'elle n'est pas utilisable pour la production ni pour les revues de pressed car cela ne reflète pas ce que la version `3.2` de Godot sera.**

Des corrections vont encore être apportées avant la version finale, et nous aurons besoin de vos rapports de bogue détaillés pour comprendre les problèmes et les corriger.

## Les fonctionnalités
Les notes de version ne sont pas encore écrites, mais vous pouvez vous référer au [journal des modifications détaillé](https://gist.github.com/Calinou/49aefe52ce8f67ffa3f743932123d14f) que notre contributeur Hugo Locurcio conteinue de maintenir.

Nos blogs de développement passés devraient également vous donner une idée des principaux points forts de la prochaine version. Notez que le port de Vulkan décrit dans les derniers messages de Juan est développé dans une branche séparée pour Godot `4.0`, et n'est pas inclus dans cette version.

Les rédacteurs de la documentation travaillent d'arrache-pied pour tenir la documentation à jour, et la [dernière branche](https://docs.godotengine.org/fr/latest/) devrait déjà inclure des détails sur la majorité des nouvelles fonctionnalités de la `3.2`.

Pour les changements depuis la dernière version alpha, voir la [liste des livraisons](https://github.com/godotengine/godot/compare/0ab1726b43dbe81c96d208a41a582435b76fd058...ba7aca4199019529dec60555a5ff005f6692d281).

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de téléchargement officielle pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2/rc1/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2/rc1/mono/) (support C# + tout ce qui précède). Vous devez avoir MSbuild installé pour utiliser la compilation Mono. Les parties pertinentes de Mono 6.6.0 Preview sont incluses dans cette version.

**IMPORTANT:** Faites des sauvegardes de vos projets Godot 3.1 avant de les ouvrir dans toute version de développement `3.2`.

## Rapports de bugs
Il y a encore des [centaines de rapports de bogues](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+milestone%3A3.2+label%3Abug+) ouverts pour le jalon `3.2`, ce qui signifie que nous sommes déjà au courant de nombreux bogues. Cependant, bon nombre de ces problèmes ne sont peut-être pas critiques pour la version `3.2`, et vu que nous avons atteint le gel de la version `3.2`, ils seront réexaminés à nouveau puis certains seront réglés ultérieurement.

En tant que testeur, vous êtes encouragé à ouvrir les rapports de bogue si vous rencontrez des problèmes avec la version `3.2` beta. Veuillez d'abord vérifier si le problème que vous avez rencontré n'existe pas déjà, en utilisant la fonction de recherche avec les mots-clés pertinents, pour vous assurer que le bogue que vous rencontrez n'est pas déjà connu.
