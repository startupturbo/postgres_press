<!-- BEGIN page_title_block -->
PostgreSQL 8.2 Press Kit
<!-- END page_title_block -->

<h1>PostgreSQL 8.2 Press Kit</h1>

<h2>Contents</h2>

<p>
 &nbsp; <a href="#original_release">Tekst van de originele release</a><br />
 &nbsp; <a href="#additional_features">Extra mogelijkheden</a><br />
 &nbsp; <a href="#download">Downloaden</a><br />
 &nbsp;	<a href="#docs">Documentatie</a><br />
 &nbsp; <a href="#license">Licentie</a><br />
 &nbsp; <a href="#contact">Contactinformatie</a><br />
 &nbsp; <a href="#companies">Support voor bedrijven</a><br />
 &nbsp; <a href="#additional_software">Additionele software</a><br />
  &nbsp; <a href="#translations">English Version</a><br />
</p>


<a name="original_release"></a><h2>Originele Persmededeling</h2>
<p><b>5 December 2006, Washington DC (LISA conference):</b>PostgreSQL Global Development Group kondigt vandaag de 
versie 8.2 van het PostgreSQL aan. Deze 14de openbare versie bevat nieuwe 
eigenschappen en prestatiegerichte verbeteringen die door de zakelijke 
gebruikers zijn gevraagd, waardoor de beheersbaarheid met de commerci&euml;le 
database systemen kan worden vergeleken. De verwachting is dat 
versie 8.2 meer migraties naar PostgreSQL aanmoedigt.
</p>

<p>"Deze release raakt bijna alle aspecten van PostgreSQL aan. Het voegt 
uitgebreide- compatibele syntax en interfaces toe die door onze 
gemeenschap zijn gevraagd. Hierdoor wordt het voor nieuwe DBA’s makkelijker 
om alle geavanceerde mogelijkheden van PostgreSQL te kunnen gebruiken" aldus 
Bruce Momjian een PostgreSQL core team member en EnterpriseDB database architect.</p>

<p>
Onderstaande zijn de nieuwe tools die het beheer van PostgreSQL doen vergemakkelijken:</p>

<p><b>Performance verbeteringen: </b>versie 8.2 is rond 20% verbeterd met high-end 
OLTP (online transaction processing) systeem testen. Hiermee kunnen gebruikers nog 
meer winst behalen in data warehousing efficiency. De verbeteringen bevatten snellere 
in-memory en on-disk sortering, betere multi-processor schaalbaarheid, betere 
planning van potenti&euml;le data queries, snellere bulk loads en versnelde outer joins.
</p>

<p><b>Warm Standby Databases:</b>  Door en extensie op onze Point in Time Recovery 
module, de beheerders kunnen nu zorgeloos een failover kopie 
van de database cluster maken. </p>

<p><b>Online Index Builds:</b> Het is nu mogelijk om tijdens het schrijven van data 
naar de database nieuwe indexen aan te maken of de bestaande indexen te verversen. Hiermee wordt 
de performance tuning zonder downtime mogelijk gemaakt.</p>

<p><b>SQL 2003 Features:</b>  Met deze versie worden enkele nieuwe SQL 2003 standaards 
geïntroduceerd. Deze zijn namelijk: statistical aggregates, multi-row VALUE 
statments, UPDATE RETURNING en multi-column aggregates.</p>

<p>De volgende geavanceerde database mogelijkheden worden door PostgreSQL als 
de eerste en enige aangeboden.</p>

<p><b>Generalized Inverted Indexes:</b> ondersteuning voor een schaalbare en 
programmeerbare wijze van voor indexeren van semi-gestructureerde en full text data.</p>

<p><b>DTrace:</b> PostgreSQL bevat een "Generic Monitoring Framework" waarbij 
geavanceerde tracing zoals DTrace van Solaris mogelijk wordt gemaakt.</p>


<p>Er zijn tientallen verbeteringen en nieuwe toevoegingen in 8.2 
waarmee een PostgreSQL DBA helpen meer productieve te zijn. 
Hieronder staan enkele daarvan. PostgreSQL kan via onze <a href="/download">download pagina</a> worden 
gedownload.</p>

