<!-- BEGIN page_title_block -->
PostgreSQL 8.3 Press Kit
<!-- END page_title_block -->

<h1>PostgreSQL 8.3 Press Kit</h1>

<h2>Inhoudsopgave</h2>

<p>
 &nbsp; <a href="#original_release">Tekst van de originele versie</a><br />
 &nbsp; <a href="#additional_features">Lijst van features</a><br />
 &nbsp; <a href="#download">Downloaden</a><br />
 &nbsp; <a href="#docs">Documentatie</a><br />
 &nbsp; <a href="#license">Licentie</a><br />
 &nbsp; <a href="#contact">Contactinformatie</a><br />
 &nbsp; <a href="#companies">Support voor bedrijven</a><br />
 &nbsp; <a href="#additional_software">Additionele software</a><br />
</p>

<a name="original_release"></a><h2>Persmededeling</h2>

<p><b>4 Februari 2008, New York, NY:</b>  De PostgreSQL Global Development Group kondigde vandaag versie 8.3 aan van het krachtige object-relationele database systeem.  Deze versie bevat een record aantal nieuwe features en verbeteringen die PostgreSQL beter in het gebruik maken voor applicatie ontwikkelaars, database beheerders en gebruikers, met meer dan 280 veranderingen door tientallen PostgreSQL ontwikkelaars uit 18 landen.
</p><p>

"De voortdurende evolutie van de open source PostgreSQL database geeft gebruikers de mogelijkheid om een non-proprietaire RDBMS in te zetten en zodoende geld te besparen, prestaties te verbeteren, en productiviteit te verhogen.  PostgreSQL 8.3 is een indrukwekkende nieuwe versie en wij raden klanten wereldwijd aan het te onderzoeken", aldus Rich Green, executive vice president van software bij Sun Microsystems. 
</p><p>

Versie 8.3 is meer consistent in prestaties dan vorige versies, zodat elke gebruiker kan rekenen op vergelijkbare resultaten als in recente benchmarks, voor iedere transactie, in piekuren of niet, zeven dagen per week, 52 weken per jaar.  Belangrijke verbeteringen zijn onder andere:
</p><ul>
<li>Heap Only Tuples (HOT), elimineert 3/4 van onderhouds-overhead voor vaak bijgewerkte tabellen</li>
<li>Spread checkpoints, vermindert het effect van checkpoints tijdens piekuren</li>
<li>Asynchronous commit optie, voor een veel betere response tijd bij bepaalde transacties</li>

</ul><p>

Deze veranderingen zorgen voor een aanmerkelijke versnelling van transactie verwerking (throughput), tussen 5% en 30%, afhankelijk van serverbelasting.
</p><p>
"PostgreSQL is slimmer geworden", aldus Bruce Momjian, een PostgreSQL Core Team member.
</p><p>
<checked />
PostgreSQL is de eerste open source database die Synchronized Scan implementeert, hetgeen I/O voor datamining drastisch vermindert.  Het Windows team maakte het mogelijk PostgreSQL met Visual C++ te compileren, waardoor stabiliteit en performance op Windows is verbeterd, en het project toegankelijker is voor windows ontwikkelaars.  Nieuwe logging opties zijn toegevoegd en de overhead van de Statistics Collector is verminderd om het overzien van uw servers gemakkelijker te maken.
</p><p>
En het zou natuurlijk geen echte PostgreSQL release zijn zonder vele nieuwe mogelijkheden voor softwareontwikkelaars, onder andere:
</p><ul>
<li>ANSI-standaard SQL/XML ondersteuning, onder andere XML export</li>
<li>Text search: onze geavanceerde full text search tool, TSearch2, is in de core distributie ge&iuml;ntegreerd, met beter management en nieuwe talen en taalbibliotheken</li>
<li>GSSAPI en SSPI authenticatie ondersteuning</li>
<li>Nieuwe data types: UUIDs, ENUMs en arrays van composite types</li>
</ul><p>
"Wij verwerken meer dan 18.000 queries per seconde op meer dan 300GB gebruikersgegevens op onze PostgreSQL servers, en die aantallen worden elke maand groter", aldus Gavin Roy, CTO van social networking site MyYearbook.com. "We zijn zeer enthousiast over HOT, de shared buffer scan verbeteringen, en de geintegreerde tsearch indexing."
</p><p>
Naast de vele nieuwe core features zijn verschillende nieuwe optionele software componenten tijdens het ontwikkelen van PostgreSQL 8.3 verbeterd en inmiddels als versie 1.0 beschikbaar.  Dit zijn onder andere SNMP understeuning, horizontale schaalbaarheid oplossingen als PL/Proxy, pgPool-II en Bucardo, een grafische debugger voor stored procedures, en een connection pooler: pgBouncer.  Deze aanwinsten maken de al rijke lijst van accessoire software nog aantrekkelijker.
</p><p>
Er zijn nog tientallen extra features en verbeteringen in 8.3 die van PostgreSQL een een nog krachtiger database platform maken.  Zie de press kit voor meer informatie.
</p><p>
Download PostgreSQL van onze <a href="http://www.postgresql.org/download">download pagina</a>.
</p><p>
Over PostgreSQL: PostgreSQL is het collectieve werk van honderden ontwikkelaars, voortbouwend op meer dan twintig jaar ontwikkeling die begon bij de Universiteit van Californi&euml;, Berkeley.  Mede vanwege enterprise-level transactie features en schaalbaarheid wordt PostgreSQL gebruikt door veel van de meest veeleisende ondernemingen en overheidsinstellingen.  PostgreSQL wordt onder een BSD licentie uitgegeven die kosteloos gebruik en distributie toestaat voor zowel commerci&euml;le als niet-commerci&euml;le toepassingen.  Lees meer op <a href="http://www.postgresql.org">onze website</a>.
</p>

