# Blog

un site de blog personnel basé sur Jsp/Servlet - Site de blog personnel basé sur Jsp/Servlet

## Introduction

Site web de blog java, implémentation autant que possible du modèle mvc, sans utiliser de framework, implémente l'aperçu de la page d'accueil, la publication d'articles, les votes, les commentaires, l'écriture en format Markdown, la catégorisation, les tags, les classements de lecture, la timeline, la gestion du blog par l'administrateur, l'enregistrement des visiteurs, etc.

* Les points de connaissance principaux impliqués sont jsp, servlet, mysql, bootstrap, html/css/js, ajax, json.

* Le pool de connexion de base de données utilise [c3p0](http://www.mchange.com/projects/c3p0/). Vous pouvez configurer le pool de connexion et les informations de base de données dans src/c3p0-config.xml.

### Exécution rapide

1. Configurez src/c3p0-config.xml en modifiant vos informations de base de données et en vous assurant que vous pouvez vous connecter.

2. Exécutez le SQL de création de table pour créer la table src/myblog.sql. Vous pouvez y insérer des données pour faciliter les vérifications.

3. Configurez l'environnement du serveur, tel que Eclipse, Tomcat, et importez tout le démo.

4. Accédez à localhost:xxx/blog/.

### Base de données

La conception de la base de données n'est pas très raisonnable et ne sert que de démo, mais vous pouvez la redessiner. Vous pouvez trouver les fichiers SQL détaillés dans le répertoire src/.

* t_article - Tableau d'articles
* t_article_delet - Tableau d'articles supprimés pour éviter les suppressions accidentelles (mais peu utile)
* t_comment - Tableau de commentaires
* t_tag - Tableau de balises d'article
* t_user - Tableau d'administrateurs
* t_visitor - Tableau d'enregistrement des visites

### Présentation des répertoires

#### Java

* blog/ajax - Servlet recevant les demandes Ajax.
* blog/dao - Classe d'interface de base de données.
* blog/daoImple - Classe d'implémentation de l'interface de base de données.
* blog/db - Opérations de base de données qui ne sont pas liées aux activités principales.
* blog/filter - Filtres.
* blog/junit - Paquet de test.
* blog/model - Paquet de beans.
* blog/service - Service Web.
* blog/servlet - Contrôleur principal du servlet.
* blog/utils - Boîte à outils.

#### Web

* admin - Page Web d'administrateur.
* css - Style.
* editormd - Éditeur Markdown.
* img - Images.
* js - Javascript.
* page - Pages principales.
* upload - Répertoire de téléchargement d'images.

### Bibliothèques tierces utilisées

* mysql-connector-java - Package d'outils jdbc pour mysql.

* c3p0-0.9.5.2.jar - Pool de connexions de base de données c3p0.
* mchange-commons-java.jar.

* commons-beanutils-1.9.3-bin.zip - BeanUtils.
* commons-logging-1.