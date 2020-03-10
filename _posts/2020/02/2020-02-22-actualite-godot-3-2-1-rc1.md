---
title: "Release candidate 1: Godot 3.2.1"
layout: actualite
description: >-
  Godot 3.2 a été relâché il y a quelques semaines. Il s'agit d'une mise à jour majeur du moteur gratuit et open source, dont le développement
  a durée quasiment une année
categories: actualite
by: Rémi Verschelde 
translated: Xavier \"Binogure\"
tags:
- 3.2.1
- Release candidate
original_url: https://godotengine.org/article/release-candidate-godot-3-2-1-rc-1
icon: code-branch
---

Godot 3.2 a été relâché [il y a quelques semaines](/actualite-godot-3-2-released/). Il s'agit d'une mise à jour majeur du moteur gratuit et open source, dont le développement a duré quasiment une année.

Depuis cette dernière, nous avons continué à travailler sur la branche `master` de Godot Engine. Nous avons fusionné les travaux de Juan sur le support de Vulkan, mais aussi changer le fonctionnement interne du moteur. Cela fait deux ans que nous avons planifié ces changements. Le travail sur la branche `master` c'est pour la future version de Godot 4.0 et afin de préserver la stabilité et la compatibilité cela ne sera pas inclut dans les versions de maintenance de Godot 3.2.x.

[118 changements](https://github.com/godotengine/godot/compare/3.2-stable...1bc1939c63e07c6a03dbb258d765e0f450559706) ont été rapatrié dans la branche 3.2. Et c'est maintenant l'heure de publier une Release Candidate de ce qui deviendra Godot 3.2.1.

## Sous les projecteurs
Aucun gros changement n'est attendu pour cette version, nous nous concentrons plutôt sur les correctifs et les éventuelles régressions telles que:

- Android: Correction de la régression des doubles tapes ([GH-35701](https://github.com/godotengine/godot/pull/35701)).
- Android: Corriger les entrées du clavier virtuel`LineEdit` ([GH-35785](https://github.com/godotengine/godot/pull/35785)).
- HTML5: Correction de `EMWSClient::get_connection_status()` ([GH-36250](https://github.com/godotengine/godot/pull/36250)).
- Particules: Correction un comportement indéfini avec la fonction `atan` pour les particules GPU ([GH-36031](https://github.com/godotengine/godot/pull/36031)).
- TileSet: Cacher les propriétés du TileSet dans l'inspecteur, corriger le crash Out Of Memory sur les énormes tilesets ([GH-35908](https://github.com/godotengine/godot/pull/35908)).
- Vidéo: Correction d'un bug de lecture WebM après la correction de la latence de l'AudioServer ([GH-35993](https://github.com/godotengine/godot/pull/35993)).
- Windows: Correction d'une regression UPNP ([GH-35953](https://github.com/godotengine/godot/pull/35953)).
- Windows: Désactivation du recyclage des adresses NetSocket ([GH-36321](https://github.com/godotengine/godot/pull/36321)).
- Et beaucoup de documentation et d'amélioration du UX.

Vous pouvez consulter [la liste complète des changements sur GitHub](https://github.com/godotengine/godot/compare/3.2-stable...1bc1939c63e07c6a03dbb258d765e0f450559706).

Certaines nouvelles fonctionnalités/améliorations sont attendues pour les prochaines versions de 3.2.x, cependant pour la version 3.2.1 nous nous concentrons sur la stabilité et les régressions.

## Téléchargements
Les liens de téléchargement ne figurent pas sur la page de [téléchargement officiel](https://godotengine.org/download) pour l'instant et cela afin d'éviter toute confusion pour les nouveaux utilisateurs. Vous pouvez cependant parcourir l'un des dépôts officiels pour récupérer le binaire de l'éditeur qui correspond à votre plate-forme:

- [Version classique](https://downloads.tuxfamily.org/godotengine/3.2.1/rc1/) (GDScript, GDNative, VisualScript).
- [Version Mono](https://downloads.tuxfamily.org/godotengine/3.2.1/rc1/mono/) (support C# + tout ce qui précède). Vous devez avoir MSbuild et .NET Framework 4.7 installés pour pouvoir utiliser Mono. Plusieurs parties de Mono 6.6.0 Preview sont incluses dans cette version.

## Rapports de bugs

En tant que testeur, nous vous encourageons a [rapporter les bugs](https://github.com/godotengine/godot/issues) que vous rencontreriez avec la version 3.2.1 RC 1. Au préalable, veuillez vérifier si le problème que vous rencontrez [n'est pas déjà présent dans la liste des bugs](https://github.com/godotengine/godot/issues) déjà rapportés en utilisant les fonctions de recherche avec des mots clés pertinents.

Si un changement cause une régression dans un de vos projets, il est primordial que vous rapportiez le bug (i.e Si quelque chose marchait bien dans 3.1.x ou 3.2 mais que ça ne marche plus avec la 3.2.1 RC1).
