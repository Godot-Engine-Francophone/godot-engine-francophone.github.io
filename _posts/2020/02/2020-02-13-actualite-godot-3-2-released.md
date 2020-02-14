---
title: "Voilà Godot 3.2, la qualité est la priorité!"
layout: actualite
description: >-
  Godot 3.2 est une amélioration majeure par rapport à la version 3.1, apportant des dizaines de fonctionnalités importantes, des centaines de corrections de bugs et d'améliorations pour apporter à nos développeurs de jeux un ensemble de fonctionnalités en constante amélioration avec un fort accent sur facilité d'utilisation.
categories: actualite
by: Rémi Verschelde
translated: Xavier "Binogure"
original_url: https://godotengine.org/article/here-comes-godot-3-2
tags:
- godot
- 3.2
- release
icon: code-branch
---

![Godot engine 3.2](https://godotengine.org/storage/app/uploads/public/5e3/15f/979/5e315f979aa78053750274.jpg){: .center-image }

Nous sommes ravis et enthousiastes de publier notre dernière mise à jour majeure, **Godot 3.2**! C'est le résultat de plus de 10 mois de travail de près de **450 contributeurs** (dont 300 contribuant à Godot pour la première fois) qui ont écrit plus de 6000 commits!

Godot 3.2 est une amélioration majeure par rapport à la version 3.1, apportant des dizaines de fonctionnalités importantes, des centaines de corrections de bugs et d'améliorations pour apporter à nos développeurs de jeux un ensemble de fonctionnalités en constante amélioration avec un fort accent sur facilité d'utilisation.

## Télécharger

[Téléchargez Godot 3.2 maintenant](https://godotengine.org/download) et lisez la suite pour en savoir plus [sur son histoire](/actualite-godot-3-2-released/#petit-est-devenu-grand), [nos plans de support](/actualite-godot-3-2-released/#la-voie-%C3%A0-suivre) et les nombreuses nouvelles fonctionnalités de cette mise à jour.

## Petit est devenu grand

À la base, la version 3.2 devait se faire sur un cycle court allant de 4 à 6 mois. Cette version ne devait inclure que peu de nouvelles fonctionnalités mais beaucoup de correctifs. Au début ce fut le cas, car après avoir écrit une poignée de fonctionnalités destinées à la 3.2, [Juan Linietsky](https://github.com/reduz), le principal développeur, a bifurqué sur une branch distincte pour travailler sur Vulkan, le prochain moteur de rendu de Godot Engine.

Mais cela c'était sans compter sur nous autres contributeurs. Nous ne nous sommes pas tournés les pouces et nous avons travaillé d'arrache pied pour corriger le plus de bug possible afin de faire de la version 3.2, une version stable. Avec l'arrivée des v3.0 et v3.1, de nombreuses fonctionnalités ont été introduites. L'objectif principal était l'amélioration de l'expérience utilisateur, l'ajout de composants manquants mais aussi la correction de nombreux bugs relevés par le nombre croissant d'utilisateurs.

Fin [août 2019](https://github.com/godotengine/godot/issues/31592), la branche de développement a été gelée, c'est-à-dire qu'aucune nouvelle fonctionnalité importante n'était acceptée. Depuis nous avons eu de cesse de peaufiner les nouvelles fonctionnalités et de publier des correctifs pour adresser [des problèmes de longue date](https://godotengine.org/article/github.com/godotengine/godot/issues). Godot 3.2 c'est donc la version qui aura corrigée plus de [2000 bugs](https://github.com/godotengine/godot/issues?utf8=%E2%9C%93&q=is%3Aclosed+is%3Aissue+milestone%3A3.2+-label%3Aarchived) dont certains dataient de [2015](https://github.com/godotengine/godot/issues/2082)!.

Et c'est ainsi que la _petite_ version 3.2 est devenue grande, presqu'aussi grande que la version 3.1, déplaçant ainsi la date de livraison à Novembre 2019 avec le délai habituel de 2 à 3 mois par rapport à la date prévue.

En fait, la sortie d'aujourd'hui marque le deuxième anniversaire de Godot 3.0, publié le [29 janvier 2018](https://godotengine.org/article/godot-3-0-released). C'est une façon inattendue et agréable à la fois de nous lancer dans le développement de Godot 4.0!

Nous espérons que vous apprécierez la version 3.2 autant que nous avons aimé la développer!

### Compatibilité

Presque tous les domaines du moteur ont connu une certaine amélioration, et nous encourageons les utilisateurs à convertir leurs projets actifs vers Godot 3.2 s'ils le peuvent. Nous avons fait de notre mieux pour préserver la compatibilité entre les projets 3.1 et 3.2, cependant cela requiert un peu de travail pour passer un projet de la v3.1 à la v3.2 (cf la [partie changements](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#changed) de la [liste des changements](https://github.com/godotengine/godot/blob/master/CHANGELOG.md) pour les détails)

Pour les utilisateurs qui restent sur la branche 3.1, sachez qu'elle continuera à recevoir des correctifs ainsi que des changements spécifiques pour certaines plateformes (une version de maintenance 3.1.3 devrait voir le jour dans les mois à venir). Cependant, nous nous concentrons principalement sur la branche 3.2.

## La voie à suivre

Avant de donner un aperçu des nouvelles fonctionnalités majeures de Godot 3.2, répondons à une question que beaucoup d'entre vous se posent:
_Quel support pour la branche 3.2, et qu'adviendra-t-il de la version 3.2?_

Comme certains d'entre vous le savent peut-être, notre prochaine étape majeure est Godot 4.0. Elle apportera un [nouveau backend de rendu basé sur Vulkan](https://godotengine.org/article/abandoning-gles3-vulkan-and-gles2) à la place du backend OpenGL ES 3.0 / OpenGL 3.3 actuel. Le backend OpenGL ES 2.0 / OpenGL 2.1 sera conservé et porté sur la nouvelle architecture de Godot 4.0. Les plus curieux d'entre vous peuvent aussi lire les rapports de progression de Juan pour plus de détails sur cette nouvelle architecture et les fonctionnalités de rendu implémentées pour 4.0 (rapports [1](https://godotengine.org/article/vulkan-progress-report-1), [2](https://godotengine.org/article/vulkan-progress-report-2), [3](https://godotengine.org/article/vulkan-progress-report-3), [4](https://godotengine.org/article/vulkan-progress-report-4), [5](https://godotengine.org/article/vulkan-progress-report-5) et [6](/actualite-vulkan-progress-report-6/)).

La nouvelle architecture de rendu sera complètement réécrite pour moderniser le code vieux de 10 ans et pour l'adapter aux dernières API graphiques.  Les versions 3.x et 4.x seront très différentes, et les projets 3.x ne seront pas compatibles avec les projets 4.x.
Nous voulons changer de nombreuses choses, des choses que nous avions mis en suspend pendant des années, et tous ces changements prendront effet avec la version 4,0.

C'est pour cette raison que porter un projet de la version 3 à la version 4 demandera un travail conséquent. Pour ceux qui ont porté leur projet de la version 2.1 à la 3.0, rassurez-vous, la liste des changements sera mieux maintenue pour la transition de la 3.x à la 4.x. Nous ferons de notre mieux pour documenter entièrement les changements pertinents et fournir des outils pour automatiser tout ce qui peut être automatisé. Malgrè cela, nous nous attendons à ce que de nombreux utilisateurs restent sur Godot 3.2.

C'est pourquoi, nous allons fournir **un support sur le long terme pour la version 3.2**. Tout comme nous l'avons fait pour Godot 2.1 de 2016 à 2019. Il y aura des versions de maintenance régulières (3.2.x) apportant des correctifs importants, une meilleure interface ainsi que quelques nouvelles fonctionnalités.

Durant ces 6 derniers mois, nous avons été amenés à travailler sur de nombreuses fonctionnalités. La plupart n'ont pas été ajouté à Godot 3.2 afin de ne pas exploser la liste des choses à faire. Cependant, nous allons examiner ces fonctionnalités, pour pouvoir les rajouter à la version 3.2 seulement si cela ne rend pas cette version trop instable. Cela incluerait notamment des fonctionnalités telles que la [compilation AOT](https://github.com/godotengine/godot/pull/33603) et la [prise en charge iOS](https://github.com/godotengine/godot/issues/20268) pour les projets C#, la prise en charge [ARCore](https://github.com/godotengine/godot/pull/26221) ou le [support DTLS](https://godotengine.org/article/dtls-report-1). Ces fonctionnalités seront probablement intégrées dans les futures versions de maintenance 3.2.x, une fois qu'elles seront prêtes.

## Soutenir le projet

Godot est **une organisation à but non-lucratif dédiée** (OBNL) à fournir à tout le monde la meilleure technologie de jeu libre et open source possible. Les dons ont joué un rôle essentiel. Cela nous a permis de développer Godot à un rythme soutenu mais aussi d'embaucher George comme généraliste à temps plein. Merci à vous tous, du fond du cœur!

Si vous utilisez et appréciez Godot, prévoyez de l'utiliser ou si vous souhaitez soutenir la cause d'avoir un moteur de jeu mature et gratuit de haute qualité, alors **[devenez notre Patron](https://www.patreon.com/godotengine)**. Si vous représentez une entreprise et souhaitez faire savoir à notre vaste communauté que vous soutenez notre cause, alors [devenez notre sponsor](https://godotengine.org/donate). Un financement supplémentaire nous permettra d'embaucher davantage de développeurs pour travailler à temps plein, intensifiant ainsi son rythme de développement et améliorant sa stabilité.

## Les nouvelles fonctionnalités

Passons maintenant aux bonnes choses: quoi de neuf dans Godot 3.2?

Il y a eu des milliers de changements, grands et petits, donc tout lister serait impossible. Vous pouvez cependant consulter la [liste des changements détaillée](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#32---2020-01-29), où nous avons tenté de répertorier les modifications les plus pertinentes, séparées par catégorie: [ajouts](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#added), [modifications](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#changed), [suppressions](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#removed) et [correctifs](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#fixed).

Dans la suite de cet article, nous visons à donner un aperçu général des fonctionnalités et des changements les plus notables de Godot 3.2. Vous pouvez lire dans l'ordre ou utiliser l'index ci-dessous pour accéder à vos domaines d'intérêt. Les zones du moteur ne sont répertoriées dans aucun ordre particulier.

- [Documentation: plus de contenu, de meilleurs thèmes](/actualite-godot-3-2-released/#documentation-plus-de-contenu-de-meilleurs-th%C3%A8mes)
- [Mono/C#: Le support d'Android et de WebAssembly](/actualite-godot-3-2-released/#monoc-le-support-dandroid-et-de-webassembly)
- [AR/VR: Support d'Oculus Quest et d'ARKit](/actualite-godot-3-2-released/#arvr-support-doculus-quest-et-darkit)
- [Refonte des Visual Shaders](/actualite-godot-3-2-released/#refonte-des-visual-shaders)
- [Améliorations graphiques/de rendu](/actualite-godot-3-2-released/#am%C3%A9liorations-graphiquesde-rendu)
- [Pipeline des asset 3D: glTF 2.0 et FBX](/actualite-godot-3-2-released/#pipeline-des-asset-3d-gltf-20-et-fbx)
- [Réseau: WebRTC et WebSocket](/actualite-godot-3-2-released/#r%C3%A9seau-webrtc-et-websocket)
- [Le système de plugin et les builds Android](/actualite-godot-3-2-released/#le-syst%C3%A8me-de-plugin-et-les-builds-android)
- [L'éditeur](/actualite-godot-3-2-released/#l%C3%A9diteur)
- [Outil de développement](/actualite-godot-3-2-released/#outil-de-d%C3%A9veloppement)
- [2D: Pseudo 3D, Texture atlas, AStar2D](/actualite-godot-3-2-released/#2d-pseudo-3d-texture-atlas-astar2d)
- [GUI: Anchor/margins, les effets RichTextLabel](/actualite-godot-3-2-released/#gui-anchormargins-les-effets-richtextlabel)
- [Générateurs audio et analyseur de spectre](/actualite-godot-3-2-released/#g%C3%A9n%C3%A9rateurs-audio-et-analyseur-de-spectre)
- [Amélioration des décomposition des formes convexes](/actualite-godot-3-2-released/#am%C3%A9lioration-des-d%C3%A9composition-des-formes-convexes)

### Documentation: plus de contenu, de meilleurs thèmes

La [documentation stable](https://docs.godotengine.org/fr/latest/) utilise maintenant la version 3.2. Ce contenu est également disponible en tant [dans la version 3.2](https://docs.godotengine.org/fr/latest/). La version stable précédente peut toujours être trouvée [dans la version 3.1](https://docs.godotengine.org/en/3.1/) (mais plus en Français).

Nous recommandons aux nouveaux utilisateurs de commencer avec notre tutoriel officiel [pas à pas](https://docs.godotengine.org/fr/latest/getting_started/step_by_step/index.html) afin d'apprendre les concepts de base de Godot.

Beaucoup de contenu a été ajouté à la liste [des classes](https://docs.godotengine.org/en/stable/classes/) et [des tutoriaux](https://docs.godotengine.org/fr/latest/). Bien que certains soient dédiés aux nouvelles fonctionnalités, la majorité est venu combler les lacunes de la documentation existante.

Depuis Godot 3.1, le liste des classes référencées est passée de 73% à 90%! Plus de 2500 nouvelles descriptions ont été écrites pour les nœuds, les méthodes, les propriétés, les constantes ou les signaux, et la plupart des 7000 descriptions déjà existantes ont été relues et améliorées. Merci aux 200 contributeurs qui ont travaillé sur la documentation!

La documentation intégrée et la [version en ligne](https://docs.godotengine.org/fr/stable/) ont eu un beau reformatage. Cela est particulièrement visible avec les nouveaux thèmes (lumineux et sombre, ajuste automatiquement à des préférences système) pour la version Web conçue par [Hugo Locurcio](https://github.com/Calinou/).

![Documentation](https://godotengine.org/storage/app/uploads/public/5e3/161/4f3/5e31614f37b41633239978.png){: .center-image .image-512 }

Pour la première fois, la documentation de Godot est également disponible en plusieurs langues! Seule la [dernière branche est traduite](https://docs.godotengine.org/fr/latest/), mais elle correspond actuellement au contenu de la branche stable. Vous pouvez participer à l'[effort de traduction](https://hosted.weblate.org/projects/godot-engine/godot-docs/)

![Documentation](https://godotengine.org/storage/app/uploads/public/5e3/162/182/5e3162182c027709073016.png){: .center-image .image-256 }

### Mono/C#: Le support d'Android et de WebAssembly

Le support C # a été implémenté dans [Godot 3.0](https://godotengine.org/article/godot-3-0-released#csharp) grace à [Mono](https://www.mono-project.com/), avec la possibilité d'exécuter des projets depuis l'éditeur. [Godot 3.1](https://godotengine.org/article/godot-3-1-released#csharp) a ajouté la prise en charge de l'exportation de projets vers les PC de bureau (Linux, macOS et Windows).

Pour Godot 3.2, le responsable C,# Ignacio Etcheverry ([neikeq](https://github.com/neikeq)) a été assez occupé, implémentant d'abord le support pour **[Android](https://godotengine.org/article/csharp-android-support)**, puis pour **[WebAssembly](/actualite-csharpprogressreport/)**. La prise en charge initiale de la compilation AOT a également été [ajoutée](https://github.com/godotengine/godot/pull/33603), mais elle n'est pas encore activée dans Godot 3.2 car des tests supplémentaires et des modifications de package sont nécessaires. AOT permettra de meilleures performances pour le port WebAssembly (utilisant actuellement l'interpréteur) et est également une condition préalable à la prise en charge de la prochaine plate-forme iOS, qui devrait être incluse dans une version ultérieure 3.2.x.

![Demo Dodge The Creep](https://godotengine.org/storage/app/media/mono_wasm_demo.opt.gif){: .center-image .image-256 }
*Démo [Dodge The Creeps](https://github.com/godotengine/godot-demo-projects/tree/master/mono/dodge_the_creeps) fait en C# sur un navigateur Web*

Parmis ces améliorations, il y a le support de [MonoDevelop/Visual Studio](/actualite-csharpprogressreport/) pour Mac ainsi que le support de [Jetbrains Rider](https://github.com/godotengine/godot/pull/34181) en tant qu'éditeurs externes. Ou encore la prise en charge de C# 8.0 via Mono 6.6, le passage à .NET Framework 4.7 comme cible par défaut et la réécriture du code de l'éditeur spécifique à Mono en C# (porté C++ depuis). De plus, des dizaines de bogues ont été corrigés, ce qui rend l'expérience C# dans Godot beaucoup plus agréable.

Nous remercions Microsoft d'avoir financé le travail d'Ignacio sur le support C#.

### AR/VR: Support d'Oculus Quest et d'ARKit

Notre prolifique responsable AR et VR [Bastiaan Olij](https://github.com/BastiaanOlij) a pu finaliser les nombreux efforts qui ont eu lieu tout au long du développement de Godot 3.2.

Son premier travail sur la prise en charge d'[ARKit](https://godotengine.org/article/godot-3-2-arvr-update) pour iOS remonte à [2017](https://github.com/godotengine/godot/pull/9967), et il aura fallu quelques années pour arriver à une conception qui s'intégrerait correctement dans l'architecture de Godot, en particulier en ce qui concerne l'API [CameraServer](https://github.com/godotengine/godot/pull/10643). Côté Android, l'[intégration ARCore](https://github.com/godotengine/godot/pull/26221) n'est pas tout à fait terminée, mais c'est déjà fonctionnel. Une fois les problèmes résolus, nous pourrons l'inclure dans une version 3.2.x ultérieure.

2019 a été une grande année pour le support de la VR dans Godot. Oculus et Valve nous ont contactés pour nous aider en ce qui concerne les contacts, les connaissances techniques et le matériel VR. Bastiaan a publié le plugin [VR mobile Oculus](https://github.com/GodotVR/godot_oculus_mobile) puis a rapidement obtenu l'aide d'utilisateurs ayant de l'expérience avec l'[Oculus Quest](https://godotengine.org/article/godot-oculus-quest-support). Leur entente a permis de co-entretenir le plugin et d'améliorer son intégration en général ([Fredia Huya-Kouadio](https://github.com/m4gr3d) et [Holger Dammertz](https://github.com/NeoSpark314) sont les utilisateurs expérimentés qui ont prêtés main forte à Bastiaan).
La communauté de développeurs autour de Quest VR est en plein essor. Il existe déà de nombreux prototypes intéressants qui utilisent Godot, et nous pensons que la version 3.2 devrait booster encore plus cette communauté. Restez à l'affût des mises à jour car Bastiaan va bientôt envoyer des plugins VR précompilés pour tous les casques VR pris en charge dans notre [bibliothèque de ressources](https://github.com/NeoSpark314). Puis il publiera probablement une mise à jour avec des instructions sur la façon d'utiliser le plugin.

{% youtube "https://youtu.be/N-UReOuxAP0" %}
*Le prototype [Voxel Works Quest](https://neospark314.itch.io/voxel-works-quest) de Holger Dammertz réalisé avec Godot pour Oculus Quest.*

### Refonte des Visual Shaders

[Godot 3.1](https://godotengine.org/article/godot-3-1-released#visual-shader) a introduit un nouvel éditeur graphique qui permet d'éditer visuellement les shaders. Il s'agit d'une ré-implmentation de la version qui était incluse dans Godot 2.1.

Pour Godot 3.2, notre contributeur [Yuri Roubinsky](https://github.com/Chaosus) a fait un énorme remaniement de l'UX du [nouveau visual shader](https://godotengine.org/article/major-update-for-visual-shader-in-godot-3-2), et est finalement responsable de cette  fonctionnalité. Au-delà de l'amélioration du UX et des correctifs, il a ajouté de nouveaux nœuds pratiques pour écrire des shaders plus avancés avec une plus large flexibilité.

![Visual Shader](https://godotengine.org/storage/app/media/vshader2019/vs_copy_paste.gif){: .center-image .image-512 }

Lisez ses rapports d'étape ([partie 1](https://godotengine.org/article/major-update-for-visual-shader-in-godot-3-2) et [partie 2](https://godotengine.org/article/major-update-visual-shaders-godot-3-2-part-2)) pour avoir plus de détails sur les nouvelles fonctionnalités.

Yuri ne s'est pas arrêté là, car il a également ajouté de nombreuses fonctionnalités pour les [shaders classiques](https://godotengine.org/article/major-update-visual-shaders-godot-3-2-part-2), telles que l'ajout des constantes, des tableaux et des variantes. De nombreuses fonctions préconstruitent du backend GLES 3 ont été portées sur le backend GLES 2. Pour les fonctions qui ne sont pas compatibles GLES2 a cause de problème de compatibilité, elles ont identifiées et généreront des erreurs de compilation.

### Améliorations graphiques/de rendu

Avec le passage à Vulkan pour Godot 4.0, nous avons pris la décision difficile de suspendre les fonctionnalités de rendu pour Godot 3.2. Comme vous le savez, depuis la sortie de la version 3.1, notre développeur principal Juan a travailler sur le nouveau moteur de rendu Vulkan pour 4.0, ce qui fait que le moteur de rendu de Godot 3.2 n'a subit beaucoup de modification.

Pourtant, d'autres contributeurs ont repris le flambeau, notamment [Clay John](https://github.com/clayjohn) qui a fait des miracles avec les moteurs de rendu GLES2 et GLES3.

Parmis les changements, il y a celui du [pipeline PBR](https://github.com/godotengine/godot/pull/33668) qui permet de rendre comptaible avec les autres moteurs de PBR temps-réel, comme [Blender](https://www.blender.org/)'s Eevee et Substance Designer. Attendez-vous à ce que les scènes qui utilisent le plus de PBR aient un rendu très proche de celui de votre logiciel de modélisation 3D.

De nombreuses fonctionnalités GLES3 ont été portées sur GLES2, y compris la prise en charge du [MSAA](https://github.com/godotengine/godot/pull/28518) et divers effets de [post-traitement](https://github.com/godotengine/godot/pull/31845) (glow, DOF blur, and BCS).

De nombreux paramètres de rendu par défaut ont été modifiés et optimisés pour donner à la fois une meilleure qualité d'image et de meilleures performances par défaut. Comme toujours, les paramètres peuvent être modifiés en fonction du projet (par exemple, les [paramètres SSAO](https://github.com/godotengine/godot/pull/29188)).

De nombreux bugs ont été corrigés, en particulier pour le moteur de rendu GLES2.

### Pipeline des asset 3D: glTF 2.0 et FBX

Grâce au travail dévoué de plusieurs contributeurs ([Ernest Lee](https://github.com/fire), [Gordon MacPherson](https://github.com/RevoluPowered) et [Marios Staikopoulos](https://github.com/marstaik)), Godot dispose désormais d'un **pipeline d'importation glTF 2.0 entièrement fonctionnel**, ainsi que du support du format FBX. Une partie importante de ce travail a été généreusement donnée par l'IMVU.

glTF 2.0 est considéré comme le choix idéal pour importer des scènes 3D dans Godot, et voit l'adoption croissante de l'industrie comme norme. En particulier, l'importation des animations glTF 2.0 a été considérablement améliorée. Grâce à la collaboration avec la communauté Blender, des améliorations importantes ont été apportées aux pipelines d'importation et d'exportation de glTF 2.0, qui seront incluses dans la prochaine version de Blender 2.83.

Godot prend désormais en charge la _peau_ des squelettes lors de l'importation de scènes glTF 2.0 et FBX. Supporter la [peau des squelettes](https://github.com/godotengine/godot/pull/32275) permet à **plusieurs mesh de partager un seul squelette**.

Les pipelines [ESCN](https://github.com/godotengine/godot-blender-exporter) et [Collada](https://github.com/godotengine/collada-exporter) n'ont pas beaucoup changé et marchent comme dans Godot 3.1. Le support de la _peau_ n'a pas encore été ajouté auz pipeline ESCN ou Collada.

Nous avons également inclus une **support basique du FBX** (actuellement un aperçu). Les fichiers FBX exportés depuis Blender avec des animations sont partiellement pris en charge. Nous ne prenons pas en charge les fichiers FBX provenant de Maya ou de 3ds Max. Dans une version future, nous améliorerons la compatibilité avec d'autres formats.

Bien que les formats FBX et glTF 2.0 autorisent plus de 4 os par vertex, ces mesh ne sont actuellement pas pris en charge dans Godot 3.2. [FBX2glTF](https://github.com/facebookincubator/FBX2glTF) est une option qui permet de convertir le contenu FBX préexistant en glTF 2.0.

Si vous rencontrez des problèmes avec des assets importés, veuillez remplir un [rapport de bogue](https://github.com/godotengine/godot/issues/new) permettant de reproduire le problème.

### Réseau: WebRTC et WebSocket

Grâce à une [généreuse donation de Mozilla](https://godotengine.org/article/godot-engine-awarded-50000-mozilla-open-source-support-program), notre responsable de la couche réseau [Fabio Alessandrelli](https://github.com/Faless) a pu travailler à temps plein sur la couche réseau durant tout le cycle de développement de Godot 3.2.

Il a commence par implémenté la **prise en charge de WebRTC**. Il a détaillé son travail dans différents rapports d'avancement ([1](https://godotengine.org/article/godot-webrtc-report1), [2](https://godotengine.org/article/godot-webrtc-report2) et [3](https://godotengine.org/article/godot-webrtc-report3)).

D'autres modifications de réseau impliquent la prise en charge de la [multidiffusion UDP](https://godotengine.org/article/websocket-updates-udp-multicast), [des exemples et des tutos pour les WebSocket](https://godotengine.org/article/websocket-updates-udp-multicast), un [serveur SSL WebSocket](/actualite-websocketsslserver/) et des [fonctions cryptographiques basiques](https://godotengine.org/article/basic-cryptography-ssl-improvements).

Côté débug, [Joan Fons Sanchez](https://github.com/JFonS) a ajouté un [profileur réseau](https://github.com/godotengine/godot/pull/31870). Ce dernier vous aidera à monitorer la bande passante de votre jeu en temps-réel. Vous pourrez consulter la quantité de données reçues et envoyées par seconde, ainsi qu'un compteur RPC (Remote Procedure Call). Le compteur est très utile si vous voulez optimiser la couche réseau. Vous pourrez notamment consulter la liste des noeuds les plus gourmands en RPC (appels de fonctions à distance).

![Réseau](https://godotengine.org/storage/app/uploads/public/5e3/167/117/5e3167117c8c3991279770.png){: .center-image .image-512 }

Fabio va continuer a travailler sur la couche réseau, mais il va aussi travailler sur un autre sujet financé par Mozilla. Il s'agit d'améliorer le port WebAssembly/HTML5 et de porter l'éditeur Godot pour qu'il puisse s'ouvrir via un navigateur web! Son travail a déjà commencé avec l'ajout d'un [serveur HTTP](/actualite-websocketsslserver/) dans l'éditeur de Godot fin de supporter les exports en WebAssembly.

![Particules](https://godotengine.org/storage/app/uploads/public/5de/045/0f1/5de0450f18d4a943481630.png){: .center-image .image-512 }

### Le système de plugin et les builds Android

Avant de se consacrer au développement de Vulkan, Juan a travaillé sur le **[nouveau système de plugin pour Android](https://godotengine.org/article/godot-3-2-will-get-new-android-plugin-system)**.

Beaucoup d'utilisateurs veulent créer leurs modèles d'exporation pour Android qui incluent des modules Java personnalisés. Avec l'ancien système, il vous fallait recompiler Godot Engine dans son ensemble, cela était chronophage est relativement complexe.

Godot comprend maintenant deux systèmes d'exportation distincts. Celui avec un fichier APK préconstruit (celui par défaut). Et le second qui permet d'exporter une "version personnalisée pour Android". Cette dernière méthode d'exportation utilise un modèle d'APK précompilé qui est modifié à la volée afin d'ajouter les modules des utilisateurs ce qui va permettre de générer un nouvel APK qui lui sera utilisé pour l'export des projets vers Android.

![Export Android](https://godotengine.org/storage/app/uploads/public/5cc/0d9/a7f/5cc0d9a7f014b050964561.png){: .center-image .image-512 }

Le [nouveau système de plugins](https://docs.godotengine.org/fr/latest/tutorials/plugins/android/android_plugin.html) permet de facilité la compilation des modules personnalisés, permettant aux utilisateurs de configurer les plugins via l'éditeur plutôt que de modifier le code source Godot. Les plugins existants devront être portés sur le nouveau système, mais cela devrait se faire facilement.

Le portage Android a également fait l'objet d'une refactorisation massive par un nouveau contributeur, [Fredia Huya-Kouadio](https://github.com/m4gr3d), qui est rapidement devenu l'un de nos principaux mainteneurs Android. Cela nous a permis de moderniser le code, de résoudre certains problèmes de longue date et d'améliorer le travail initial effectué par Juan.

### L'éditeur

L'éditeur de Godot est l'interface principale du moteur, il a donc attiré beaucoup d'attention de la part de tous les contributeurs. Ce qui suit n'est qu'une partie des plus gros changements.

Il est maintenance possible de [désactiver certaines fonctionnalités de l'éditeur](https://godotengine.org/article/godot-32-will-allow-disabling-editor-features). Cela permet de masquer les fonctionnalités que vous ne voulez pas utiliser et cela simplifie l'interface. Cela peut être utile pour les tuteurs ou les entreprises qui souhaitent restreindre l'accès à certaines zones de l'éditeur afin de permettre à leurs étudiants / équipes de se concentrer sur un sous-ensemble spécifique.

![L'éditeur Godot](https://godotengine.org/storage/app/uploads/public/5ca/bcb/9a1/5cabcb9a1a4ab072608872.png){: .center-image .image-512 }

La prise en [charge de VCS](https://godotengine.org/article/gsoc-2019-progress-report-3#vcs-integration) a été fusionnée et il existe un [plugin Git](https://github.com/godotengine/godot-git-plugin) qui peut être utilisé afin d'activer un support basique de Git dans l'éditeur. C'est le résultat du travail de [Twarit Waikar](https://github.com/IronicallySerious) pour GSoC 2019.

[Erik Selecký](https://github.com/rxlecky) a implémenté une fonctionnalité qui permet de [remplacer la caméra](https://github.com/godotengine/godot/pull/27742) d'un jeu qui tourne par celle de la fenêtre de l'éditeur. Cela signifie que vous pouvez explorer votre jeu qui tourne en utilisant les fonctionnalités de l'éditeur (freelook, inspection des nœuds, etc.).

<video controls=""><source src="https://v.redd.it/p510zrmq92731/DASH_480" type="video/mp4"></video>

Et plein d'autres choses!

### Outil de développement

[Geequlim](https://github.com/Geequlim), avec l'aide de [Ankit Priyarup](https://github.com/ankitpriyarup) (qui participait au programme GSoC 2019), a implémenté le **[protocole LSP](https://github.com/godotengine/godot/pull/29780)** pour le GDScript. Ce protocle permet de fournir l'auto-complétion de code, la documentation et d'autres outils aux éditeurs externes (tels que Sublime Text ou Kate par exemple). À l'heure actuelle, il existe déjà quelques plugins qui utilisent le protocole LSP, notamment pour [VS Code](https://github.com/godotengine/godot-vscode-plugin) et pour [Atom](https://atom.io/packages/lang-gdscript).

L'diteur GDScript intégré a également subit un petit relooking:

- Grâce au travail de [Paul Batty](https://github.com/Paulb23), l'éditeur intégré propose une mini-carte, fonctionnalité demandée depuis longtemps. Il a également ajouté une icône à côté des fonctions qui sont connectées à des signaux (très malin ça).

![Mini-carte](https://user-images.githubusercontent.com/6584330/56457000-36e36200-636c-11e9-9988-4e6796bbd0cd.png){: .center-image }

- [Tomasz Chabora](https://github.com/KoBeWi) a ajouté la prise [en charge de signets](https://github.com/godotengine/godot/pull/28218) dans les scripts pour conserver les références à des lignes spécifiques, ainsi qu'une fonctionnalité qui [évalue et réduit l'expression mathématique](https://github.com/godotengine/godot/pull/31179) qui se trouve sous le curseur.
- En plus du support LSP, Geequlim a amélioré l'auto-complétion de l'éditeur intégré, affichant des [icônes différentes](https://github.com/godotengine/godot/pull/29744) en fonction du type d'objet à compléter (classes, méthodes, propriétés, constantes, etc.).

![Auto-completion](https://user-images.githubusercontent.com/6964556/59157685-7ebb7580-8ae1-11e9-95c0-2b2179985fa8.gif){: .center-image .image-512 }

Pour finir, le **[VisualScript](https://godotengine.org/article/gsoc-2019-progress-report-3#visual-scripting)** a été amélioré par un autre étudiant qui participait lui aussi au GSoC 2019, [Swarnim Arun](https://github.com/swarnimarun).

### 2D: Pseudo 3D, Texture atlas, AStar2D

Juan a implémenté une **[pseudo 3D](https://godotengine.org/article/godot-32-will-get-pseudo-3d-support-2d-engine)** qui permet d'ajouter facilement de la profondeur aux jeux 2D. C'est en superposant plusieurs couches de canevas, et donnant une échelle différente a chacune d'elle que cela a donné un effet de profondeur.

{% youtube "https://youtu.be/CWZvPZ5mGmY" %}

La prise en charge des [textures atlas](https://godotengine.org/article/atlas-support-returns-godot-3-2) est de retour dans Godot 3.2. La disposition des textures est maintenant déterministe (ça c'est vraiment cool), et cela se gère directement depuis l'éditeur.

Dans le même temps, une [variante AStar2D](https://github.com/godotengine/godot/pull/27237) a été implémentée, c'est maintenant plus simplifie de calculer le plus court chemin en 2D.

### GUI: Anchor/margins, les effets RichTextLabel

Après avoir travaillé sur les noeuds `Control` GUI dans Godot 3.0, [Gilles Roudière](https://github.com/Groud) a amélioré l'UX en se basant sur les commentaires des utilisateurs. Il a également fait d'autres changements en ce qui concerne **[l'ancrage et les marges](https://github.com/godotengine/godot/pull/27559)**.

![Ancrage et marge](https://user-images.githubusercontent.com/6093119/55293018-88de3b00-53f1-11e9-99b3-cf63f1ae0094.gif){: .center-image .image-512 }

[Eoin O'Neill](https://github.com/Eoin-ONeill-Yokai) a travaillé sur une fonctionnalité plutôt inattendue mais vraiment cool. Il s'agit d'[ajouter des effets de texte](https://github.com/godotengine/godot/pull/23658) aux `RichTextLabel`. Il est également possible de définir ses propres effets en utilisant les balises BBCode.

### Générateurs audio et analyseur de spectre

Avant de se pencher sur Vulkan, Juan a implémenté des **[générateurs de flux audio](https://godotengine.org/article/godot-32-will-get-new-audio-features)** qui vous permettent de générer facilement des sons en ajoutant des `Vector2` (via la fonction `push_frame`) ou en utilisant de la mémoire tampon (un tableau de `Vector2`). Il a également travaillé sur un **[analyseur de spectre](https://godotengine.org/article/godot-32-will-get-new-audio-features)**.

### Amélioration des décomposition des formes convexes

Grâce à la bibliothèque V-HACD, Godot peut désormais décomposer des mesh concaves en parties convexes précises et simplifiées.

{% youtube "https://youtu.be/jVmG7nVxvoA" %}

Cela simplifie énormément le processus de génération, par ex. formes de collision pour ajouter des collisions à un mesh 3D donné.

## Et beaucoup d'autres fonctionnalités

Nous aimerions profiter de l'occasion pour remercier tous nos incroyables contributeurs pour toutes les autres fonctionnalités géniales apportées depuis la version 3.1, et les centaines de correctifs et améliorations effectuées au cours de 2019. Même si elles ne sont pas répertoriées ici, chaque contribution améliore Godot, et cette version est l'œuvre de centaines de personnes travaillant ensemble vers un objectif et une passion communs.

Pour plus de détails sur les autres modifications de Godot 3.2, veuillez consulter la [liste organisée des changements](https://github.com/godotengine/godot/blob/master/CHANGELOG.md#32---2020-01-29), ainsi que le journal des modifications brut de Git ([chronologique](https://downloads.tuxfamily.org/godotengine/3.2/Godot_v3.2-stable_changelog_chrono.txt) ou [trié par auteurs](https://downloads.tuxfamily.org/godotengine/3.2/Godot_v3.2-stable_changelog_authors.txt)).

## Donner en retour

En tant qu'effort communautaire, Godot compte sur les contributeurs individuels pour s'améliorer. En plus de devenir un [Patron](https://www.patreon.com/godotengine), vous pouvez redonner en: écrivant des rapports de bogues de haute qualité, en contribuant à la base de code, en écrivant de la documentation, en écrivant des tutoriels, et en soutenant les autres sur les [différentes plateformes communautaires](https://docs.godotengine.org/en/latest/community/channels.html) en répondant aux questions et en fournissant des conseils utiles.

Enfin et surtout, faire des jeux avec Godot et créditer le moteur contribue grandement à augmenter sa popularité, et donc le nombre de contributeurs actifs qui l'améliorent au quotidien. N'oubliez pas que nous sommes tous dans le même bateau et Godot a besoin du soutien de la communauté dans tous les domaines pour prospérer.

Maintenant, allez vous amuser avec la 3.2!
