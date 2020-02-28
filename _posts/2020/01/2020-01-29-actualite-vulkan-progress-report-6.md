---
title: "Rapport de progrès Vulkan #6"
layout: actualite
description: >-
  Ça fait un moment depuis le dernier rapport de progrès : j'ai pris des vacances en Novembre
  (ça n'était pas arrivé depuis des années), et Décembre a été jonché de tâches liées au moteur qui se sont accumulées et que j'ai dû traiter. J'ai donc repris le travail sur Vulkan début Janvier, et beaucoup de progrès a déjà été fait.
categories: actualite
by: Juan Linietsky
translated: Clément \"Topy\"
tags:
- Vulkan
original_url: https://godotengine.org/article/vulkan-progress-report-6
icon: cube
---

![Démo lumièsres](https://godotengine.org/storage/app/uploads/public/5e3/0ae/e1a/5e30aee1a2a5a347843703.png){: .center-image }

Ça fait un moment depuis le dernier rapport de progrès : j'ai pris des vacances en Novembre (ça n'était pas arrivé depuis 
des années), et Décembre a été jonché de tâches liées au moteur qui se sont accumulées et que j'ai dû traiter. J'ai donc repris
le travail sur Vulkan début Janvier, et beaucoup de progrès a déjà été fait.

## La pile post-process

La pile post process a été réécrite et modernisée, cependant elle garde plus ou moins les mêmes fonctionnalités que Godot 3.x. Il lui manque
encore quelques fonctionnalités mineures (comme l'ajustement de l'espace colorimétrique à l'aide de textures 3D), mais tout est
presque déjà en place.

## Réécriture de l'auto-exposition

Grâce à `Compute`, le code de réduction de luminance, nécessaire à l'auto-exposition, a été réécrit à l'aide de la réduction parallèle.
Cela permet de déterminer la luminance plus rapidement et de manière plus précise dans une scène.


![HTML5 projet exportation](https://godotengine.org/storage/app/uploads/public/5e3/0a6/083/5e30a6083a68f545209322.png){: .center-image }

Bien que tout ça ait des allures de [magie noire](https://developer.download.nvidia.com/assets/cuda/files/reduction.pdf),
cela montre la puissance des optimisations possibles à l'aide de Vulkan Compute.

![HTML5 projet exportation](https://godotengine.org/storage/app/uploads/public/5e3/0a4/227/5e30a42277c74335481239.png){: .center-image }

Comme toujours, je remercie Matias Goldberg de m'avoir dirigé dans la bonne direction.

## Réécriture de Glow/Bloom

Le code de glow et bloom a été réécrit. Il fonctionnait déjà très bien dans Godot 3.x, peu de choses ont donc changé.

La principale nouveauté est un nouveau mode Mix qui, bien qu'il ne soit pas physiquement correct, permettra aux artistes de l'utiliser
plus facilement et d'obtenir des résultats visuellement plus jolis.

![Glow/Bloom](https://godotengine.org/storage/app/uploads/public/5e3/0a6/fd9/5e30a6fd96443088839655.jpeg){: .center-image }

## Nouvel effet de profondeur de champ

Un nouvel effet de profondeur de champ est disponible. Il est bien plus rapide et joli que celui présent dans Godot 3.x.
Par défaut, il utilise une forme de Bokeh hexagonale approximative, qui peut être circulaire pour les appareils plus haut-de-gamme.

{% youtube "https://youtu.be/RIiRHD2Aoz0" %}

## Nouvel effet d'occlusion ambiante de Screen Space

L'effet d'occlusion ambiante de Screen Space a été porté depuis Godot 3.x, avec quelques modifications pour en améliorer la 
qualité. En plus d'avoir été réécrit pour utiliser `Compute`, il supporte également le rendu à demi résolution 
(une fonctionnalité très demandée par les utilisateurs, étant donné que SSAO dans Goot 3.x est considérablement coûteux). 
Lorsque cette fonction est activée, l'occlusion est augmentée à l'aide d'un filtre intelligent qui préserve les bords, 
de sorte que la perte de qualité est beaucoup moins perceptible.

![HTML5 projet exportation](https://godotengine.org/storage/app/uploads/public/5e3/0aa/4d2/5e30aa4d2ecb4011191498.png){: .center-image }

## Anti-alisaing spéculaire

Étant donné que Godot n'utilise pas le TAA (`Temporal Anti Aliasing`), et qu'il ne le fera probablement jamais 
(en raison de la charge énorme que cela représente pour les utilisateurs d'un moteur de jeu généraliste de 
gérer les vecteurs de mouvement dans leurs shaders), la réduction de l'aliasing spéculaire doit se faire 
par d'autres moyens.

De ce fait, il est maintenant possible d'associer une texture de rugosité à une texture normale, ce qui permettra 
d'ajuster la rugosité en fonction de la variance de normale de mipmap. Godot détecte automatiquement l'utilisation 
des deux textures dans une teinte et fixe automatiquement la texture de rugosité (bien que cela puisse aussi être fait 
manuellement).

Comme ce n'est pas toujours le cas, et que les jeux n'utilisent pas toujours l'une ou l'autre, il est possible 
d'activer cette fonction comme un effet post-processing également.

<video src="https://godotengine.org/storage/app/media/antialias.mp4" controls />{: .center-image }

## Le futur

Nous avons prévu de terminer, en février, les fonctionnalités qui n'ont pas encore été portée depuis Godot 3.x. 
Cela comprend la diffusion sous la surface (`Subsurface Scattering` en anglais) (meilleur rendu de la peau humaine), et les réflexions Screen Space. Après ça, toutes les nouvelles fonctionnalités et optimisations prévues seront enfin mises en oeuvre!

Comme toujours, gardez à l'esprit que Godot est développé avec amour pour vous tous, 
de sorte que vous disposez d'un outil totalement gratuit et ouvert pour réaliser vos jeux, et les faire entièrement vôtres.
Cela ne pourrait jamais se faire sans nos généreux donateurs, alors si vous ne l'êtes pas encore, pensez à le devenir.
