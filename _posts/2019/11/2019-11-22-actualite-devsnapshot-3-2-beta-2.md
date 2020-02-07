---
title: "Instantané: Godot 3.2 beta 2"
layout: actualite
description: >-
  Après deux semaines de correctifs depuis le dernier instantané, voici Godot 3.2 beta 2.
  Parmis les changements notables il y a l'ajout de l'export en WebAssembly pour les versions Mono ainsi que
  le support de C# 8 via Mono 6.6.0.
categories: actualite
by: Rémi Verschelde 
translated: Xavier "Binogure"
tags:
- Snapshot
- 3.2
- Beta
original_url: https://godotengine.org/article/dev-snapshot-godot-3-2-beta-2
icon: code-branch
---
Il y a deux semaines, nous avons publié une première version bêta pour Godot `3.2`, et de nombreux correctifs et améliorations ont été fusionnées entre-temps. C'est l'heure de **Godot 3.2 beta 2**!

Le changement le plus important depuis la dernière beta concerne le **support de WebAssembly pour les exportations Mono**. Ce qui signifie que les projets C# peuvent maintenant fonctionner dans un navigateur Web! [Voir le rapport d'Ignacio](/actualite-csharpprogressreport/) pour les détails. J'ai passé la plus grande partie de la semaine dernière à travailler sur le système de compilation pour pouvoir publier des modèles Wasm pour Mono. Gràce à l'aide inestimable d'Ignacio, j'ai pu résoudre les problèmes avec Emscripten et Mono. C'est pourquoi nous pouvons vous offrir cette version beta de Godot qui contient les modèles d'exportation Mono pour Wasm.

Nous avons également changé la version de Mono et nous utilisons maintenant la version 6.6.0 Preview. Cette dernière prend en charge le C# 8 ainsi que de nombreuses autres améliorations. Bien que la version 6.6.0 n'ait pas encore été marquée comme stable, cela devrait arriver sous peu, surtout que nous avions besoin de la dernière version de Mono pour pouvoir supporter WebAssembly comme il se doit.

Notez que le support de compilation AOT pour C# n'est pas inclus dans ces builds. Ceci sera ajouté dans les mois à venir et devrait être livré dans une mise à jour de maintenance 3.2.x une fois qu'il aura été bien testé.

[313 changements code](https://github.com/godotengine/godot/compare/077b5f6c2c06bb2c0af525ee25f87e0db719f9d2...b7ea22c5d203da1b592a743a4c893de25cd34408) ont été faits depuis 3.2 beta 1. Cette version est compilée à partir du changement de code [b7ea22c](https://github.com/godotengine/godot/commit/b7ea22c5d203da1b592a743a4c893de25cd34408).

## Avertissement
**IMPORTANT: Il s'agit d'une version [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), cela signifie qu'elle n'est pas utilisable pour la production ni pour les revues de pressed car cela ne reflète pas ce que la version `3.2` de Godot sera.**

Des corrections vont encore être apportées avant la version finale, et nous aurons besoin de vos rapports de bogue détaillés pour comprendre les problèmes et les corriger.

## Les fonctionnalités
Les notes de version ne sont pas encore écrites, mais vous pouvez vous référer au [journal des modifications détaillé](https://gist.github.com/Calinou/49aefe52ce8f67ffa3f743932123d14f) que notre contributeur Hugo Locurcio conteinue de maintenir.

Nos blogs de développement passés devraient également vous donner une idée des principaux points forts de la prochaine version. Notez que le port de Vulkan décrit dans les derniers messages de Juan est développé dans une branche séparée pour Godot `4.0`, et n'est pas inclus dans cette version.

Les rédacteurs de la documentation travaillent d'arrache-pied pour tenir la documentation à jour, et la [dernière branche](https://docs.godotengine.org/fr/latest/) devrait déjà inclure des détails sur la majorité des nouvelles fonctionnalités de la `3.2`.

Pour les changements depuis la dernière version alpha, voir la [liste des livraisons](https://github.com/godotengine/godot/compare/077b5f6c2c06bb2c0af525ee25f87e0db719f9d2...b7ea22c5d203da1b592a743a4c893de25cd34408).

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de téléchargement officielle pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2/beta2/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2/beta2/mono/) (support C# + tout ce qui précède). Vous devez avoir MSbuild installé pour utiliser la compilation Mono. Les parties pertinentes de Mono 6.6.0 Preview sont incluses dans cette version.

**IMPORTANT:** Faites des sauvegardes de vos projets Godot 3.1 avant de les ouvrir dans toute version de développement `3.2`.

Note:
- En raison de problèmes de compilation, la beta 2 ne fournit pas les modèles d'exportation pour UWP. Ça sera ajouté ultérieurement.

## Rapports de bugs
Il y a encore des [centaines de rapports de bogues](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+milestone%3A3.2+label%3Abug+) ouverts pour le jalon `3.2`, ce qui signifie que nous sommes déjà au courant de nombreux bogues. Cependant, bon nombre de ces problèmes ne sont peut-être pas critiques pour la version `3.2`, et vu que nous avons atteint le gel de la version `3.2`, ils seront réexaminés à nouveau puis certains seront réglés ultérieurement.

En tant que testeur, vous êtes encouragé à ouvrir les rapports de bogue si vous rencontrez des problèmes avec la version `3.2` beta. Veuillez d'abord vérifier si le problème que vous avez rencontré n'existe pas déjà, en utilisant la fonction de recherche avec les mots-clés pertinents, pour vous assurer que le bogue que vous rencontrez n'est pas déjà connu.
