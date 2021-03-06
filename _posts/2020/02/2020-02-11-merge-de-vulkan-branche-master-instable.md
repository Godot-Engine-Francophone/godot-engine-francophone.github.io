---
title: "Attention! Merge de Vulkan, branche master instable!"
layout: actualite
description: >-
  Nous fusionnons notre port Vulkan en cours de développement (jusqu’à présent dans la branche Vulkan) dans la branche master
categories: actualite
by: Rémi Verschelde
translated: Topy
original_url: https://godotengine.org/article/headsup-vulkan-merged-master-branch-unstable
tags:
- master
- Vulkan
icon: code-branch
---

![Attention branche master instable](/assets/img/2020-02-11-actu-branche-master-instable.png){: .center-image .image-512 }

Dans la plupart des _workflows_ de développement basés sur Git, la branche `master` par défaut est celle où se fait 
la majeure partie du développement. Il peut s'agir de branches de fonctionnalités bien définies (ou dans notre cas, de 
_Pull Requests_) qui sont fusionnées dans la branche master une fois prêtes, ou de travaux de développement qui se déroulent 
directement sur cette branche. Quel que soit le _workflow_, la branche master sera rarement destinée à être utilisée en 
production, et les utilisateurs sont encouragés à l'utiliser seulement s'ils veulent aider aux tests quotidiens, 
et non s'ils veulent s'en servir pour travailler :)

Comme nous faisons nos versions directement à partir de la branche `master` après une période de stabilisation (gel des 
fonctionnalités, gel des versions, puis bifurcation vers la version 3.2 par exemple lors de la sortie), beaucoup de nos 
utilisateurs sont habitués à utiliser la branche `master` ou un _build de nuit_ pour un usage quotidien.