<p><b>Over PostgreSQL:</b> PostgreSQL is het collectieve werk van honderden 
ontwikkelaars, voortbouwend op bijna twintig jaar van ontwikkeling die bij 
de Universiteit van Californi&euml; in Berkeley begon. Vanwege eigenschappen 
als transacties, functies, triggers, en subqueries, wordt PostgreSQL gebruikt door 
veel van de meest veeleisende ondernemingen en de overheidsector vandaag. PostgreSQL 
in onder een BSD licentie beschikbaar die gebruik en distributie kosteloos voor zowel 
commerci&euml;le als niet-commerci&euml;le toepassingen toestaat.</p>



<a name="additional_features"></a><h2>Extra functionaliteiten in deze versie</h2>
Naast de genoemde verbeteringen zijn er nog meer dan 200 nieuwe eigenschappen en 
verbeteringen die door tientallen ontwikkelaars voor versie 8.2 zijn bijgedragen. 
Hieronder treft u enkele daarvan:
<ul>
<li>Advisory Locks: De mogelijkheid op vanuit de applicatie, database objecten te controleren door de locking engine</li>
<li>Selective pg_dump: De mogelijkheid om data via regular expressions in een transactieconsistente wijze te kunnen exporteren.</li>
<li>Prepared Statements: Een nieuwe beheerinterface en performance verbeteringen voor prepared statements.</li>
<li>ISN/ISBN: Deze module ondersteunt ISN/ISBN datatype. Daarnaast is het naar laatste standaarden bijgewerkt.</li>
<li>Cryptography: De pgcrypto module, die cryptography binnen database ondersteunt, is naar laatste algoritmen bijgewerkt.</li>
<li>SQL verbeteringen: Een nieuwe ownership en permission commando’s zijn toegevoegd om de database beheer te vergemakkelijken. Daarnaast zijn de UPDATE RETURNING, DROP IF EXISTS, ON COMMIT aan PostgreSQL toegevoegd.</li>
<li>PSQL Batch Selection: Met de verbetering is het mogelijk gemaakt om een set, in kleine batches in plaats van alles in een keer naar de console terug te geven</li>
<li>ECPG Refactor: De embedded PostgreSQL C interface is volledig herschreven. Daarnaast zijn er voor deze module nieuwe interfaces toegevoegd.</li>
<li>Grote TSearch2 verbeteringen: ondersteuning voor UTF-8, synoniemen, query rewriting support en GIN indexering.</li>
<li>PL/Python: supports voor named parameters en set returning functies.</li>
</ul>
<p>Door de uitbreidbare architectuur van PostgreSQL zijn er en grote aantal 
extensies beschikbaar. Dit zijn onder andere procedurele programmeertalen, 
interfaces naar externe systemen, nieuwe indextypen en replicatie tools dat op 
de community website van PostgreSQL zijn gehost. De volgende community projecten 
hebben significant aan de uitgave van versie 8.2 bijgedragen.</p>
<ul>
<li>Full Disjunctions: Dankzij Google Summer of Code, PostgreSQL is de eerste database systeem dat deze nieuwe en extreme join algoritme implementeert.</li>
<li>PGPoolII: PGPool, Door de Japanse overheid gesponsord, heeft dit project nieuwe load-balancing and partitioning mogelijkheden.</li>
<li>PL/Java: one of our two Java procedural languages has reached full production status, allowing full utilization of Java inside the database.</li>
</ul>

<p>
Meer informatie over verschillende verbeteringen naar 8.2 zijn in de <a href="/docs/current/static/release.html">Release
Notes</a> te vinden 
</p>

<a name="download"></a><h2>Downloaden?</h2>

<ul>
<li><a href="/ftp/latest/">List of FTP Mirrors</a></li>
<li><a href="/download/bittorrent">Bittorrent</a></li>
<li><a href="/ftp/binary/v8.2.0/win32/">Windows
Installer</a> (also available via Bittorrent)</li>
<li><a href="/ftp/binary/v8.2.0/">Other Binaries,
including Linux, Mac OSX and Solaris</a></li>
<li><a href="/projects/pgsql/">SourceForge</a> (including
Windows installer)</li>
</ul>

<a name="docs"></a><h2>Documentation</h2>

<ul>
<li><a href="/docs">Offici&euml;le Documentatie</a></li>
<li><a href="/docs/techdocs">Technische Documentatie</a></li>
<li><a href="/about/press/faq">Veel gestelde vragen</a></li>
</ul>

