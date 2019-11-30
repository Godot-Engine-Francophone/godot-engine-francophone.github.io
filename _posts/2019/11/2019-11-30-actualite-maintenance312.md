---
title: Version de maintenance 3.1.2
layout: actualite
description: >-
  Alors que la version 3.2 est entrée en phase de beta, nous relachons une nouvelle version de maintenance pour Godot Engine 3.1.
  Avec ses 400 changements de code, qui sont tout autant de correctifs que d'améliorations, il était temps de relacher la version 3.1.2.
categories: actualite
by: Rémi Verschelde
translated: Xavier Sellier
tags:
- 3.1.2
- Stable
original_url: https://godotengine.org/article/maintenance-release-godot-3-1-2
icon: "code-branch"
---

![Fantastic Creatures](https://godotengine.org/storage/app/uploads/public/5de/1a4/91b/5de1a491b9c7c743318901.jpg){: .center-image }

Alors que la version 3.2 est entrée [en phase de beta](http://www.godot-francophone.org/actualite-devsnapshot-3-2-beta-2/), nous relachons une nouvelle version de maintenance pour Godot Engine 3.1. Avec ses 400 changements de code, qui sont tout autant de correctifs que d'améliorations, il était temps de relacher la version 3.1.2.

Vous pouvez déjà [telécharger la version 3.1.2 de Godot](https://godotengine.org/download) avant de lire la liste des changements de cette mise à jour. Cette mise à jour est aussi disponible sur [Steam](https://store.steampowered.com/app/404790/Godot_Engine/) et [itch.io](https://godotengine.itch.io/godot)

## Les branches de version
Avant d'aller vérifier tous les changements pour cette version, une petite clarification est de mise pour ce qui concerne
les branches de versions.

Godot Engine 3.2 est la prochaine version stable. Actuellement en beta, elle devrait devenir stable dans les semaines a venir.
La plupart des articles publiés depuis la branche `3.1` couvrent aussi les fonctionnalités qui ont toutes été intégrées à la branche `master` et seront, par conséquent,
dans la branche `3.2` de Godot engine.

Dans le mêmte temps nous travaillons forts pour pouvoir supporter Vulkan l'année prochaine. Nous allons incrémenter le nombre *majeur* de la version de Godot Engine passant ainsi de *3* à *4*. Ce changement signifie qu'il y aura des problèmes de rétro-compatibilité entre les version 4 et 3 de Godot Engine.

Présentement, nous continuons de maintenir les branches `3.1` (dernière en date 3.1.1), `3.0` (dernière en date 3.0.6) et `2.1` (dernière en date 2.1.6). Chacunes de ces versions possèdent une branche git différente, où nous pouvons intégrer les changements de code depuis la branche `master` pour nos futurs versions de maintenance. 
La 3.1.2 deviendra alors la version maintenue de la branche `3.1`, tout en conservant les mêmes fonctionnalités mais en étant plus stable et mieux documentée.

Alors, si vous cherchez à utiliser la version flambant neuve de Godot, allez voir la [3.2 beta 2](http://www.godot-francophone.org/actualite-devsnapshot-3-2-beta-2/). Parcontre, si votre projet est en production, vous pourriez être intéressés par mettre à jour votre version de Godot pour la version 3.1.2

## Les changements
Comme mentionné tantôt, il y a eu près de 400 changements de code contenant beaucoup de correctifs. Mais aussi une meilleure documentation et une meilleure expérience utilisateur. [Voici la liste complète des changements](https://downloads.tuxfamily.org/godotengine/3.1.2/Godot_v3.1.2-stable_changelog.txt)

Vous pouvez aussi consulter les changements qu'il y a eu depuis la version 3.1.1-stable depuis Github. Nous les avons découpés en deux parties:
- [Partie 1](https://github.com/godotengine/godot/compare/3.1.1-stable...8f3fea20580b55cf4eea94e1585c31d08380997c)
- [Partie 2](https://github.com/godotengine/godot/compare/8f3fea20580b55cf4eea94e1585c31d08380997c...3.1.2-stable)

## Incompatibilités connues
### Incompatibilités connues avec Godot 3.1

- Afin de régler un problème de sécurité nous avons été amené a modifier GDNative ABI. Si vous utilisiez des modules GDNative, vous allez devoir les recompiler.
- La couche réseau de haut niveau ne décode plus automatiquement les `Objects`. Si vous voulez que le client o ule serveur le fasse, il est maintenant nécessaire de le stipuler explicitement. [Voir ce changement de code](https://github.com/godotengine/godot/pull/27485).
- Auparavant `Android OS.get_unique_id()` retournait une valeur unique pour `Secure.ANDROID_ID`. Cela a été corrigé, et maintenant la vraie valeur est renvoyée. Si vous utilisiez `Android OS.get_unique_id()` pour chiffrer vos données, alors vous allez devoir devoir utiliser la valeur originale pour pouvoir récupérer les données chiffrées. 

### Incompatibilités connues avec Godot 3.1.1

- `CPUParticles2D` - L'ordre de rendu *Lifetime* a été inversé. [GH-29558](https://github.com/godotengine/godot/pull/29558) contient le correctif, mais si vous l'utilisiez auparavant, vous pourriez avoir besoin d'une solution de contournement.
- `RigidBody2D` - `can_sleep` n'tait pas initialisé (regression de la 3.1). [GH-28185](https://github.com/godotengine/godot/pull/32767) contient le correctif, mais cela pourrait avoir des conséquences si vous l'utilisiez auparavant.
- `GLES2` - Certains des correctifs apportés peuvent changer l'aspect visuel de votre projet (surotut concernant les lumières/ombres). Assurez-vous de rapporter tout comportement que vous considéreriez comme une régression.
- macOS - La correspondance des touches `KEY_BRACELEFT` et `KEY_BRACERIGHT` étaient inversées. [GH-28185](https://github.com/godotengine/godot/pull/28185) contient un correctif. Veuillez vérifier si dans votre projet vous utilisiez ces touches.
- Si vous remarquez une différence dans vos projets, s'il vous plait tenez-nous en informés comme ça nous pourrons l'afficher ici (même s'il s'agit d'une amélioration, c'est toujours mieux de tenir tout le monde informé)

----
L'illustration est tirée de [Fantastic Creatures](https://store.steampowered.com/app/1002440/Fantastic_Creatures/), un jeu de stratégie 4X au tour par tour qui se déroule dans la mythologie de la Chine ancienne. Le tout développé avec Godot par Blue Calisto ([@FmrPlays](https://twitter.com/FmrPlays)). Il est disponible sur [Steam](https://store.steampowered.com/app/1002440/Fantastic_Creatures/) depuis deux semaines.

