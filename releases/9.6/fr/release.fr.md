29 septembre 2016 : le PostgreSQL Global Development Group a publié aujourd'hui PostgreSQL 9.6, dernière version du système libre de gestion de bases de données SQL de référence.
Cette version va permettre aux utilisateurs de réaliser à la fois une expansion interne (scale up) et externe (scale out, répartition de la charge) de leurs bases de données haute-performance. Les nouvelles fonctionnalités incluent notamment le parallélisme des requêtes, des améliorations sur la réplication synchrone, la recherche par phrase, ainsi que des améliorations sur la performance et la facilité d'utilisation.

Expansion interne avec le parallélisme des requêtes
---------------------------------------------------

La version 9.6 ajoute le support du parallélisme pour certaines opérations dans les requêtes.
Ce parallélisme active l'utilisation de tout ou partie des cœurs de processeur d'un serveur pour retourner les résultats plus rapidement.
Sur cette version, le parallélisme concerne le parcours séquentiel (des tables), les agrégats et les jointures. 
En fonction des caractéristiques et du nombre de cœurs, le parallélisme permet d'espérer des gains jusqu'à un facteur 32 sur des requêtes traitant des volumes importants de données.

"J'ai migré l'intégralité de notre plateforme génomique - soit 25 milliards de lignes issues de MySQL - vers une seule base de données Postgres, en utilisant les possibilités de compression du type JSONB, les excellentes méthodes d'indexation GIN, BRIN et B-tree. Aujourd'hui, avec la version 9.6, j'attends de pouvoir exploiter le parallélisme des requêtes pour améliorer encore plus les performances des requêtes sur les tables volumineuses" indique Mike Sofen, Chief Database Architect chez Synthetic Genomics.

Répartition de charge avec la réplication synchrone et postgres_fdw
-------------------------------------------------------------------

Deux nouvelles options ont été ajoutées à la réplication synchrone de PostgreSQL. Elles permettent de maintenir des lectures cohérentes de données sur les nœuds d'un cluster de bases de données. En premier lieu, il est désormais possible de configurer des groupes de réplication synchrone. En second lieu, le mode "remote_apply" (application distante) crée une vue plus cohérente des données sur les différents nœuds. Ces fonctionnalités utilisent la réplication interne pour maintenir un groupe de nœuds "identiques" afin d'équilibrer la charge de lecture (load-balancing).

Le pilote de fédération de données entre bases PostgreSQL, postgres_fdw, dispose de nouvelles fonctionnalités d'exécution du travail sur le serveur distant. En "externalisant" les tris, les jointures et les mises à jour par lot, la charge peut être distribuée sur plusieurs serveurs PostgreSQL. Ces possibilités seront bientôt ajoutées aux autres pilotes FDW.

"Avec les possibilités d'externaliser les jointures, les mises à jour et les suppressions, les Foreign Data Wrappers
offrent maintenant une solution complète de partage de données entre PostgreSQL et
les autres bases de données. Par exemple, PostgreSQL peut être utilisé pour gérer
en entrée des données qui vont vers des bases de données différentes" indique
Julyanto Sutandang, Director of Business Solutions chez Equnix.

Meilleure recherche de texte avec des phrases
---------------------------------------------

La fonctionnalité de recherche plein texte de PostgreSQL supporte désormais les recherche par phrases. Cela permet une recherche de phrases exactes ou de mots proches les uns des autres, en utilisant l'indexation GIN. Additionnée aux nouvelles fonctionnalités d'optimisation de la recherche textuelle, ces nouvelles fonctionnalités font de PostgreSQL un outil de choix pour la "recherche hybride" mêlant relationnel, JSON et recherche plein texte.

Plus agréable, plus rapide et plus facile à utiliser
----------------------------------------------------

Grâce au retours d'expérience et aux tests effectués par les utilisateurs de PostgreSQL disposant de bases de données de production à fort volume, le projet a pu améliorer de nombreux aspects des performances et de la maniabilité dans cette version. La réplication, les agrégats, l'indexation, les tris et les procédures stockées sont plus efficaces, et PostgreSQL utilise désormais mieux les ressources lorsqu'il est installé sur des noyaux Linux récents. Le surcoût d’administration des tables volumineuses et des charges complexes a été réduit, notamment par des améliorations du VACUUM.

Liens
-----

* [Téléchargments](https://www.postgresql.org/downloads)
* [Dossier de presse](https://www.postgresql.org/about/press/presskit96)
* [Notes de version](https://www.postgresql.org/docs/current/static/release-9-6.html)
* [Les nouveautés de la version 9.6](https://wiki.postgresql.org/wiki/NewIn96)

Contact
-------

Contact presse
France et pays francophones
Stéphane Schildknecht
fr at postgresql dot org
+33 (0) 617 11 37 42

À propos de PostgreSQL
----------------------

PostgreSQL est le système de gestion de bases de données libre de référence. Sa communauté mondiale est composée de plusieurs milliers d'utilisateurs et contributeurs,
et de plusieurs dizaines d'entreprises et institutions.
Le projet PostgreSQL, démarré il y a 30 ans, à l'université de Californie, à Berkeley, a atteint aujourd’hui un rythme de développement sans pareil.
L'ensemble des fonctionnalités proposées est mature et plus riche que ceux des systèmes commerciaux leaders sur les fonctionnalités avancées, les
extensions, la sécurité et la stabilité, offertes à un niveau que seul PostgreSQL atteint.
Pour en savoir plus à propos de PostgreSQL et participer à la communauté : http://www.postgresql.org.

