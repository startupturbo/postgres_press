<!-- BEGIN page_title_block -->
PostgreSQL 8.1 Press Kit
<!-- END page_title_block -->

<h1>PostgreSQL 8.1 Press Kit</h1>


<h2>Inhoudsopgave</h2>

<p>
 &nbsp; <a href="#original_release">Tekst van de originele release</a><br />
 &nbsp; <a href="#additional_features">Extra mogelijkheden</a><br />
 &nbsp; <a href="#quoted_companies">Geciteerd bedrijfsinformatie</a><br />
 &nbsp; <a href="#download">Downloaden</a><br />
 &nbsp;	<a href="#docs">Documentatie</a><br />
 &nbsp; <a href="#license">Licentie</a><br />
 &nbsp; <a href="#contact">Contactinformatie</a><br />
 &nbsp; <a href="#companies">Support voor bedrijven</a><br />
 &nbsp; <a href="#additional_software">Additionele software</a><br />
</p>

<a name="original_release"></a><h2>Originele Persmededeling</h2>
<p>8 November 2005, Frankfurt, Duitsland (OpenDBCon): PostgreSQL Globale Development Group kondigt trots de versie van PostgreSQL 8.1 aan, waar verder de positie van PostgreSQL als 's werelds meest geavanceerde database management systeem vergroot. Het is ontworpen, ontwikkelt en getest door een grote community waarbij gesponsord en ondersteund door groeiend aantal bedrijven die het bereik van applicatieontwikkeling van PostgreSQL nog uitbereidt. De nieuwe versie omvat prestatieverbeteringen en geavanceerde SQL eigenschappen die grotere datawarehousen, hoogvolume transactieverwerking en complexer gedistribueerde bedrijfssoftware zal ondersteunen.</p>

<p>Deze nieuwe eigenschappen en mogelijkheden zullen op de vorige versies van het systeem voortbouwen. De versie 8.0 van is in de eerste zeven maanden 1 miljoen keer gedownload vergeleken met 300.000 keer van de vorige versie.</p>

<p>Gezien de groeiende belangstelling in open source software, verwachten dat wij PostgreSQL nog verder groeit.</p>

<h3>De nieuwe geavanceerde mogelijkheden</h3>
<p><b>Roles:</b>PostgreSQL ondersteunt nu database rollen, die het beheer van grote aantallen gebruikers met complexe overlappende databaserechten vereenvoudigen.</p>
<p><b>IN/OUT Parameters:</b> PostgreSQL functies hebben support voor IN, OUT en INOUT parameters, die substantieel de support van complexe logica voor J2EE en .NET toepassingen verbeteren.</p>

<p><b>Two-Phase Commit</b> (2PC): Lang verwachte vereiste van WAN applicaties en heterogene database centrales die PostgreSQL gebruiken, ondersteunt deze versie ACID-compaint transacties over wijd gescheiden servers en services</p>

<h3>Prestatie verbeteringen</h3>

<p><b>Verbeterd Multiprocessor (SMP) Performance:</b> De buffer manager voor 8.1 is zodanig verbeterd dat het bijna lineair opschaalt met het aantaal CPU's en toe leidt  naar significatie prestatie verbeteringen op 8-way, 16-way, dual-core en multi-core CPU servers.</p>

<p><b>Bitmap Scan:</b> Wanneer aangewezen zullen de indexen dynamisch in het geheugen omgezet worden naar bitmaps die de index prestaties twintig keer in complexe queries tegen zeer grote datatabellen versnellen. Daarnaast zal de bovengenoemde de beheerwerkzaamheden versimpelen door het maken van multi-column indexes onnodig te maken.</p>

<p><b>Table Partitioning:</b> De query planner is nu in staat om het scannen van grote secties van een omvangrijke tabel door het Constraint Exclusion techniek te vermijden. Gelijk aan Table Partitioning die in andere database management systemen voorkomt biedt deze mogelijkheid een verbetering op database prestaties en data management voor mulit-gigabyte tabellen.</p>

<p>
<b>Shared Row Locking:</b> De "better than row-level locking" van PostgreSQL ondersteunt nu een hogere niveau van concurrency door de toevoeging van "shared row locks" voor forein keys. "Shared Loacks" zullen het insert en het updateprestaties van velen van OLTP applicaties en toepassingen verbeteren.</p>

<p>
"PostgreSQ; 8.1 biedt een grote prestatieverbetering op onze dual processor Opteron productieservers en meer specifiek zie ik 20% vermindering van tijdbeslag voor het uitvoeren van simpele queries en een extra 20% vermindering in CPU belasting voor 20-40% verbetering van server belasting" aldus Merlin Moncure een databasebeheerder voor Reliable Computer Solutions.</p>

