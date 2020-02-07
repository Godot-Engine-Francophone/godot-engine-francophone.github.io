---
title: "Release candidate 2: Godot 3.2"
layout: actualite
description: >-
  Enfin; Godot 3.2 sera bientôt prêt. Nous sommes heureux de vous annoncer cette seconde Release Candidate. 
  Nous espérons que cela va encourager les tests de ce qui va devenir Godot 3.2 stable dans les jours à venir.
categories: actualite
by: Rémi Verschelde 
translated: Xavier "Binogure"
tags:
- 3.2
- Release candidate
original_url: https://godotengine.org/article/release-candidate-godot-3-2-rc-2
icon: code-branch
---

Enfin; Godot 3.2 sera bientôt prêt. Nous sommes heureux de vous annoncer cette seconde Release Candidate. 
Nous espérons que cela va encourager les tests de ce qui va devenir Godot 3.2 stable dans les jours à venir.

La [première candidate](http://godot-francophone.org/actualite-release-candidate-3-2-rc-1/) pour la version stable qui a été publiée Vendredi dernier s'est avérée problématique pour certains utilisateurs qui utilisaient le moteur de rendu GLES3. Cela était dû aux calculs faits pour la carte d'irradiation (_irradiance map_ en anglais, qui constitue une collections de points en 3D dans l'espace permet de calculer l'illumination indirecte de ces points) qui bloquaient le processeur de la carte graphique. Ce problème a été résolu en réduisant la complexité des calculs tout en améliorant légèrement la qualité.

Voici les changements notables depuis la première candidate:
- Coeur: Correction de la portabilité ClassDB API pour l'API de calcul de hashage ([GH-35326](https://github.com/godotengine/godot/pull/35326)) (correction des faux positifs "Core API hash mismatch" du compilateur C# sur la version de debug).
- Editeur: Accélération du temps de démarrage gràce à l'optimisation de la génération de l'éditeur de thème.
- GLES3: Réduction de la complexité de calcul de la carte d'irradiation ([GH-35302](https://github.com/godotengine/godot/pull/35302)).
- HTML5: Correction du support de Emscripten 1.39.5+ ([GH-35237](https://github.com/godotengine/godot/pull/35237), [GH-35256](https://github.com/godotengine/godot/pull/35256)).
- iOS: Correction d'un crash lors de la fermeture de l'application ([GH-35265](https://github.com/godotengine/godot/pull/35265)).

Pour ceux qui suivent les versions de développements de près, il y a eu [61 changements](https://github.com/godotengine/godot/compare/ba7aca4199019529dec60555a5ff005f6692d281...adb6734b491091663d9159efe6e5a5fa9ff5202f) depuis la 3.2 RC 1. Cette version est construite à partir de [ba7aca4](https://github.com/godotengine/godot/commit/adb6734b491091663d9159efe6e5a5fa9ff5202f).

## Avertissement
**IMPORTANT: Il s'agit d'une version [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), cela signifie qu'elle n'est pas utilisable pour la production ni pour les revues de pressed car cela ne reflète pas ce que la version `3.2` de Godot sera.**

Des corrections vont encore être apportées avant la version finale, et nous aurons besoin de vos rapports de bogue détaillés pour comprendre les problèmes et les corriger.

## Les fonctionnalités
Les notes de version ne sont pas encore écrites, mais vous pouvez vous référer au [journal des modifications détaillé](https://gist.github.com/Calinou/49aefe52ce8f67ffa3f743932123d14f) que notre contributeur Hugo Locurcio conteinue de maintenir.

Nos blogs de développement passés devraient également vous donner une idée des principaux points forts de la prochaine version. Notez que le port de Vulkan décrit dans les derniers messages de Juan est développé dans une branche séparée pour Godot `4.0`, et n'est pas inclus dans cette version.

Les rédacteurs de la documentation travaillent d'arrache-pied pour tenir la documentation à jour, et la [dernière branche](https://docs.godotengine.org/fr/latest/) devrait déjà inclure des détails sur la majorité des nouvelles fonctionnalités de la `3.2`.

Pour les changements depuis la dernière version alpha, voir la [liste des livraisons](https://github.com/godotengine/godot/compare/ba7aca4199019529dec60555a5ff005f6692d281...adb6734b491091663d9159efe6e5a5fa9ff5202f).

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de téléchargement officielle pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2/rc2/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2/rc2/mono) (support C# + tout ce qui précède). Vous devez avoir MSbuild installé pour utiliser la compilation Mono. Les parties pertinentes de Mono 6.6.0 Preview sont incluses dans cette version.

**IMPORTANT:** Faites des sauvegardes de vos projets Godot 3.1 avant de les ouvrir dans toute version de développement `3.2`.

## Rapports de bugs
Il y a encore des [centaines de rapports de bogues](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+milestone%3A3.2+label%3Abug+) ouverts pour le jalon `3.2`, ce qui signifie que nous sommes déjà au courant de nombreux bogues. Cependant, bon nombre de ces problèmes ne sont peut-être pas critiques pour la version `3.2`, et vu que nous avons atteint le gel de la version `3.2`, ils seront réexaminés à nouveau puis certains seront réglés ultérieurement.

En tant que testeur, vous êtes encouragé à ouvrir les rapports de bogue si vous rencontrez des problèmes avec la version `3.2` beta. Veuillez d'abord vérifier si le problème que vous avez rencontré n'existe [pas déjà](https://github.com/godotengine/godot/issues), en utilisant la fonction de recherche avec les mots-clés pertinents, pour vous assurer que le bogue que vous rencontrez n'est pas déjà connu.
