---
title: "Release candidate 3: Godot 3.2"
layout: actualite
description: >-
  En attendant Godot 3.2 qui ne devrait plus tarder à voir le jour, nous sommes heureux de vous annoncer cette troisième Release Candidate.
  Nous espérons que cela va encourager les tests de ce qui va devenir Godot 3.2 stable dans les jours à venir.
categories: actualite
by: Rémi Verschelde 
translated: Xavier Sellier
tags:
- 3.2
- Release candidate
original_url: https://godotengine.org/article/release-candidate-godot-3-2-rc-3
icon: code-branch
---

En attendant Godot 3.2 qui ne devrait plus tarder à voir le jour, nous sommes heureux de vous annoncer cette troisième Release Candidate.
Nous espérons que cela va encourager les tests de ce qui va devenir Godot 3.2 stable dans les jours à venir.

La [seconde candidate](https://www.godot-francophone.org/actualite-release-candidate-3-2-rc-2/) pour la version stable qui a été publiée Lundi dernier a reçu un bon accueil. Pas de regression en vu et d'importants correstifs ont été ajouté depuis. Cette troisième version va nous permettre de valider ces correctifs et nous pourrons ainsi publier une version 3.2 stable avec confiance.

Voici les changements notables depuis la seconde candidate:
- Android: Le clavier virtuel respecte maintenant la longueur maximale des LineEdit ([GH-35438](https://github.com/godotengine/godot/pull/35438)).
- Noyau/Editeur: Corrections de plusieurs fuites mémoires
- Éditeur: Correction de l'import des AtlasTexture contenant des pixels a moitié transparent ([GH-35363](https://github.com/godotengine/godot/pull/35363)).
- GLES3: Correction de la valeur invalide GL_TEXTURE_MAG_FILTER (typo introduite par la RC 2) ([GH-35437](https://github.com/godotengine/godot/pull/35437)).
- Linux: Corrections des évènements claviers qui n'étaient pas toujours émis lorsqu'il y avait des pertes d'image par seconde ([GH-35440](https://github.com/godotengine/godot/pull/35440)).
- Mono: Utilisation de net47 par défaut pour les nouveaux projets ([GH-35473](https://github.com/godotengine/godot/pull/35473)).
- Mono: Correction des crashs lors de la jointure des threads pour une application multi-threadé (via un patch des [sources de Mono](https://github.com/godotengine/godot-mono-builds/commit/7e3e21defce3120f4ef4cca6e6838dded15fd13c)) ([GH-33735](https://github.com/godotengine/godot/issues/33735)).
- Mono: Divers correctifs ([GH-35372](https://github.com/godotengine/godot/pull/35372), [GH-35407](https://github.com/godotengine/godot/pull/35407), [GH-35472](https://github.com/godotengine/godot/pull/35472), [GH-35478](https://github.com/godotengine/godot/pull/35478)).
- La classe `Object`: S'assurer qu'un objet n'est pas en train d'émettre lorsqu'on l'efface ([GH-35423](https://github.com/godotengine/godot/pull/35423)).
- Moteur de rendu: Correction du culling des ombres pour une caméra orthonormé et une valeur invalide `VIEWPORT_SIZE` pour les shaders prédéfinit ([GH-35406](https://github.com/godotengine/godot/pull/35406)).
- `Tween`: Correction de `Tween:start` qui a des mises à jour en attente ([GH-35452](https://github.com/godotengine/godot/pull/35452)).
- Mise à jour de la documentation et des traductions

Pour ceux qui suivent les versions de développements de près, il y a eu [118 changements](https://github.com/godotengine/godot/compare/adb6734b491091663d9159efe6e5a5fa9ff5202f...8a7a216be5dfbd8e2b7f32c39a92bbecec9306ca) depuis la 3.2 RC 2. Cette version est construite à partir de [8a7a216](https://github.com/godotengine/godot/commit/8a7a216be5dfbd8e2b7f32c39a92bbecec9306ca).

## Avertissement
**IMPORTANT: Il s'agit d'une version [beta](https://en.wikipedia.org/wiki/Software_release_life_cycle#Beta), cela signifie qu'elle n'est pas utilisable pour la production ni pour les revues de pressed car cela ne reflète pas ce que la version `3.2` de Godot sera.**

Des corrections vont encore être apportées avant la version finale, et nous aurons besoin de vos rapports de bogue détaillés pour comprendre les problèmes et les corriger.

## Les fonctionnalités
Les notes de version ne sont pas encore écrites, mais vous pouvez vous référer au [journal des modifications détaillé](https://github.com/godotengine/godot/blob/master/CHANGELOG.md) que notre contributeur Hugo Locurcio conteinue de maintenir.

Nos blogs de développement passés devraient également vous donner une idée des principaux points forts de la prochaine version. Notez que le port de Vulkan décrit dans les derniers messages de Juan est développé dans une branche séparée pour Godot `4.0`, et n'est pas inclus dans cette version.

Les rédacteurs de la documentation travaillent d'arrache-pied pour tenir la documentation à jour, et la [dernière branche](https://docs.godotengine.org/fr/latest/) devrait déjà inclure des détails sur la majorité des nouvelles fonctionnalités de la `3.2`.

Pour les changements depuis la dernière version alpha, voir la [liste des livraisons](https://github.com/godotengine/godot/compare/adb6734b491091663d9159efe6e5a5fa9ff5202f...8a7a216be5dfbd8e2b7f32c39a92bbecec9306ca).

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de téléchargement officielle pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2/rc3/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2/rc3/mono/) (support C# + tout ce qui précède). Vous devez avoir MSbuild installé pour utiliser la compilation Mono. Les parties pertinentes de Mono 6.6.0 Preview sont incluses dans cette version.

**IMPORTANT:** Faites des sauvegardes de vos projets Godot 3.1 avant de les ouvrir dans toute version de développement `3.2`.

## Rapports de bugs
Il y a encore des [centaines de rapports de bogues](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+milestone%3A3.2+label%3Abug+) ouverts pour le jalon `3.2`, ce qui signifie que nous sommes déjà au courant de nombreux bogues. Cependant, bon nombre de ces problèmes ne sont peut-être pas critiques pour la version `3.2`, et vu que nous avons atteint le gel de la version `3.2`, ils seront réexaminés à nouveau puis certains seront réglés ultérieurement.

En tant que testeur, vous êtes encouragé à ouvrir les rapports de bogue si vous rencontrez des problèmes avec la version `3.2` beta. Veuillez d'abord vérifier si le problème que vous avez rencontré n'existe [pas déjà](https://github.com/godotengine/godot/issues), en utilisant la fonction de recherche avec les mots-clés pertinents, pour vous assurer que le bogue que vous rencontrez n'est pas déjà connu.