<p>Er zijn meer dan 120 andere verbeteringen, die op onze presskit 8.1 gedetailleerd zijn.</p>

<h3>Over PostgreSQL</h3>
<p>PostgreSQL is het collectieve werk van honderden ontwikkelaars, voortbouwend op bijna twintig jaar van ontwikkeling die bij de Universiteit van Californi&euml; in Berkeley begon. Vanwege eigenschappen als transacties, functies, triggers, en subqueries, wordt PostgreSQL gebruikt door veel van de meest veeleisende ondernemingen en de overheidsector vandaag. PostgreSQL in onder een BSD licentie beschikbaar die gebruik en distributie kosteloos voor zowel commerci&euml;le als niet-commerci&euml;le toepassingen toestaat.</p>

<a name="additional_features"></a><h2>Extra functionaliteiten in deze versie</h2>
Evenals de belangrijkste verbeteringen vermeld in de persmededeling, er zijn meer dan 120 nieuwe verbeteringen bijgedragen door bijna 200 ontwikkelaars voor versie 8.1. Onder hen zijn:
<ul>
<li><b>GiST:</b> PostgreSQL's Generalised Search Tree (GiST) pluggable
indexing mechanism has improved to support the high-speed
concurrency, recoverability and update performance previously
enjoyed only using B-Tree indexes.  De Generalised Search Tree (GiST) pluggable indexing mechanism van PostgreSQL is zodanig verbeterd om "high-spped concurrency", "recoverability" en update percormance die voorheen in B-Tree indexen beschikbaar was te kunnen ondersteunen. GiST is de ruggengraat van het full-text zoekmachine van PostgreSQL's  (TSearch2) en het geospatial (GIS) en tree-structure indexing systeem.  Deze complexe verbetering zal ook op het grootste "high-availability" toepassingen presteren.</li>

<li><b>COPY Refactoring:</b> COPY is vernieuwd voor 30% snellere verwerking van bulk load data en CVS laad verbeteringen. Hiermee is het laden van grote databasen in PostgreSQL sneller dan ooit.</li>

<li><b>64-bit Shared Memory:</b> 
De buffermanager is verbeterd om tot twee terabytes RAM op systemen van 64 bits te kunnen gebruiken die PostgreSQL voor de hoog-geheugenservers van de toekomst voorbereidt.</li>

<li><b>Integrated Autovacuum:</b> PostgreSQL's database maintenance
daemon has been improved and integrated into the main server
program, making PostgreSQL servers simpler to set up and
administer.</li>
<li><b>Faster Aggregates:</b> Geaggregeerde functies zijn verbeterd om reppart queries nog sneller te kunnen uitvoeren. De ontwikkelaars van PostgreSQL hebben beide "memory management" voor aggregatie en "added indexing optimizers" van MIN() en MAX() herschreven.</li>

<li><b>Adminstration Functions:</b> 
de nieuwe functies zijn toegevoegd voor het verkrijgen van serverinformatie en het uitvoeren van basistaken van DBA met de PSQL command-line.</li>

<li><b>Compatibility Functions:</b> lastval(), greatest() en least() functies zijn toegevoegd om het porten van applicaties vanuit MySQL en Oracle te vergemakkelijken.</li>
</ul>

<p>
Meer informatie over verschillende verbeteringen naar 8.1 zijn in de <a href="/docs/current/static/release.html">Release
Notes.</a> te vinden
</p>

<a name="quoted_companies"></a><h2>Geciteerd bedrijfsinformatie</h2>

<p><b>Pervasive Software</b> (NASDQ: PVSW) Verzorgt  data infrastructuur en bedrijven helpt de waarde van hun gegevensinvesteringen te waarborden en voor meer dan twee doordringende decennia, de beste combinatie van prestaties, betrouwbaarheid, functionaliteit, en connectiviteit heeft geleverd. De tientallen duizenden klanten in vrijwel elke industrie, in meer dan 150 landen rond de wereld, vertrouwen zich op Prevasive en  integreren hun kritieke gegevens analyseren en beveiligen. Voor meer informatie, <a href="http://www.pervasive.com/company"> (engels)</a></p>

<p><b>Reliable Computer Solutions</b> verzorgt ERP software en consulting services voor lokale productie bedrijven. We specialiseren ons in complete IT solutions voor  Recreational Vehicle en Manufactured Homes industries. Onze hoofdproduct, ESP,  runt meer dan een miljard dollar productie in de VS.  Voor meer informatie, contact Merlin Moncure (English only): merlin.moncure@rcsonline.com,telefoon: (01) 269-483-1234 x304.</p>

