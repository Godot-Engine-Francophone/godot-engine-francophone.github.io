---
layout: tutoriel
title: "Tuile de tilemap animée"
description: >-
  Comment mettre des sprites animés dans un tilemap
categories: tutoriel
by: SoloCodeNet
tags:
- tilemap
- animatedSprite
- resources
- 3.1
niveau: Facile
icon: "layer-group"
---

## Créer une tuile animée dans un tilemap
Si vous voulez conserver le principe de tilemap, mais agrémenter visuellement vos tuiles vous pouvez ajouter de l'animation directement. Pour ce faire il faudra utiliser une ressource qui va être chargée dans notre tilemap. 

Dans le système de fichier, faites un clic droit n'importe où, et choisissez "**nouvelle ressource**"

![creation de ressource](/assets/img/2019-12-13-tutoriel-ressources.gif){: .center-image }

Une fenêtre "**créer une nouvelle ressource**" va s'ouvrir et sélectionner **animatedTexture**
Il vous sera demandé alors de *nommer* puis de *définir l'emplacement* de la ressource que vous allez créer. l'objet devra être enregistré en **.tres**

![AnimatedTexture](/assets/img/2019-12-13-tutoriel-create_new.png){: .center-image }

Oui fois validé, vous trouverez dans l'inspecteur votre ressource **AnimatedTexture**

![AnimatedTexture_create](/assets/img/2019-12-13-tutoriel-inspector.png){: .center-image }

Vous voyez un sprite noir pour le moment avec en propriété 
 - frames *(pour définir combien d'images vont définir l'animation)*
 - FPS *(pour définir la vitesse de l'animation).*
Et en dessous frame 0 ou vous aller commencer à insérer votre première image d'animation.

![AnimatedTexture_working](/assets/img/2019-12-13-tutoriel-anim.gif){: .center-image }

Votre ressource est maintenant crée. il n'y a rien à faire de spécial pour l'enregistrer, c'est automatique.

Retournez dans votre tilemap créez un tileset si cela n'a pas déjà été fait et dans le petit plus en bas à gauche, allez chercher votre ressource 

![add_animatedTexture](/assets/img/2019-12-13-tutoriel-plus.png){: .center-image }

Une fois sélectionné ça devient une tuile comme les autres, a vous de caler votre région. et voilà vous avez crée une tuile animée. 

## Vidéo
{% youtube "https://youtu.be/b5JbUR3B1vU" %}