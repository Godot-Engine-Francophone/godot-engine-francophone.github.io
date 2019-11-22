---
title: "Rapport d'avancement C#: WebAssembly, Monodevelop et AOT"
layout: actualite
description: >-
  WebAssembly débarque avec Godot Engine 3.2 pour vos jeux en C#.
  Il y a aussi une nouvelle extension pour Visual Studio pour Mac, MonoDevelop et un support préliminaire pour la compilation AOT.
categories: actualite
by: Ignacio Roldán Etcheverry 
translated: Xavier Sellier
tags:
- C#
- Mono
- AOT
- WebAssembly
original_url: https://godotengine.org/article/csharp-wasm-aot
icon: newspaper
---
Nous avons beaucoup progressé sur le support du C# depuis le premier rapport d'avancement dans le cadre de mon travail parrainé par Microsoft. Je vais maintenant vous présenter brièvement les améliorations et ajouts les plus importants qui ont été apportés, à savoir le support de l'exportation des jeux C# vers WebAssembly, une extension IDE pour Visual Studio pour Mac ainsi que pour MonoDevelop, et un support préliminaire pour la compilation AOT.

*Veuillez noter que WebAssembly et AOT dépendent tous les deux [de modifications](https://github.com/godotengine/godot/pull/33603) qui n'ont pas encore été fusionnées au moment de la rédaction du présent document.*

## Support WebAssembly

Lors du premier rapport, nous avons parlé du support du C# pour les jeux Android. Maintenant, c'est au tour de WebAssembly.

![Demo Dodge The Creep](https://godotengine.org/storage/app/media/mono_wasm_demo.opt.gif){: .center-image }
*Démo [Dodge The Creeps](https://github.com/godotengine/godot-demo-projects/tree/master/mono/DodgeTheCreepsCS) fait en C# sur un navigateur Web*

WebAssembly est une plateforme assez inhabituelle, il y a donc quelques points à garder à l'esprit. Plus important encore, le compilateur JIT n'est pas disponible. Il y a deux façons d'exécuter du code: l'interpréteur IL de Mono et la compilation AOT. Pour l'instant, Godot utilise l'interpréteur IL de Mono. C'est utile pour le développement car il permet une itération rapide, cependant il est beaucoup plus lent que le code compilé avec AOT. Malheureusement, Godot ne supporte pas encore AOT pour WebAssembly, cela devrait arriver bientôt.

Quant au processus d'exportation, tout comme avec Android, il ne devrait pas y avoir de différences par rapport à ce à quoi nous sommes habitués quand nous exportons des jeux non-C#. Godot s'occupe de tout et les fichiers résultants restent les mêmes.

Pour compiler Godot à partir des sources, vous devrez compiler à la fois le runtime Mono et la bibliothèque `Base Class` de WebAssembly. J'ai créé quelques [scripts](https://github.com/godotengine/godot-mono-builds) pour vous aider. Je vais mettre à jour la partie de la documentation nommée [Compiling with Mono](https://docs.godotengine.org/fr/latest/development/compiling/compiling_with_mono.html) dès la semaine prochaine pour refléter ces changements.

## Add-in pour Visual Studio pour Mac et MonoDevelop

Dans le dernier rapport d'avancement, j'ai parlé des extensions à venir pour les éditeurs/IDEs. Aujourd'hui, la première extension est disponible sous la forme d'un add-in pour Visual Studio pour Mac et l'IDE MonoDevelop.

Cet add-in améliorera votre expérience lorsque vous ouvrez des fichiers C# depuis l'éditeur de Godot. Auparavant, Godot utilisait la ligne de commande MonoDevelop, qui ne fonctionnait pas bien quand il s'agissait de réutiliser des instances MonoDevelop en cours d'exécution. Avec ce nouvel add-in, Godot se connecte directement à l'IDE pour envoyer de ses requêtes, résolvant ainsi ces problèmes.

Plus important encore, ce module complémentaire vise à assurer une intégration parfaite du débogage avec l'éditeur Godot. Le lancement à partir de l'éditeur MonoDevelop ordonne à l'éditeur Godot de lancer le jeu puis de connecter le débogueur. Dès lors, vous pourrez l'utiliser normalement (placer des points d'arrêts, capturer les exceptions...)

Il y a trois options de lancement:
![Mono develop addin](https://godotengine.org/storage/app/media/monodevelop_addin.png){: .center-image }
*Options d'exécution de l'add-in*

- *Play in Editor* lance le jeu à partir de l'éditeur Godot. C'est probablement celui que vous utiliserez le plus souvent.
- *Launch* lance l'exécutable Godot à partir d'un chemin qui doit être préalablement configuré dans les paramètres (ou d'un chemin obtenu automatiquement depuis un éditeur Godot connecté).
- *Attach* attache l'éditeur à une instance déjà en cours d'exécution.

Veuillez noter que pour pouvoir exécuter le jeu avec l'option *Jouer dans l'éditeur*, vous devrez régler la *Configuration* active sur *Tools*. Cela va vous permettre de lier l'éditeur avec Godot.

Le code source de l'add-in est disponible ici: [https://github.com/godotengine/godot-monodevelop-addin](https://github.com/godotengine/godot-monodevelop-addin)

Il y a également un paquet *mpack* disponible sur la [page des versions](https://github.com/godotengine/godot-monodevelop-addin/releases) et nous espérons pouvoir bientôt le rendre disponible en tant qu'add-in officiel pour qu'il puisse être installé depuis l'*Extension Manager*.

Je voudrais remercier David Karlaš de Microsoft pour avoir pris le temps d'écrire [cette extension](https://github.com/DavidKarlas/GodotExtension). Extension qui m'a servi de base pour écrire celle-ci. Cela m'a été d'une grande aide et m'a fait gagner beaucoup de temps.

## Ahead Of Time compilation

Godot commence à prendre en charge la compilation Ahead Of Time (AOT) pour les jeux exportés. Il reste encore du travail, et certaines choses pourraient ne pas fonctionner correctement. Il n'est pas encore possible d'activer le `LLVM`, mais vous pouvez le tester en changeant le paramètre `Mono -> Export -> Extra Aot Options`.

![Réglages AOT](https://godotengine.org/storage/app/media/mono_aot_settings.png){: .center-image }
*Réglages AOT*

Ce;a mértite d'être mentionne: actuellement, en raison d'une limitation avec l'API exposée par l'éditeur Godot, tous les paramètres d'exportation C# sont situés dans `Project Settings` sous `Mono -> Export`, y compris les paramètres AOT. À l'avenir, ils seront déplacés vers le panneau d'exportation des presets, là où ils doivent être.

Godot s'attend à ce que les compilateurs AOT soient placés dans le répertoire de l'éditeur sous `GodotSharp/Tools/aot-compilers`. Si vous voulez les compiler à partir des sources, ces [scripts](https://github.com/godotengine/godot-mono-builds) peuvent aussi vous être utiles. Il est peu probable que la version `3.2` soit livrée avec le support AOT, mais elle sera probablement incluse dans la prochaine version avant la version `4.0`.

## Prochaines étapes

Pour l'instant, je vais mettre un peu de temps à corriger les bogues pour m'assurer de la stabilité de la version `3.2`. La prochaine chose qui suivra sera le support d'iOS ; vous pouvez vous attendre à une annonce à ce propos dans un mois environ. Ensuite nous allons travailler, entre autres choses, sur plus d'extensions IDE, à commencer par Visual Studio puis Visual Studio Code. Nous poursuivrons nos efforts sur la compilation AOT afin que cela fonctionne avec le WebAssembly.
