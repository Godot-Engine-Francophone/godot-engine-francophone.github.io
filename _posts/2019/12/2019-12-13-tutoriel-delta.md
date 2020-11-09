---
layout: tutoriel
title: "Le DELTA c'est quoi?"
description: >-
  À quoi sert le delta que l'on retrouve dans process et à quoi va t il nous servir dans nos jeux
categories: tutoriel
by: SoloCodeNet
tags:
- delta
- gdscript
- ratio
- 3.1
niveau: Facile
icon: "car-side"
---

## Qu'est ce que le DELTA ?

Vous avez surement remarqué dans la méthode `_process()` ou `_physic_process()` l'argument `DELTA` entre les parenthèses. cet argument peu avoir beaucoup d'importance pour uniformiser un déplacement suivant la machine qui exécute le code. Nous allons voir un peu à quoi il correspond.


Tout d'abord regardons quelle est la valeur de delta. 
Dans n'importe quel projet tapez le code suivant:
```swift
func _process(delta):
  print("DELTA: ", delta)
```
La réponse peut varier sur chaque PC, moi personnellement la console affiche `0.016667`
Cette valeur correspond à `1 / 60`. En fait ce facteur c'est le temps passé entre 2 images pour une seconde de runtime. 

## En quoi cela peut nous aider ? 
Lorsque vous utilisez une méthode comme `_process()`, celle ci va s’exécuter à chaque frame, suivant l'importance de votre jeu, le nombre d'éléments à afficher, la qualité graphique ou tout autre méthode pouvant ralentir l’exécution de votre jeu. Pourtant vous voudriez qu'un déplacement soit régulier que votre jeu tourne à 60 FPS ou à 20 FPS. Prenons un exemple concret: 
J'ai juste placé l'icon.png de Godot dans la scène principale et j'ai ajoute ce code:

```swift
func _process(delta):
  var direction:float
  if Input.is_action_pressed("ui_right"): direction = 5.0
  if Input.is_action_pressed("ui_left"): direction = -5.0
  $icon.position.x += direction
```
Dans la fonction boucle `_process()` je récupère juste les touches gauche et droite pour modifier la **position** de mon sprite de 5 pixels. 
Maintenant prenons le temps de comprendre ce qu'il se passe suivant la puissance de notre PC et des latences possibles de notre jeu.
- à **60** FPS x 5 pixels par frame = notre sprite parcourt **300** pixels en une seconde.
- à **90** FPS x 5 pixels par frame = notre sprite parcourt **450** pixels en une seconde.
- à **20** FPS x 5 pixels par frame = notre sprite parcourt **100** pixels en une seconde.

*(FPS : Frames per second - > images par secondes)*

![without delta](/assets/img/tutoriel/2019-12-13-tutoriel-without-delta.png){: .center-image }

Ça serait problématique si dans mon éventuel jeu en réseau l'un incarnait un policier et l'autre un bandit à rattraper ! suivant la puissance de la machine, nous n'avancerions pas à la même distance par seconde. 

C'est là qu'intervient le DELTA, cette valeur est renvoyée par le Moteur lui même dans la boucle principale du jeu et nous donne le temps entre chaque frame, il n'est pas constant et nous permet de nous renvoyer un facteur important. 
- à **60** FPS le delta renvoyé est de **0.016667**
- à **90** FPS le delta renvoyé est de **0.011111**
- à **20** FPS le delta renvoyé est de **0.05**

## Quand l'utiliser ?
maintenant modifions notre code précédent pour celui ci :

```swift
func _process(delta):
  var direction:float
  if Input.is_action_pressed("ui_right"): direction = 100.0
  if Input.is_action_pressed("ui_left"): direction = -100.0
  $icon.position.x += direction * delta
```
*j'ai changé la valeur de 5 à 100 car en multipliant 5 par delta le résultat est beaucoup plus faible*

Si on effectue les calculs maintenant: 
- 100 x 0.016667 = 1.6667 par frame x **60** FPS = **100.02** pixels en 1sec 
- 100 x 0.011111 = 1.111  par frame  x **90** FPS = **99.99**  pixels en 1 sec
- 100 x 0.05 = 5  par frame x **20** FPS = **100** pixels en 1 sec 
  
![with delta](/assets/img/tutoriel/2019-12-13-tutoriel-with-delta.png){: .center-image }

Les résultats parlent d'eux-mêmes, malgré les différences de FPS la distance parcourue en une seconde est la même (les différences sont infimes au centième de pixel et viennent de mes arrondis ) 

Nous pouvons ainsi unifier la vitesse de déplacement quelle que soit la machine hôte, et ainsi avoir quasiment le même rendu malgré les pertes ou les accélérations de FPS.
Le deuxième intérêt de cette méthode c'est que notre valeur de 100 x delta maintenant correspond à une valeur plus facile à décrire pour nous car elle ne représente plus une valeur théorique à chaque frame, mais bel et bien le déplacement précis que va effectuer notre sprite en 1 seconde.


> *Note:*
> Si vous utilisez un kinematicBody il n'est pas nécessaire d'utiliser le DELTA car il est déjà intégré dans les calculs de velocité. 