<a name="license"></a><h2>Licentie</h2>
<p>
PostgreSQL gebruikt de <a href="/about/license">BSD</a> licentie, die vereist slechts 
dat de vergunning gegeven broncode zijn auteursrecht en verlenen van vergunningen 
informatie handhaaft. Deze <a href="http://www.opensource.org/licenses/bsd-license.php">OSI</a>-gecertificeerde 
vergunning wordt wijd gewaardeerd flexibel en "business-friendly", aangezien het het 
gebruik van PostgreSQL met commerci&euml;le en merkgebonden toepassingen niet beperkt. 
Samen met "multi-company" steun en openbare eigendom van de code, maakt de BSD- vergunning 
PostgreSQL zeer populair met bedrijven die willen een database in hun eigen producten 
zonder vrees voor prijzen meeleveren.</p>


<a name="contact"></a><h2>Contactinformatie</h2>

<p><a href="http://www.postgresql.nl">Nederlandse PostgreSQL home page</a></p>
<p><a href="http://www.postgresql.org">PostgreSQL home page (English)</a></p>

<p>Vragen:<br />
Gevik Babakhani<br />
PostgreSQL Nederland<br />
+31620006265<br />
<a href="mailto:nl@postgresql.org">nl@postgresql.org</a>
</p>

<p>Voor contactinformatie in andere regio's , zie <a
href="/about/press/contact">onze internationale contacten lijst</a></p>


<a name="companies"></a><h2>Support voor bedrijven</h2>

PostgreSQL geniet van de steun van talrijke bedrijven, die ontwikkelaars 
sponsoren, hosting middelen verzorgen en ons financi&euml;le steun geven.
 De grootste sponsors op lange termijn zijn vermeld op 
 onze <a href="/about/sponsors">pagina van ontwikkelingssponsors.</a>

Er is ook een grote gemeenschap van <a href="/support/professional_support">bedrijven met 
commerci&euml;le PostgreSQL support</a>. Dat zijn individuele adviseurs 
tot aan multinationale bedrijven. De Nederlandse bedrijven zijn op <a href="http://www.postgresql.nl">www.postgresql.nl</a> 
te vinden.

<p><a href="/about/donate">Donaties</a> graag geaccepteerd.</p>

<a name="additional_software"></a><h2>Links</h2>
<p>
Het PostgreSQL- project wordt uitgebreid door meer dan 100 actieve subprojecten die 
productie-kwaliteit oplossingen voor replicatie, migratie, verenigbaarheid, interoperabiliteit, 
grafischeontwerp beleidshulpmiddelen verzorgen.</p>



<h3>Gerelateerde projecten</h3>

<ul>
<li><a href="http://projects.postgresql.org">pgFoundry</a></li>
<li><a href="http://gborg.postgresql.org">GBorg</a></li>
</ul>

<h3>Drivers</h3>

<ul>
<li><a href="http://jdbc.postgresql.org/">JDBC</a></li>
<li><a href="http://pgfoundry.org/projects/psqlodbc/">ODBC</a></li>
<li><a href="http://pgfoundry.org/projects/npgsql">.Net</a></li>
<li><a href="http://search.cpan.org/~dbdpg/DBD-Pg/Pg.pm">Perl DBI</a></li>
<li><a href="http://initd.org/projects/psycopg1">Python</a></li>
</ul>

<h3>Geavanceerde pakketten</h3>

<ul>
<li><a href="http://postgis.refractions.net/">Geographic Information Server (PostGIS)</a></li>
<li><a href="http://openfts.sourceforge.net/">Full Text Search (OpenFTS)</a></li>
<li><a href="http://www.bizgres.org">Business Intelligence/Data Warehousing (Bizgres)</a></li>
</ul>

<h3>Grafisch Gebruikersinterface</h3>

<ul>
<li><a href="http://www.pgadmin.org/">pgAdmin3</a></li>
<li><a href="http://phppgadmin.sourceforge.net/">phpPgAdmin</a></li>
<li><a href="/docs/techdocs.54">Lijst van andere GUIs</a></li>
</ul>

<h3>Replicatie</h3>

<ul>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
</ul>

<a name="translations"></a><h2>Official English Version of this Document</h2>

<p><a href="/about/press/presskit82.html.en">8.2 PressKit</a></p>
