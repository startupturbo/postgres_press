<!-- BEGIN page_title_block -->
PostgreSQL 8.3 Lijst van features.
<!-- END page_title_block -->

<h1>PostgreSQL 8.3 Lijst van features</h1>

<p>Onderstaande lijst behandelt de meeste, maar niet alle nieuwe features in versie 8.3.  Aangezien er een groot aantal is toegevoegd, zijn de features naar functie gegroepeerd en zijn de beschrijvingen kort gehouden.
  Voor meer detail, zie de documentatie van PostgreSQL en release notes.
Voor een beknoptere lijst zie <a href="/about/featurematrix">feature matrix</a> (Engels).</p>

<h2>Upgrade waarschuwing</h2>

<p>Om de hoge standaard van het PostgreSQL project voor data-integriteit en betrouwbaarheid te waarborgen, hebben we in 8.3 enkele datatype conversies (casts) verwijderd.  Deze refactoring kan problemen geven voor gebruikers voor oudere applicaties die onvoldoende aandacht besteedden aan correcte datatype vergelijkingen.  Voor meer informatie, zie <a href="/docs/8.3/static/release-8-3.html">release notes</a></p>

<h2>Prestaties</h2>

<h3>Consistentie in Prestaties</h3>

<p>De volgende features dragen bij aan een meer consistente responsetijd in PostgreSQL, onafhankelijk van server load:</p>

<dl>
<dt>HOT</dt>
<dd>Heap Only Tuple (HOT): drastische vermindering van onderhouds-overhead van intensief geupdate tabellen, waardoor vacuum minder vaak nodig is en bepaalde applicaties een aanmerkelijk betere throughput te zien geven.</dd>
<dt>Asynchronous Commit</dt>
<dd>Geeft COMMIT de mogelijkheid controle vrij te geven zonder op fysieke disk write te wachten.  Dit resulteert in kortere responsetijd ten koste van potentieel verlies van een vastgestelde hoeveelheid transacties in geval van systeemcrash.</dd>
<dt>Gespreide Checkpoints</dt>
<dd>Checkpoint autotuning: vertraging en spreiding van checkpoints, zodat het effect op responsetijd vermindert.</dd>
<dt>Just-in-time background writing strategy</dt>
<dd>Auto-tuning voor de Background Writer schat hoeveel buffers weg te schrijven op basis van recente activiteit.</dd>
</dl>

<h3>Snelheids Verbeteringen</h3>

<p>Vele nieuwe features zorgen voor grotere snelheid van specifieke onderdelen, onder andere:</p>

<dl>
<dt>Snellere Recovery</dt>
<dd>De hoeveelheid I/O voor Write Ahead Log bij recovery is gehalveerd door efficiency verbeteringen.</dd>
<dt>Circular Buffer in Tuplestore</dt>
<dd>Drastische versnelling van kleine merge joins door het vermijden van disk activiteit.</dd>
<dt>Snellere LIKE/ILIKE vergelijking</dt>
<dd>Verbetert snelheid van "partial matches", vooral met "multibyte encodings".</dd>
<dt>Top-N Sorting</dt>
<dd>Spectaculair snellere queries met LIMIT.</dd>
<dt>Lazy XID Assignment</dt>
<dd>Hierdoor vermijdt PostgreSQL het toekennen van transactie IDs aan bepaalde read-only queries, hetgeen resulteert in hogere doorvoersnelheid voor read-mostly en readonly databases.</dd>
<dt>Function Costing</dt>
<dd>Geeft gebruikers de mogelijkheid de query planner te informeren over geschatte tijdsduur en aantal returned rows van een functie, wat resulteert in betere query plans.</dd>
</dl>

<h3>Grote databases</h3>

