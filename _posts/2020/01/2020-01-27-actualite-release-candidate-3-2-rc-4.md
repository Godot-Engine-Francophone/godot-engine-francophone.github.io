---
title: "Release candidate 4: Godot 3.2"
layout: actualite
description: >-
  Nous n'avons jamais été aussi proche de pouvoir publier la version 3.2 stable. La candidate 4 est la afin de valider les derniers changements faits durant le week-end, et avant de publier une nouvelle version, qui sera (probablement) la dernière release candidate. Si aucune regression critique n'est trouvée dans cette version, alors la 3.2 devrait être presque identique a celle-ci.
categories: actualite
by: Rémi Verschelde 
translated: Xavier 'Binogure'
tags:
- 3.2
- Release candidate
original_url: https://godotengine.org/article/release-candidate-3-2-rc-4
icon: code-branch
---
Nous n'avons jamais été aussi proche de pouvoir publier la version 3.2 stable. La candidate 4 est la afin de valider les derniers changements faits durant le week-end, et avant de publier une nouvelle version, qui sera (probablement) la dernière release candidate. Si aucune regression critique n'est trouvée dans cette version, alors la 3.2 devrait être presque identique a celle-ci.

Durant le seul mois de Janvier, plus de 350 correctifs auront été publié. Ce qui fait de la version 3.2 une bonne version.

Les changements notables depuis la candidate 3:
- Editeur: Correction de la mise à jour de l'`Inspecteur` lorsqu'un noeud est renommé, ce qui fermait l'éditeur de shader accompagné d'erreurs ([GH-35526](https://github.com/godotengine/godot/pull/35526)).
- GLES2: Correction du `SoftBody` qui apparaissait toujours au centre des mondes ([GH-35495](https://github.com/godotengine/godot/pull/35495)).
- GLES3: Ajout d'un paramètre au projet pour régler la taille maximale d'irradiation ([GH-35561](https://github.com/godotengine/godot/pull/35561)).
- Mono: Correction du `préprocesseur C#` qui bouclait sans s'arrêter et qui ne comprenait pas le `#if` ([GH-35524](https://github.com/godotengine/godot/pull/35524)).
- Mono: Correction d'un crach potentiel de `_update_exports` a cause des `References` qui pourraient être nulles([GH-35527](https://github.com/godotengine/godot/pull/35527)).
- `PathFollow`: Correction d'une régression avec les boucles qui ne commenceraient pas a 0 ([GH-35515](https://github.com/godotengine/godot/pull/35515)).
- Modules tiers: `mbedtls`: Mise à jour de la version en amont a `2.16.4` (Patch de sécurité) ([GH-35596](https://github.com/godotengine/godot/pull/35596)).
- Mise à jour de la documentation et des traductions

Pour ceux qui suivent les versions de développements de près, il y a eu [63 changements](https://github.com/godotengine/godot/compare/8a7a216be5dfbd8e2b7f32c39a92bbecec9306ca...9daaa12bae0cd3637da8f401333b3bc522aee66e) depuis la 3.2 RC 3 de Vendredi dernier. Cette version est construite à partir de [9daaa12](https://github.com/godotengine/godot/commit/9daaa12bae0cd3637da8f401333b3bc522aee66e).

## Avertissement
**IMPORTANT: Il s'agit d'une version [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), cela signifie qu'elle n'est pas utilisable pour la production ni pour les revues de pressed car cela ne reflète pas ce que la version `3.2` de Godot sera.**

Des corrections vont encore être apportées avant la version finale, et nous aurons besoin de vos rapports de bogue détaillés pour comprendre les problèmes et les corriger.

## Les fonctionnalités
Les notes de version ne sont pas encore écrites, mais vous pouvez vous référer au [journal des modifications détaillé](https://github.com/godotengine/godot/blob/master/CHANGELOG.md) que notre contributeur Hugo Locurcio conteinue de maintenir.

Nos blogs de développement passés devraient également vous donner une idée des principaux points forts de la prochaine version. Notez que le port de Vulkan décrit dans les derniers messages de Juan est développé dans une branche séparée pour Godot `4.0`, et n'est pas inclus dans cette version.

Les rédacteurs de la documentation travaillent d'arrache-pied pour tenir la documentation à jour, et la [dernière branche](https://docs.godotengine.org/fr/latest/) devrait déjà inclure des détails sur la majorité des nouvelles fonctionnalités de la `3.2`.

Pour les changements depuis la dernière version alpha, voir la [liste des livraisons](https://github.com/godotengine/godot/compare/8a7a216be5dfbd8e2b7f32c39a92bbecec9306ca...9daaa12bae0cd3637da8f401333b3bc522aee66e).

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de téléchargement officielle pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2/rc4/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2/rc4/mono/) (support C# + tout ce qui précède). Vous devez avoir MSbuild installé pour utiliser la compilation Mono. Les parties pertinentes de Mono 6.6.0 Preview sont incluses dans cette version.

**IMPORTANT:** Faites des sauvegardes de vos projets Godot 3.1 avant de les ouvrir dans toute version de développement `3.2`.

## Rapports de bugs
Il y a encore des [centaines de rapports de bogues](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+milestone%3A3.2+label%3Abug+) ouverts pour le jalon `3.2`, ce qui signifie que nous sommes déjà au courant de nombreux bogues. Cependant, bon nombre de ces problèmes ne sont peut-être pas critiques pour la version `3.2`, et vu que nous avons atteint le gel de la version `3.2`, ils seront réexaminés à nouveau puis certains seront réglés ultérieurement.

En tant que testeur, vous êtes encouragé à ouvrir les rapports de bogue si vous rencontrez des problèmes avec la version `3.2` beta. Veuillez d'abord vérifier si le problème que vous avez rencontré n'existe [pas déjà](https://github.com/godotengine/godot/issues), en utilisant la fonction de recherche avec les mots-clés pertinents, pour vous assurer que le bogue que vous rencontrez n'est pas déjà connu.