[Cela change aujourd'hui](https://github.com/godotengine/godot/pull/36098), car nous fusionnons notre **port Vulkan en cours de 
développement** (jusqu'à présent dans la branche Vulkan) dans la branche master.

## Pourquoi fusionner maintenant si la branche est encore en développement ?

Le port de Vulkan n'est pas encore prêt, mais nous devons le fusionner dans la branche principale car de nombreux 
développements futurs prévus pour Godot 4.0 en dépendent.

Nous prévoyons de retravailler beaucoup d'éléments du **noyau** de Godot pour permettre de résoudre des problèmes de conception 
de longue date et d'améliorer les performances (y compris d'améliorer les performances du GDScript). De plus, notre portage 
tant attendu vers le C++ 14 se fera également maintenant que la branche `vulkan` est fusionnée dans le `master`, et de nombreux 
autres gros changements au niveau de la _codebase_ l'attendaient : changements de style de code, division Display/OS, renommage 
des noeuds 3D pour unifier nos conventions, etc.

L'ampleur des changements prévus signifie qu'il serait impossible de faire ces changements dans la branche `master` tout en 
gardant la branche `vulkan` séparée, tout comme il ne serait pas possible de faire tous ces changements dans la branche `vulkan`
elle-même avant de la fusionner dans le `master` : tout _rebase_ ou _merge_ deviendrait extrêmement difficile en raison de la 
quantité de lignes de code qui changeraient.

Jusqu'à présent, nous avons été très prudents en ce qui concerne les changements que nous autorisons dans la branche `vulkan`, 
ainsi que les nouvelles PR que nous fusionnons dans `master`, afin de garantir que la branche `vulkan` puisse toujours être 
rebasée sur `master` pour une fusion ultérieure. Je l'ai rebasée périodiquement au cours des huit derniers mois, et même si 
nous avons été très conservateurs quant à l'ampleur des changements, un _rebase_ complet pourrait facilement me prendre une 
journée entière de travail au cours des mois suivants.

Nous avons donc besoin que tout ce qui se trouve dans la branche principale cesse de nous limiter.

## Quels changements ?

La branche `vulkan` comprend le support préliminaire de l'API graphique Vulkan, que Juan a couvert dans de nombreux [devblogs](https://godotengine.org/devblog) 
(voir par exemple le [dernier rapport d'avancement](https://www.godot-francophone.org/actualite-vulkan-progress-report-6/)).

NdT : _Certains de ces devblogs ont été traduits sur [notre site](https://www.godot-francophone.org/actualite/index.html)._

Dans son état actuel, le port Vulkan ne fonctionne que sur Linux, macOS et Windows. La prise en charge des autres plateformes 
sera rétablie dans les mois à venir, avant la sortie de la version 4.0 alpha.

Les _backends_ GLES2 et GLES3 de Godot 3.2 ont été désactivés car ils ne correspondent pas à la nouvelle conception de l'API 
`RenderingDevice`. Le GLES3 sera finalement complètement supprimé, et le _backend_ GLES2 devra être porté sur la nouvelle API. 
Cela sera également fait dans les mois à venir.

En attendant, cela signifie que la branche `master` utilisera Vulkan et ne pourra créer de _build_ que sur ordinateur pendant 
un certain temps. Merci de nous faire confiance pendant cette période de transition, et soyez assurés que le retour du support 
mobile et web est une priorité. (Notez que les ports de plateforme actuels sont bien sûr toujours inclus dans le dernier 
code, mais sans un _backend_ de rendu correctement configuré, ils ne servent à rien).

## Implications pour les utilisateurs

Si vous êtes un utilisateur "normal" de Godot, rien ne change pour vous. Nous vous recommandons vivement d'utiliser la dernière 
version stable, qui est Godot 3.2. Nous sommes tous excités par Godot 4.0, mais au stade actuel, il est beaucoup plus sain 
d'attendre que les développeurs fassent leur magie. Une fois que nous aurons une version alpha qu'il vaut la peine de tester à 
grande échelle, nous ne manquerons pas de vous le faire savoir :)

Si vous avez besoin de corrections personnalisées pour votre jeu, n'hésitez pas à suivre la branche stable [3.2](https://github.com/godotengine/godot/commits/3.2), 
qui sera utilisée pour toutes les prochaines versions de maintenance 3.2.x.

## Implications pour les contributeurs

Même si elle est moins stable et ne supporte pas toutes les plateformes, la branche `master` reste notre principale branche 
de développement, et toute _Pull Request_ devrait être fusionnée en priorité dans cette branche. Les changements pertinents 
fusionnés dans la branche `master` peuvent éventuellement être _cherry-picked_ dans la branche 3.2 pour les versions de 
maintenance (en particulier les corrections de _bugs_).

Comme les branches `master` et `3.2` divergeront rapidement, les modifications sélectionnées peuvent s'avérer non triviales, 
et il peut donc s'avérer nécessaire pour les PR concernées par la branche `3.2` de voir également une version personnalisée 
pour la branche `3.2`. Cependant, nous vous demandons de vous **concentrer d'abord sur la branche `master`** et de discuter 
avec nous si un PR en particulier y serait bienvenu. Nous ne voulons pas fusionner de nouvelles fonctionnalités ou des 
changements expérimentaux dans la branche 3.2 qui pourraient compromettre sa stabilité.

## Qu'en est-il des _Pull Requests_ en attente ?

En raison du [gel des fonctionnalités](https://github.com/godotengine/godot/issues/31592) pour la récente version 3.2, 
nous avons littéralement des centaines de _Pull Requests_ qui sont en attente de révision/fusion sur le dépôt Godot.

Beaucoup d'entre elles sont pertinentes et mériteraient d'être fusionnées, mais la fusion de la branche `vulkan` et le travail 
de _refactoring_ à venir introduiront des conflits de fusion complexes pour la grande majorité d'entre elles.

Dans l'idéal, nous voudrions résorber ce retard avant de procéder à des changements aussi massifs, mais nous savons par 
expérience que nous n'avons pas la capacité de le faire. C'est un beau problème, mais la popularité de Godot et le nombre 
de PR que nous recevons chaque jour sont extrêmement longs à traiter et il nous faudrait plusieurs mois pour tout gérer 
(tout en nous efforçant de rattraper les dernières PR).

De plus, beaucoup de ces PR sont antérieurs ou n'ont pas suivi notre nouveau [processus de proposition](https://github.com/godotengine/godot-proposals/), 
qui vise à garantir que tous les changements que nous fusionnons sont des ajouts vraiments utiles au moteur et sont soutenus 
par la communauté. L'examen des PR qui n'ont pas été pré-approuvés au stade de l'idée/conception peut être très difficile, 
car nous ne savons pas toujours nous-mêmes si une proposition de code est une bonne idée : nous pouvons examiner le code, 
mais l'examen des cas d'utilisation est une tâche difficile pour laquelle nous avons besoin de l'aide de membres expérimentés 
de la communauté.

Nous en avons discuté lors du Godot Sprint avec les principaux contributeurs fin janvier, et nous avons décidé que 
l'approche suivante était la plus pratique. Nous allons **fermer toutes les PR en attente**, en demandant à leurs auteurs de :

* vérifier si la proposition/le correctif est toujours souhaité/nécessaire dans la branche `master` actuelle ;
* pour les propositions de fonctionnalités, assurez-vous qu'elles ont été approuvées via le dépôt [_godot proposals_](https://github.com/godotengine/godot-proposals/) ;
* le cas échéant, rebasez (ou réimplantez) le patch sur la branche principale actuelle et ouvrez une nouvelle PR (en vous référencant l'ancienne).

Bien que la clôture des RP puisse sembler un peu abrupte, nous demandons à tous les contributeurs de comprendre que cela est 
fait pour nous aider à faire face à la quantité de propositions tout en devant remanier une grande partie de la _codebase_ 
du moteur. Cette clôture ne signifie pas que nous rejetons les PR, ni que nous ne les considérons pas comme des contributions 
valables. Mais en demandant aux auteurs de réévaluer leurs propres propositions et de les rendre compatibles avec Godot 4.0, 
nous gagnerons un temps de développement précieux et nous nous donnerons un peu d'air dans la quantité de PR énorme actuelle.

Les PR fermées porteront l'étiquette "récupérable" (`salvageable`), que nous utilisons pour désigner les PR dont le code 
pourrait être récupéré pour en faire une nouvelle PR mise à jour (et éventuellement améliorée), soit par l'auteur original, 
soit par un nouveau contributeur. Nous ne perdrons donc pas de code au cours du processus, puisque tout sera toujours 
accessible depuis les PR fermées et facilement identifiable grâce à l'étiquette récupérable (`salvageable`).

C'est certainement une période délicate pour les développeurs principaux et les contributeurs, et nous demandons à tous de 
faire preuve de compréhension. Pour ma part, je ressens une obligation morale envers tous les contributeurs de revoir leur 
travail et de le faire fusionner s'il est bon, et cette proposition de nettoyage n'est donc pas une décision facile à prendre 
pour moi, mais je crois que c'est le moyen le plus efficace que nous ayons pour éviter de nous retrouver coincés dans un 
_backlog_ de PR sans fin (comme nous l'étions dans une certaine mesure après la sortie de la version 3.1, même si le _backlog_ 
était alors d'à peine 250 PR...).

**Note :** Nous attendrons quelques semaines avant de fermer tous les PR plus anciens comme indiqué plus haut, car de nombreux 
changements de base de code sont prévus dans les jours à venir. Nous ne voulons pas encourager tous les contributeurs à refaire 
sans cesse leur travail au milieu de ces changements, il sera donc préférable d'envoyer ce signal une fois que la branche 
`master` sera prête à accueillir ces contributions rafraîchies.