<p>Verschillende verbeteringen aan PostgreSQL maken nog grotere databases mogelijk dan voorheen:</p>
<dl>
<dt>Synchronized Scans</dt>
<dd>Maakt table scans door meerdere gebruikers tegelijkertijd mogelijk, resulterend in een enorme vermindering in benodigde I/O.</dd>
<dt>L2 Cache Scan Protection</dt>
<dd>Nieuwe code optimalisaties voorkomen vervuiling van CPU-cache, die concurrent queries zouden vertragen.</dd>
<dt>Varlena Header Size Reduction ("Var-Varlena")</dt>
<dd>Reduceert de headergrootte van de meeste variable-size velden.  Dit kan een database tot wel 20% kleiner maken.</dd>
</dl>

<h3>Windows Performance</h3>

<p>Nee, we zijn onze Windows gebruikers niet vergeten: Windows kan met deze 8.3 eindelijk een eerste-klas platform worden voor PostgreSQL:</p>
<dl>
<dt>MS Visual C++ Support</dt>
<dd>Het is nu mogelijk de PostgreSQL broncode met Visual C++ te compileren, in plaats van met de MinGW toolset.  Hierdoor verbeteren zowel snelheid als stabiliteit op Windows.</dd>
<dt>Backend starting code redesign</dt>
<dd>De hoeveelheid geheugen die nodig is voor de postmaster is drastisch verminderd, zodat meer parallele backends op Windows mogelijk zijn.</dd>
</dl>

<h2>Administratie</h2>

<p>PostgreSQL is al een stuk gemakkelijker te beheren dan de proprietaire databases, maar er is altijd ruimte voor verbetering.  Daarom hebben we de nodige features in 8.3 toegevoegd om het werk van DBA's makkelijker te maken:</p>

<dl>
<dt>CSV Log Output</dt>
<dd>Schrijft log naar een database-loadable file, zodat ad-hoc auditing en gebruik van performance analysis tools  gemakkelijker is.</dd>
<dt>SSPI en GSSAPI Support</dt>
<dd>Kerberos authentication op PostgreSQL ondersteunt de industrie standaard security API's: SSPI op windows, en GSSAPI op Unix en Linux. Dit vergemakkelijkt integratie in enterprise networks.</dd>
<dt>Per Function GUC Settings</dt>
<dd>Het is nu mogelijk om functions GUC-settings mee te geven zoals bijvoorbeeld search-path hetgeen security verscherpt.</dd>
<dt>Multiple Autovacuum Workers</dt>
<dd>Configureerbaar parallellisme van de PostgreSQL maintenance daemon, zodat autovacuum voor applicaties met duizenden tabellen mogelijk is.</dd>
<dt>pg_standby</dt>
<dd>Een beheersprogramma dat de configuratie van Warm Standby servers veel makkelijker maakt.</dd>
<dt>ORDER BY Nulls First/Last</dt>
<dd>Mogelijkheid voor het cre&euml;ren van indexen die NULL's op het begin of einde zijn ge&iuml;ndexeerd.</dd>
</dl>

<h2>Ontwikkelaars</h2>

<h3>Applicatie Ontwikkeling</h3>

<p>PostgreSQL is met beste proprietaire databases te vergelijken, en 8.3 heeft weer betere ondersteuning voor complexe database applicaties, zoals:</p>
<dl>
<dt>Full Text Search</dt>
<dd>TSearch2, onze cutting-edge full text search tool, is ge&iuml;ntegreerd in de core distributie, en kreeg ook een betere API.  Hierdoor is TSearch2 gemakkelijker in het gebruik en gemakkelijker uit te breiden met nieuwe talen en taal bibliotheken.</dd>
<dt>Plan Invalidation</dt>
<dd>Via applicatie aanroepen kunnen query plans verwijderd worden, en plans kunnen automatisch worden gedropped als een tabel is bijgewerkt.</dd>
<dt>Updatable Cursors</dt>
<dd>Cursors ondersteunen nu WHERE CURRENT OF die het ontwerp van cursor-based applicaties flexibeler maken.</dd>
</dl>

<h3>Nieuwe Data Types</h3>

