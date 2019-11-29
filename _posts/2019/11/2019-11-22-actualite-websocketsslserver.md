---
title: Serveur SSL WebSocket, serveur HTTP pour tester les builds HTML5
layout: actualite
description: >-
  De nouvelles améliorations de la couche réseau débarquent avec la 3.2.
  SSL est maintenant pris en charge par WebSocketServer,
  et il vous est possible d'exporter et de tester l'export HTML5 depuis l'éditeur avec un simple clic.
categories: actualite
by: Fabio Alessandrelli 
translated: Xavier Sellier
tags:
- SSL
- Chiffrement
- WebSocket
- Serveur HTTP
- HTML5
- 3.2
original_url: https://godotengine.org/article/websocket-ssl-testing-html5-export
icon: "shield-alt"
---
Salutations Godotteurs et Godotteuses, cet article vient dans la continuïté de mon travail sur le chiffrement dans Godot.
Travail sponsorisé par [Mozilla](https://godotengine.org/article/godot-engine-awarded-50000-mozilla-open-source-support-program).
Dernièrement j'ai travaillé sur une meilleure documentation de la classe [Crypto](http://docs.godotengine.org/en/latest/classes/class_crypto.html),
ainsi que sur l'amélioration du support des WebSocket et l'intégration d'un serveur HTTP à l'éditeur afin de pouvoir tester l'export HTML5 plus simplement.

## Le SSL pour le webSocketServer

Gràce aux dernières améliorations apportées au module WebSocket, le support du chiffrement SSL a été ajouté à la classe [WebSocketServer](http://docs.godotengine.org/en/latest/classes/class_websocketserver.html).

En définissant la `private_key` et le `ssl_certificate` vous activerez automatiquement le chiffrement SSL.

Voic un exemple de code `GDScript` qui crée un serveur WebSocket avec un certificat `self-signed`:

```swift
extends Node

const PORT = 9080
var _server = WebSocketServer.new()

# (Test client)
var _client = WebSocketClient.new()

func _ready():
    # Crée et et définit la clé et le certificat self-signed.
    var crypto = Crypto.new()
    var key = crypto.generate_rsa(4096)
    var cert = crypto.generate_self_signed_certificate(key, "CN=localhost,O=myorganisation,C=IT")
    _server.private_key = key
    _server.ssl_certificate = cert

    # Démarre le serveur.
    _server.connect("client_connected", self, "_connected")
    _server.listen(PORT)

    # (Teste Client) Définit le certificat comme sûr pour la connexion.
    _client.trusted_ssl_certificate = cert
    _client.connect_to_url("wss://localhost:%d" % PORT)

func _process(delta):
    _server.poll()
    _client.poll()

func _connected(id, protocol):
    print("Client connecté!")
```

La documentation de la classe [Crypto](http://docs.godotengine.org/en/latest/classes/class_crypto.html) contient davantage d'informations concernants les clés RSA et la génération de certificats

## Tester l'export HTML5

Il y a de superbes fonctionnalités dans Godot, notamment celle qui permet aux utilisateurs d'exporter leur projet en mode debug pour certaines plateformes.
Dès que vous avez définit [vos modèles d'exportation](https://docs.godotengine.org/en/latest/getting_started/workflow/export/exporting_projects.html), une simple pression sur un bouton suffit pour tester son projet directement sur l'appareil connecté.

![HTML5 projet exportation](https://godotengine.org/storage/app/uploads/public/5de/044/edb/5de044edb1159008949448.png){: .center-image }

Le navigateur web par défaut s'ouvrira dès que vous exporterez votre projet en HTML5. Cependant, les navigateurs modernes empêchent les requêtes asynchrones vers les url de type `file://`. C'est pourquoi nous avons ajouté un serveur HTTP très basique qui n'est là que pour servir les fichiers nécessaires à l'export HTML5.

Il s'agit d'un pas supplémentaire pour permettre aux utilisateurs de profiler les jeux exporter en HTML5 via une connexion en WebSocket.
Restez connecté pour en savoir davantage!

![HTML5 projet test](https://godotengine.org/storage/app/uploads/public/5de/045/0f1/5de0450f18d4a943481630.png){: .center-image }

## Travail effectué

[Ameliorations diverses du support des WebSocket, serveurs SSL et l'ajout d'entêtes personnalisés](https://github.com/godotengine/godot/pull/32683)
[Implementation du serveur HTTP basique lors d'un export HTML5](https://github.com/godotengine/godot/pull/33001)
[Ajout de la documentation des classes liés au chiffrement](https://github.com/godotengine/godot/pull/32285)
