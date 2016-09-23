4 Februari 2008, New York, NY: De PostgreSQL Global Development Group kondigde vandaag 
versie 8.3 aan van het krachtige object-relationele database systeem. Deze versie bevat 
een record aantal nieuwe features en verbeteringen die PostgreSQL beter in het gebruik 
maken voor applicatie ontwikkelaars, database beheerders en gebruikers, met meer dan 280 
veranderingen door tientallen PostgreSQL ontwikkelaars uit 18 landen. 

"De voortdurende evolutie van de open source PostgreSQL database geeft gebruikers de 
mogelijkheid om een non-proprietaire RDBMS in te zetten en zodoende geld te besparen, 
prestaties te verbeteren, en productiviteit te verhogen. PostgreSQL 8.3 is een indrukwekkende
 nieuwe versie en wij raden klanten wereldwijd aan het te onderzoeken", aldus Rich Green, 
executive vice president van software bij Sun Microsystems. 

Versie 8.3 is meer consistent in prestaties dan vorige versies, zodat elke gebruiker kan 
rekenen op vergelijkbare resultaten als in recente benchmarks, voor iedere transactie, in 
piekuren of niet, zeven dagen per week, 52 weken per jaar. Belangrijke verbeteringen zijn 
onder andere: 

- Heap Only Tuples (HOT), elimineert 3/4 van onderhouds-overhead voor vaak bijgewerkte tabellen 
- Spread checkpoints, vermindert het effect van checkpoints tijdens piekuren 
- Asynchronous commit optie, voor een veel betere response tijd bij bepaalde transacties 

Deze veranderingen zorgen voor een aanmerkelijke versnelling van transactie verwerking (throughput), 
tussen 5% en 30%, afhankelijk van serverbelasting. 

"PostgreSQL is slimmer geworden", aldus Bruce Momjian, een PostgreSQL Core Team member. 

PostgreSQL is de eerste open source database die Synchronized Scan implementeert, hetgeen I/O voor 
datamining drastisch vermindert. Het Windows team maakte het mogelijk PostgreSQL met Visual C++ te 
compileren, waardoor stabiliteit en performance op Windows is verbeterd, en het project toegankelijker 
is voor windows ontwikkelaars. Nieuwe logging opties zijn toegevoegd en de overhead van de Statistics 
Collector is verminderd om het overzien van uw servers gemakkelijker te maken. 

En het zou natuurlijk geen echte PostgreSQL release zijn zonder vele nieuwe mogelijkheden voor 
softwareontwikkelaars, onder andere: 

- ANSI-standaard SQL/XML ondersteuning, onder andere XML export 
- Text search: onze geavanceerde full text search tool, TSearch2, is in de core distributie geïntegreerd, 
  met beter management en nieuwe talen en taalbibliotheken 
- GSSAPI en SSPI authenticatie ondersteuning 
- Nieuwe data types: UUIDs, ENUMs en arrays van composite types 

"Wij verwerken meer dan 18.000 queries per seconde op meer dan 300GB gebruikersgegevens op onze PostgreSQL 
servers, en die aantallen worden elke maand groter", aldus Gavin Roy, CTO van social networking 
site MyYearbook.com. "We zijn zeer enthousiast over HOT, de shared buffer scan verbeteringen, en de 
geintegreerde tsearch indexing." 


Naast de vele nieuwe core features zijn verschillende nieuwe optionele software componenten tijdens het 
ontwikkelen van PostgreSQL 8.3 verbeterd en inmiddels als versie 1.0 beschikbaar. Dit zijn onder andere 
SNMP understeuning, horizontale schaalbaarheid oplossingen als PL/Proxy, pgPool-II en Bucardo, een 
grafische debugger voor stored procedures, en een connection pooler: pgBouncer. Deze aanwinsten maken 
de al rijke lijst van accessoire software nog aantrekkelijker. 

Er zijn nog tientallen extra features en verbeteringen in 8.3 die van PostgreSQL een een nog krachtiger 
database platform maken. Zie de press kit voor meer informatie. 


Over PostgreSQL: PostgreSQL is het collectieve werk van honderden ontwikkelaars, voortbouwend op meer 
dan twintig jaar ontwikkeling die begon bij de Universiteit van Californië, Berkeley. Mede vanwege 
enterprise-level transactie features en schaalbaarheid wordt PostgreSQL gebruikt door veel van de meest 
veeleisende ondernemingen en overheidsinstellingen. PostgreSQL wordt onder een BSD licentie uitgegeven 
die kosteloos gebruik en distributie toestaat voor zowel commerciële als niet-commerciële toepassingen. 
Lees meer op onze website www.postgresql.org en www.postgresql.nl. 


Contactinformatie
Nederlandse PostgreSQL Website: www.postgresql.nl

PostgreSQL home page (English): www.postgresql.org

Vragen:
Gevik Babakhani
PostgreSQL Nederland
+31620006265
nl@postgresql.org 
