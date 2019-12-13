---
layout: tutoriel
title: "tuile de tilemap animée"
description: >-
  comment mettre des sprites animés dans un tilemap
categories: tutoriel
by: SoloCodeNet
tags:
- tilemap
- animatedSprite
- resources
- 3.1
niveau: Facile
icon: "code-branch"
---

## créer une tuile animée dans un tilemap:
Si vous voulez conserver le principe de tilemap, mais agrémenter visuellement vos tuiles vous pouvez ajouter de l'animation directement. Pour ce faire il faudra utiliser une ressource qui va être chargée dans notre tilemap. 

dans le système de fichier, faites un clic droit n'importe où, et choisissez "**nouvelle ressource**"

![creation de ressource](/assets/img/2019-1212-13-tutoriel-solocodenet-ressources.gif){: .center-image }

une fenêtre "**créer une nouvelle ressource**" va s'ouvrir et sélectionner **animatedTexture**
il vous sera demandé alors de *nommer* puis de *définir l'emplacement* de la ressource que vous allez créer. l'objet devra être enregistré en **.tres**

![AnimatedTexture](/assets/img/2019-1212-13-tutoriel-solocodenet-create_new.png){: .center-image }

oui fois validé, vous trouverez dans l'inspecteur votre ressource **AnimatedTexture**

![AnimatedTexture_create](/assets/img/2019-1212-13-tutoriel-solocodenet-inspector.png){: .center-image }

vous voyez un sprite noir pour le moment avec en propriété 
 - frames *(pour définir combien d'images vont définir l'animation)*
 - FPS *(pour définir la vitesse de l'animation).*
 Et en dessous frame 0 ou vous aller commencer à insérer votre première image d'animation.

![AnimatedTexture_working](/assets/img/2019-1212-13-tutoriel-solocodenet-anim.gif){: .center-image }

Votre ressource est maintenant crée. il n'y a rien à faire de spécial pour l'enregistrer, c'est automatique.

Retournez dans votre tilemap créez un tileset si cela n'a pas déjà été fait et dans le petit plus en bas à gauche, allez chercher votre ressource 

![add_animatedTexture](/assets/img/2019-1212-13-tutoriel-solocodenet-plus.png){: .center-image }

une fois sélectionné ça devient une tuile comme les autres, a vous de caler votre région. et voilà vous avez crée une tuile animée. 

vidéo du tuto : 

{% youtube "https://youtu.be/b5JbUR3B1vU" %}