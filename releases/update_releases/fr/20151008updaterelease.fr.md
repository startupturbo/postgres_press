2015-10-08 Correctif de sécurité
================================

Le PostgreSQL Global Development Group a publié une mise à jour de toutes les versions maintenues du système de gestion de bases de données.
Cette mise à jour inclut les versions 9.4.5, 9.3.10, 9.2.14, 9.1.19 et 9.0.23.
Elle corrige deux failles de sécurité, et les bogues découverts au cours des 4 derniers mois.
Les utilisateurs vulnérables aux failles de sécurité doivent procéder à la mise à jour le plus vite
possible.
Les autres peuvent utiliser la prochaine fenêtre de maintenance programmée pour procéder à la mise à jour.

Il s'agit également de la dernière version corrective pour la branche 9.0.


Correctifs de sécurité
----------------------

Deux failles de sécurité ont été corrigées. Elles concernent les utilisateurs des fonctionnalités
suivantes :

CVE-2015-5289 : les valeurs json ou jsonb en entrée, construites à partir de saisies utilisateurs aléatoires, peuvent entraîner un crash de PostgreSQL et un déni de service.

CVE-2015-5288 : La fonction crypt() incluse dans le paquet d'extension optionnel pgCrypto peut être exploitée pour lire quelques octets supplémentaires de mémoire. Aucun exploit fonctionnel n'a été développé pour cette faille.
 
Le projet PostgreSQL est redevable à Josh Kupershmidt et Oskari Saarenmaa pour la découverte de ces failles.

Cette mise à jour désactive également la renégociation SSL par défaut. 
Auparavant, elle était activée par défaut.
La renégociation SSL sera complètement supprimée des versions de PostgreSQL postérieures à la 9.5.


Autres correctifs et améliorations
-----------------------------------

En plus de ce qui précède, d'autres problèmes, remontés par les utilisateurs au cours des derniers
mois, ont été corrigés.

Citons :

* Empêcher les expressions rationnelles imbriquées et comparaisons LIKE et SIMILAR de crasher le serveur ;
* De nombreux autres correctifs de gestion des expressions rationnnelles ;
* S'assurer que ALTER TABLE positionne tous les verrous pour les modifications de contraintes ;
* Nettoyer les sous-transactions pour éviter les crashs serveur en cas d'échec d'un curseur ;
* Éviter les deadlocks lors d'insertions dans les WAL lorsque commit_delay est défini ;
* Correction du verrouillage lors de l'actualisation de vues modifiables ;
* Éviter la corruption de l'« init file » du cache des relations ;
* Amélioration de la performance des résultats des requêtes SPI volumineuses ;
* Amélioration du temps de démarrage du LISTEN ;
* Désactivation de la renégociation SSL par défaut ;
* Diminution de la valeur minimale des paramètres *_freeze_max_age ;
* Limitation de la valeur maximale des wal_buffers à 2 Go ;
* Se prémunir des possibles dépassements de piles en différents endroits ;
* Correction de la gestion de DOW, DOY dans les dates saisies en entrée ;
* Permettre aux requêtes à expressions rationnelles d'être annulées plus rapidement ;
* Correction de bogues du planificateur ;
* Correction de plusieurs problèmes d'arrêt du postmaster ;
* Rendre l'autovacuum de prévention du wraparound plus robuste ;
* Correction de quelques problèmes mineurs sur les index GIN et SP-GiST ;
* Correction de différents problèmes sur PL/Python, PL/Perl et PL/Tcl ;
* Amélioration du ramasse-miettes de pg_stat_statements ;
* Amélioration de la gestion des collations dans pgsql_fdw ;
* Amélioration de la gestion par libpq des conditions de dépassement mémoire ;
* Éviter le crash de psql quand il n'y a pas de connexion établie ;
* Diverses corrections de pg_dump, dont les permissions sur les fichiers et objets ;
* Amélioration de la gestion des privilèges lors de sauvegardes de bases d'anciennes versions de PostgreSQL ;
* Corrections spécifiques aux plateformes Alpha, PPC, AIX et Solaris ;
* Correction de problèmes au démarrage sous Windows en locale Chinoise ;
* Correction du script Windows install.bat pour gérer les espaces dans les noms de fichiers ;
* Rendre disponible aux extensions le numéro de version de PostgreSQL au format numérique.

Cette version contient également la mise à jour 2015g de tzdata, avec les correctifs pour les Iles Caïmans, Fidji, La Moldavie, le Maroc, Norfolk Island, la Corée du Nord, La Turquie, l'Uruguay, et la nouvelle zone America/Fort_Nelson.


Dernier correctif pour la version 9.0
-------------------------------------

9.0.23 est la dernière mise à jour pour la branche 9.0. Comme prévu, cette branche arrive en fin de vie. 
Les prochaines mises à jour de sécurité n'inclueront plus la version 9.0.
C'est pourquoi les utilisateurs de cette branche sont encouragés à passer à une version plus récente dès que possible.
Pour plus d'informations sur la politique de support de la communauté et les échéances de fin de
vie, on peut se référer à la page [Politique de versions](http://www.postgresql.org/support/versioning/).


Mise à jour
-----------

Toutes les mises à jour de PostgreSQL sont cumulatives.
Comme pour les autres versions mineures, il n'est pas nécessaire d'extraire et recharger les bases ou d'utiliser pg_upgrade pour appliquer cette mise à jour. Il suffit d'arrêter PostgreSQL, et de mettre à jour les binaires.

Les utilisateurs qui auraient laissé passer plusieurs mises à jour auront éventuellement quelques étapes post-mise à jour à effectuer.

Pour les détails, on peut se référer aux notes de versions.

Liens:
  * [Téléchargement](http://www.postgresql.org/download)
  * [Notes de version](http://www.postgresql.org/docs/current/static/release.html)
  * [Page de sécurité](http://www.postgresql.org/support/security/)


