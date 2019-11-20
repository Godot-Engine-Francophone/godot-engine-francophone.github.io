---
layout: actualite
title: "Release candidate v3.1.2-RC1"
description: >-
  Il y a plus de 6 mois que Godot Engine 3.1.1 a été relâché et vous êtes nombreux à attendre la version 3.1.2. Cette dernière contiendra son lot de correctifs
  notables ainsi que des améliorations. Nous avons ajouté 400 changements de code depuis la dernière version. Il est nécessaire de tester de manière approfondie afin
  d'éviter tout nouveau bug qui serait en fait une regression. Voilà pourquoi nous publions cette version, pour que la communauté puisse la tester avec nous.
categories: 'actualite'
by: 'Rémi Verschelde'
translated: 'Xavier Sellier'
tags:
  - Release Candidate
  - 3.1
original_url: 'https://godotengine.org/article/release-candidate-godot-3-1-2-rc-1'
icon: 'package'
---
## Godot Engine 3.1.2 RC 1
6 mois se sont écoulés depuis Godot Engine 3.1.1, et tout le monde attend la version 3.1.2 qui viendra avec de nombreux correctifs et améliorations.

Nous avons publié des versions 3.1.x plus régulièrement (presque tous les mois), cependant notre responsable des versions, Hein-Pieter, a été très
occupé ces derniers mois, et par conséquent, a été moins disponible pour contribuer a Godot. Maintenant que la 3.2 est dans les tuyaux, je reviens sur
les branches stables pour publier de nouvelles versions. Je planifie également de publier la version 3.0.7 dans les semaines à venir pour eux qui continuent à utiliser
la version 3.0 pour leurs projets.

Nous avons ajouté 400 changements de code depuis la dernière version. Il est nécessaire de tester de manière approfondie afin
d'éviter tout nouveau bug qui serait en fait une regression. Voilà pourquoi nous publions cette version, pour que la communauté puisse la tester avec nous.

## Les branches de version
Avant d'aller vérifier tous les changements pour cette version, une petite clarification est de mise pour ce qui concerne
les branches de versions.

Godot Engine 3.2 est la prochaine version stable. Actuellement en beta, elle devrait devenir stable dans les semaines a venir.
La plupart des articles publiés depuis la branche `3.1` couvrent aussi les fonctionnalités qui ont toutes été intégrées à la branche `master` et seront, par conséquent,
dans la branche `3.2` de Godot engine.

Dans le mêmte temps nous travaillons forts pour pouvoir supporter Vulkan l'année prochaine. Nous allons incrémenter le nombre *majeur* de la version de Godot Engine passant ainsi de *3* à *4*. Ce changement signifie qu'il y aura des problèmes de rétro-compatibilité entre les version 4 et 3 de Godot Engine.

Présentement, nous continuons de maintenir les branches `3.1` (dernière en date 3.1.1), `3.0` (dernière en date 3.0.6) et `2.1` (dernière en date 2.1.6). Chacunes de ces versions possèdent une branche git différente, où nous pouvons intégrer les changements de code depuis la branche `master` pour nos futurs versions de maintenance. 
La 3.1.2 deviendra alors la version maintenue de la branche `3.1`, tout en conservant les mêmes fonctionnalités mais en étant plus stable et mieux documentée.

Alors, si vous cherchez à utiliser la version flambant neuve de Godot, allez voir la [3.2 beta 1](https://godotengine.org/article/dev-snapshot-godot-3-2-beta-1). Parcontre, si votre projet est en production, vous pourriez être intéressés par mettre à jour votre version de Godot pour la version 3.1.2

## Les changements
Comme mentionné tantôt, il y a eu près de 400 changements de code contenant beaucoup de correctifs. Mais aussi une meilleure documentation et une meilleure expérience utilisateur. [Voici la liste complète des changements](https://downloads.tuxfamily.org/godotengine/3.1.2/rc1/Godot_v3.1.2-rc1_changelog.txt)

## Téléchargements
Comme toujours, vous pouvez télécharger les binaires sur nos serveurs:

- Version classique: [Serveur HTTPS](https://downloads.tuxfamily.org/godotengine/3.1.2/rc1/)
- Version mono: [Serveur HTTPS](https://downloads.tuxfamily.org/godotengine/3.1.2/rc1/mono/)

Si vous possédez un projet fait avec la verison 3.1.1, il est préférable de tester cette version complètement afin de nous [rapporter toute régression](https://github.com/godotengine/godot/issues). 400 changements de code, c'est beaucoup, et la branche `3.1` n'est pas aussi bien testée que la branche `master`. Il se peut qu'il y ait pas mal de regressions potentielles (nous n'attendons aucune regression majeure, mais il est préférable de tester son projet et de retourner vers la version 3.1.1 au moindre problème).

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

