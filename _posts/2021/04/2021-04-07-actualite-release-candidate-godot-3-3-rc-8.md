---
title: Release candidate: Godot 3.3 RC 8 
layout: actualite
description: >- 
  Voici un autre Release Candidate pour Godot 3.3 ! Ce post sera bref car il n'y a pas eu beaucoup de changements, 
  juste quelques corrections - référez-vous au post 3.3 RC 7 pour les détails sur les nouvelles fonctionnalités.
categories: actualite
by: Rémi Verschelde.
translated: Topy
tags:
- 3.3
- Release Candidate
original_url: https://godotengine.org/article/release-candidate-godot-3-3-rc-8
icon: "code-branch"
---

*Au cas où vous auriez manqué les récentes nouvelles, nous avons décidé de [changer notre version de Godot 3.x](https://godotengine.org/article/versioning-change-godot-3x) 
et de renommer **la prochaine version (3.2.4) en Godot 3.3**, démarrant ainsi une nouvelle branche stable. Consultez l'article de blog dédié pour plus de détails.*

Voici un autre [Release Candidate](https://en.wikipedia.org/wiki/Software_release_life_cycle#Release_candidate) pour Godot 3.3 ! 
Ce post sera court car il n'y a pas eu beaucoup de changements, juste quelques corrections - référez-vous au post [3.3 RC 7](https://godotengine.org/article/release-candidate-godot-3-3-rc-7) pour les détails sur les nouvelles fonctionnalités.

Nous sommes assez confiants à propos de ce RC (Famous Last Words™) donc si aucune nouvelle régression n'est trouvée, la prochaine version devrait être la version stable ! 
Si vous n'avez pas encore essayé les builds de la 3.3 RC, c'est le moment de le faire pour nous aider à nous assurer que tout se passe bien de la 3.2.3 à la 3.3.

Comme d'habitude, vous pouvez l'essayer en direct avec la [version en ligne de l'éditeur](https://editor.godotengine.org/releases/3.3.rc8/godot.tools.html) mise à jour pour cette version.

## Changements

Par rapport à la version RC 7 précédente, cette version corrige quelques régressions dans GDNative, le moteur de rendu, 
GodotPhysics (BVH), et les threads Android JNI. Elle corrige également l'option de *fallback* GLES2 pour les exportations 
HTML5.

Voir le journal complet des changements depuis la version 3.2.3-stable ([chronologique](https://downloads.tuxfamily.org/godotengine/3.3/rc8/Godot_v3.3-rc8_changelog_chrono.txt), 
ou [pour chaque contributeur](https://downloads.tuxfamily.org/godotengine/3.3/rc8/Godot_v3.3-rc8_changelog_authors.txt)), ou les changements depuis la précédente version RC 7.

Cette version est construite à partir du commit [b076150b086a5001b190a9a20a425d1bc842fe21](https://github.com/godotengine/godot/commit/b076150b086a5001b190a9a20a425d1bc842fe21).

## Téléchargements

Les liens de téléchargement pour les snapshot de développement ne figurent pas sur la page de [téléchargement](https://godotengine.org/download/windows) 
pour éviter toute confusion pour les nouveaux utilisateurs. Parcourez plutôt notre dépôt de téléchargement et 
récupérez le binaire de l'éditeur qui correspond à votre plateforme :

* [Version standard](https://downloads.tuxfamily.org/godotengine/3.3/rc8/) (GDScript, GDNative, VisualScript).
* [Version Mono](https://downloads.tuxfamily.org/godotengine/3.3/rc8/mono/) (support C# + tout ce qui a été dit plus haut). 
Vous devez avoir installé MSBuild pour utiliser la version Mono. Les parties pertinentes de Mono **6.12.0.122** sont incluses dans ce build. (Note : Les builds antérieurs à 3.3 RC 7 utilisaient Mono 6.12.0.114.)

## Rapports de bugs

En tant que testeur, vous êtes encouragé à [ouvrir des rapports de bug](https://github.com/godotengine/godot/issues) si 
vous rencontrez des problèmes avec la version 3.3 RC 8. Veuillez d'abord vérifier les [*issues* existantes](https://github.com/godotengine/godot/issues) 
sur GitHub, en utilisant la fonction de recherche par mots-clés, pour vous assurer que le bug que vous rencontrez 
n'est pas déjà connu.

En particulier, il est très important de signaler tout changement qui entraînerait une régression dans vos projets 
(par exemple, si quelque chose qui fonctionnait bien dans la version 3.2.3 ou antérieure ne fonctionne plus dans la 
version 3.3 RC 8).

## Support

Godot est un moteur de jeu open source à but non lucratif, développé par des centaines de contributeurs sur leur temps libre, 
et une poignée de développeurs à temps partiel ou à temps plein, engagés grâce aux [dons de la communauté Godot](https://godotengine.org/donate). 
Un grand merci à tous ceux qui ont contribué au projet par [leur temps](https://github.com/godotengine/godot/blob/master/AUTHORS.md) 
ou leur [soutien financier](https://github.com/godotengine/godot/blob/master/DONORS.md) !

Si vous souhaitez soutenir financièrement le projet Godot et nous aider à assurer nos futurs recrutements, vous pouvez le faire 
sur [Patreon](https://www.patreon.com/godotengine) ou [PayPal](https://godotengine.org/donate).
