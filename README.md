# Godot-Engine-Francophone

Site statique utilisant Jekyll.

## Branche principale
La branche principale est la branche `gh-pages`. Elle est nommée ainsi pour signaler que c'est la branche de rendu `github pages`.

### Pourquoi ne pas avoir utilisé la branche `master`?
La branche `master` est utilisée automatiquement par github pour afficher le site web. Il n'est pas possible de changer de branche, c'est imposé par github.
Normalement github pages prend en charge jekyll. Cependant comme nous utilisons le plugin `jekyll-pagination-v2` qui n'est pas
supporté par github pages, nous ne pouvons pas utiliser le jekyll offert par github pages.
Pour palier à ce problème, nous avons mis en place un système d'intégration continue.

### L'intégration continue
Le fichier `.travis.yml` permet de définir l'intégration continue du projet.
L'utilisation de travis pro est gratuite car il s'agit d'un projet libre de droit.
L'intégration continue de Travis permet de générer, en utilisant jekyll et tout ses plugins, le réperoitre `_site` qui est ensuite
publié automatiquement sur la branche `master` de ce repository git.
En faisant ainsi, la branche `master` ne contient que des fichiers générés et donc, pousser manuellement sur la branche `master` reviendrait a casser le site web.

Voici l'url de travis pour le suivi de l'intégration continue:
https://travis-ci.com/Godot-Engine-Francophone/godot-engine-francophone.github.io

## Comment publier un article?

### Trouver le bon template
Le répertoire `_templates` contient un fichier pour chaque genre d'article que vous pouvez publier.
Ainsi, pour publier un article d'actualité, vous prendrez une copie du fichier `0000-00-00-actualite-example.md` que vous positionnerez dans le répertoire `_posts`

### Bien nommer son article
Avec jekyll, il est nécessaire de nommer ses articles comme suit `AAAA-MM-JJ-categorie-titre.md`.

- `AAAA` - L'année en chiffres, par exemple `2020`
- `MM` - Le mois en chiffres, par exemple `11`
- `JJ` - Le jour en chiffre, par exemple `26`
- `categorie` - Le type d'article que vous allez écrire. Cela doit être un de ceux là: `actualite`, `resource`, `tutoriel`.
- `titre` - Le titre de l'article sans espace, ni accent. Que des caracteres alphanumerique

### Bien placer son article
Une fois que vous avez choisi le modèle d'article et que vous l'avez copié en le renommant au bon format, il vous faut le placer dans un sous répertoire du répertoire `_posts`.
Le premier sous-répertoire concerne les années (2019, 2020...). Le sous répertoire de second niveau concerne les mois (01, 02, ..., 10, 11).

### La rédaction
A cette étape vous êtes libre de commencer a écrire votre article.
Ne pas oublier que seuls les catégories `actualite` et `tutoriel` possèdent un corps. C'est à dire que la catégorie `resource` n'affichera pas le contenu markdown.

### Les en-têtes
Jekyll permet de définir des en-têtes. Ce sont des méta données qui sont utilisées par Jekyll pour générer l'affichage de l'article

Voici un exemple d'en-tête
```yaml
---
layout: ressource
title: "Nom de la ressource"
description: >-
  On peut écrire notre description a cet endroit.
  Sur plusieurs lignes. Il faut bien respecter l'indentation.
  Il est préférable de garder la description relativement courte.
type: Sous titre de la ressource
tag:
- Les tags sont affichés
- Dans les bulles bleues
categories: extensions
lien: https://www.exemple.com/lien-vers-la-ressource
---
```

Sur tous les en-tête, il n'y a que deux champs qu'il ne faut pas modifier: `layout` et `categories`. Tout le reste peut être modifié.
Ces deux champs permettent de définir comment afficher l'article puis de les trier pour la pagination.

### Ajouter des images?
Si vous êtes amenés a ajouter des images, ces dernières doivent être placées dans le rérptoire `assets/img`. Puis pour les intégrer a votre article procéder comme suit:
```markdown
![Infobulle de l'image](/assets/img/2019-11-21-actualite-bigorno-titredelimage.jpg){: .center-image }
```
Le top ce serait que les images portent le même nom que l'article. Par exemple si un article se nomme `2019-11-21-actualite-bigorno.md`, l'image devra se nommer `/assets/img/2019-11-21-actualite-bigorno-titredelimage.jpg` par exemple.

### Ajouter une vidéo Youtube?
Ajouter des vidéos Youtube est assez facile à faire. Mettons que vous souhaitiez intégrer cette video `https://www.youtube.com/watch?v=4Wz-uCZd6EE` a votre article ou tutoriel, alors procédez comme suit:
```markdown
{% youtube "https://www.youtube.com/watch?v=4Wz-uCZd6EE" %}
```

## Tester le tout en local

### Prérequis
Premièrement il vous faut cloner le repository github.
Je vous invite a lire [cette documentation complète](https://jekyllrb.com/docs/installation/) qui va vous permettre d'avoir un environnement de développement stable pour Jekyll.

### Comment tester localement
Une fois l'installation de jekyll complété, rendez-vous dans le repository github du site et tapez la commande suivante (si vous êtes sur Linux):
```sh
bundle exec jekyll serve --livereload --watch
```

Une fois que c'est fait, vous pouvez ouvrir cette page http://127.0.0.1:4000/ via votre navigateur.
De là vous pourrez visualiser le site localement.

## Vous rencontrez un problème?

## Vérifiez la date de l'article
Si la date de l'article est dans le futur, alors Jekyll ne l'affichera pas. L'article/tutoriel ne sera disponible que lorsque la **date** de l'article sera **valide** qui est déjà **passée**.