<a name="download"></a><h2>Downloaden?</h2>

<ul>
<li><a href="http://www.postgresql.org/ftp/latest/">Lijst van FTP Mirrors</a></li>
<li><a href="http://www.postgresql.org/download/bittorrent">Bittorrent</a></li>
<li><a href="http://www.postgresql.org/ftp/binary/v8.1.0/win32/">Windows
Installer</a> (ook beschikbaar via Bittorrent)</li>
<li><a href="http://www.postgresql.org/ftp/binary/v8.1.0/">Andere Binaries,
voor Linux, Mac OSX en Solaris</a></li>
<li><a href="http://sourceforge.net/projects/pgsql/">SourceForge</a> (ook 
Windows installer)</li>
</ul>

<a name="docs"></a><h2>Documentatie</h2>

<ul>
<li><a href="/docs/current/static/">Offici&euml;le Documentatie</a></li>
<li><a href="http://techdocs.postgresql.org">Technische Documentatie</a></li>
<li><a href="http://www.varlena.com/GeneralBits">General
Bits</a></li>
</ul>

<a name="license"></a><h2>Licentie</h2>
<p>
PostgreSQL gebruikt de <a href="/about/license">BSD</a> licentie, die vereist slechts 
dat de vergunning gegeven broncode zijn auteursrecht en verlenen van vergunningen 
informatie handhaaft. Deze <a href="http://www.opensource.org/licenses/bsd-license.php">OSI</a>-gecertificeerde vergunning wordt wijd gewaardeerd flexibel en "business-friendly", aangezien het het gebruik van PostgreSQL met commerci&euml;le en merkgebonden toepassingen niet beperkt. Samen met "multi-company" steun en openbare eigendom van de code, maakt de BSD- vergunning PostgreSQL zeer populair met bedrijven die willen een database in hun eigen producten zonder vrees voor prijzen meeleveren.</p>

<a name="contact"></a><h2>Contactinformatie</h2>

<p><a href="http://www.postgresql.org">English-language home page</a></p>

<p>Vragen:<br />
Gevik Babakhani<br />
PostgreSQL Nederland<br />
++31 6 20006265<br />
<a href="mailto:nl@postgresql.org">nl@postgresql.org</a></p>

<p>Voor contactinformatie in andere regio's , zie <a
href="/about/press/contact">onze internationale contacten lijst</a></p>

<a name="companies"></a><h2>Support voor bedrijven</h2>

PostgreSQL geniet van de steun van talrijke bedrijven, die ontwikkelaars sponsoren, hosting middelen verzorgen en ons financi&euml;le steun geven. De grootste sponsors op lange termijn zijn vermeld op onze <a href="/about/sponsors">pagina van ontwikkelingssponsors.</a>

Er is ook een grote gemeenschap van <a href="/support/professional_support">bedrijven met commerci&euml;le PostgreSQL support</a>. Dat zijn individuele adviseurs tot aan multinationale bedrijven.

<a name="additional_software"></a><h2>Links</h2>
<p>
Het PostgreSQL- project wordt uitgebreid door meer dan 100 actieve subprojecten die productie-kwaliteit oplossingen voor replicatie, migratie, verenigbaarheid, interoperabiliteit, grafischeontwerp beleidshulpmiddelen verzorgen.</p>

<h3>Verwante Projecten</h3>

<ul>
<li><a href="http://projects.postgresql.org">pgFoundry</a></li>
<li><a href="http://gborg.postgresql.org">GBorg</a></li>
</ul>

<h3>Drivers</h3>

<ul>
<li><a href="http://jdbc.postgresql.org/">JDBC</a></li>
<li><a href="http://pgfoundry.org/projects/psqlodbc/">ODBC</a></li>
<li><a href="http://gborg.postgresql.org/project/npgsql/projdisplay.php">.Net</a></li>
<li><a href="http://search.cpan.org/~rudy/DBD-Pg-1.32/Pg.pm">Perl DBI</a></li>
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
<li><a href="http://www.pgadmin.org/">pgAdmin III</a></li>
<li><a href="http://phppgadmin.sourceforge.net/">phpPgAdmin</a></li>
<li><a href="http://www.pgaccess.org/">pgAccess</a></li>
<li><a href="http://techdocs.postgresql.org/guides/GUITools">List of other
GUIs</a></li>
</ul>

<h3>Replicatie</h3>

<ul>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
</ul>