<dl>
<dt>XML Support</dt>
<dd>Het nieuwe XML data type ondersteunt de SQL/XML specifikatie van ANSI SQL:2003 volledig, onder andere: well-formedness checks, type-safe operations, SQL/XML publishing en XPath queries.  Versie 8.3 ondersteunt ook extra functies voor XML export.</dd>
<dt>UUID</dt>
<dd>Dit is een nieuw 128 bit data type dat overeenkomt met meest voorkomende GUID en UUID generatoren, ter ondersteuning van distributed applicatie ontwerp.</dd>
<dt>Arrays of Compound Types</dt>
<dd>Arrays kunnen nu gemaakt worden met compound types.</dd>
<dt>ENUM</dt>
<dd>PostgreSQL ondersteunt nu ENUM kolommen met een voorgedefinieerde geordende lijst van waarden. Dit zal onder andere het migreren van MySQL databases naar PostgreSQL makkelijker maken.</dd>
</dl>

<h3>Stored Procedures</h3>

<p>Twee nieuwe features verbreden het gebruik van PL/pgSQL, PostgreSQL's meest populaire stored procedure taal:</p>
<dl>
<dt>Table Function Support</dt>
<dd>PL/pgSQL ondersteunt nu een eenvoudiger syntax voor row-returning functies.</dd>
<dt>Scrollable Cursors in PL/pgSQL</dt>
<dd>PL/pgSQL ondersteunt nu ook scrollable cursors, zodat in PL/pgSQL procedures complexere manipulaties mogelijk zijn.</dd>
</dl>

<h2>Accessories</h2>

<p>Vele belangrijke tools worden niet met de PostgreSQL code gedistribueerd zodat de broncode klein en goed te onderhouden blijft.  Deze tools maken deel uit van een verzameling van honderden optionele PostgreSQL componenten die replicatie, hoge beschikbaarheid (HA), taal interfaces, applicatie integratie en experimentele cutting-edge features ondersteunen.  De meeste van deze tools zijn op <a href="http://www.pgfoundry.org/">pgFoundry</a> beschikbaar.  De volgende PostgreSQL tools zijn tijdens het ontwikkelproces van 8.3 released, onder andere verschillende replicatie systemen die zijn aangepast aan de nieuwe replication hooks in de 8.3 backend:</p>

<dl>

<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></dt>

<dd>Deze multi-threaded connection pooler biedt de mogelijkheid met een enkele PostgreSQL database server 100.000 application connecties te ondersteunen.</dd>

<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a></dt>
<dd>Een distributed, horizontaly scaled table interface voor PostgreSQL.</dd>

<dt><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></dt>
<dd>Een standards-compliant SNMP interface voor PostgreSQL, voor vereenvoudigde integratie in server monitoring networks.</dd>

<dt><a href="http://code.google.com/p/sepgsql/downloads/list">SEpgsql</a></dt>
<dd>Een security extension op basis van SELinux model.</dd>

<dt><a href="http://pgfoundry.org/projects/edb-debugger/">PL/pgSQL Debugger</a></dt>
<dd>Een nieuwe een grafische debugger voor interactieve debugging en stapsgewijs uitvoeren van PL/PgSQL procedures.</dd>

<dt><a href="http://pgfoundry.org/projects/pgpool/">pgPool-II</a></dt>
<dd>PgPool-II, opvolger van het succesvolle pgPool, is een nieuwe replicated query agent voor PostgreSQL met support voor data partitioning.</dd>

<dt><a href="http://bucardo.org/">Bucardo</a></dt>
<dd>PostgreSQL's eerste multi-master asynchronous replication system.</dd>

<dt><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></dt>
<dd>Dit nieuwe open-source project ie een integratie van enkele bestaande PostgreSQL clustering tools, zoals pgCluster and pgPool.</dd>

<dt><a href="http://www.slony.info/">Slony-I</a></dt>
<dd>Versie 2.0 van Slony-I, ons meest populair replicatie system, gebruikt nu de nieuwe replication hooks in PostgreSQL 8.3.</dd>
</dl>