<h2>Uitgebreide Versie</h2>

<a name="additional_features"></a><h2>Lijst van features</h2>
<p>
Versie 8.3 heeft een ongekend aantal nieuwe features. Wij hebben extra pagina's gecre&euml;erd om deze op een rijtje te zetten:
<ul>
<li><a href="/about/press/features83">Volledige lijst van features</a></li>
<li><a href="/about/featurematrix">Feature matrix (Engels)</a></li>
<li><a href="/docs/8.3/static/release-8-3.html">Release Notes</a></li>
</ul>
<a name="download"></a><h2>Downloaden</h2>
<ul>
<li><a href="/ftp/source/v8.3">Source Code</a></li>
<li><a href="/ftp/binary/v8.3">Binaries</a>, ook voor Windows, Red Hat Linux en Solaris</li>
<li><a href="http://www.pgfoundry.org">Optionele componenten</a></li>
</ul>

<a name="docs"></a><h2>Documentatie</h2>

HTML documentatie en manual pagina&#39;s worden met PostgreSQL mee ge&iuml;nstalleerd, maar zij kunnen ook online worden geraadpleegd; zie onze <a href="/docs/8.3/interactive">online documentatie</a>.

<a name="license"></a><h2>Licentie</h2>
<p>
PostgreSQL gebruikt de <a href="/about/licence">BSD licentie</a> die slechts vereist 
dat in de gelicentieerde broncode het auteursrecht en de licentie informatie bewaard blijft.
Deze <a href="http://www.opensource.org/licenses/bsd-license.php">OSI-gecertificeerde 
licentie</a> is zowel flexibel als "business-friendly" omdat het geen enkele verdere beperking oplegt 
aan gebruik van PostgreSQL voor commerci&euml;le en proprietaire  toepassingen. 
Samen met "multi-company" steun en openbaar eigendom van de broncode maakt de BSD-licentie 
PostgreSQL populair bij bedrijven die een database in hun eigen producten willen meeleveren
zonder bang te hoeven zijn voor kosten, vendor lock-in, of veranderingen in licentie.</p>

<a name="contact"></a><h2>Contactinformatie</h2>

<p><a href="http://www.postgresql.nl">Nederlandse PostgreSQL home page</a></p>
<p><a href="http://www.postgresql.org">PostgreSQL home page (English)</a></p>

<p>Vragen:<br />
Gevik Babakhani<br />
PostgreSQL Nederland<br />
+31620006265<br />
<a href="mailto:nl@postgresql.org">nl@postgresql.org</a>
</p>

<p>Voor contactinformatie in andere regio's, zie 
<a href="/about/press/contact">onze internationale contacten lijst</a></p>


<!--  ej: not yet translated: Quoted Company information  
      ej: lijkt mij wel degelijk nuttig. Ik zal er later naar kijken
-->

<a name="companies"></a><h2>Steun van Bedrijven</h2>

<p>PostgreSQL wordt gesteund door talrijke bedrijven, die ontwikkelaars sponsoren, hosting verzorgen en ons financi&euml;le steun geven.  De grootste lange-termijn sponsors zijn vermeld op onze <a href="/about/sponsors">pagina van ontwikkelingssponsors.</a></p>

<p>Er is ook een grote gemeenschap van <a href="/support/professional_support">bedrijven die commerci&euml;le PostgreSQL support aanbieden</a>, in grootte vari&euml;rend van individuele consultants tot multinationale bedrijven. De Nederlandse bedrijven zijn op <a href="http://www.postgresql.nl">www.postgresql.nl</a> te vinden.

<p><a href="/about/donate">Donaties</a> graag geaccepteerd.</p>

<a name="additional_software"></a><h2>Links</h2>
<p>
Het PostgreSQL-project heeft meer dan 100 actieve subprojecten die 
productie-kwaliteit oplossingen bieden voor replicatie, migratie, compatibiliteit, interoperabiliteit, 
database ontwerp, en grafische tools voor beheer en administratie.
De meeste optionele software is te vinden op <a href="http://www.pgfoundry.org">pgFoundry</a> of op onze <a href="/download">downloads pagina.</a>  Hier zijn links naar de in dit document genoemde tools:
</p>

<h3>Developer Tools</h3>
<ul>
<li><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></li>
<li><a href="http://pgfoundry.org/projects/edb-debugger/">PL/pgSQL Debugger</a></li>
</ul>

<h3>Replicatie en "Horizontal Scaling"</h3>

<ul>
<li><a href="http://bucardo.org/">Bucardo</a></li>
<li><a href="https://developer.skype.com/SkypeGarage/DbProjects/SkyTools">Skytools</a>, waaronder <a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a> en <a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></li>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
<li><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></li>
</ul>




