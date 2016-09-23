<!-- vim:fileencoding=utf-8:encoding=latin2
-->
<!-- BEGIN page_title_block -->
PostgreSQL 8.2 - Informacje dla prasy
<!-- END page_title_block -->

<h1>PostgreSQL 8.2 - Informacje dla prasy</h1>

<h2>Spis treści</h2>

<p>
 &nbsp; <a href="#original_release">Tekst oryginalnych informacji dla prasy</a><br />
 &nbsp; <a href="#additional_features">Dodatkowe cechy</a><br />
 &nbsp; <a href="#download">Skąd ściągnąć</a><br />
 &nbsp;	<a href="#docs">Dokumentacja</a><br />
 &nbsp; <a href="#license">Licencja</a><br />
 &nbsp; <a href="#contact">Kontakty</a><br />
 &nbsp; <a href="#quoted_companies">Informacja o cytowanych firmach</a><br />
 &nbsp; <a href="#companies">Wsparcie korporacyjne</a><br />
 &nbsp; <a href="#additional_software">Dodatkowe oprogramowanie</a><br />
 &nbsp; <a href="#translations">Wersja angielska</a><br />
</p>

<a name="original_release"></a><h2>Oryginalna informacja dla prasy</h2>

<p><b>5 grudnia 2006:</b> PostgreSQL Global Development
Group ogłosiła dziś wydanie wersji 8.2 obiektowo-relacyjnego systemu
zarządzania bazami danych PostgreSQL. To czternaste publiczne wydanie
dodaje nowe cechy, dojrzałość i wydajność wymaganą przez użytkowników
biznesowych, dostarczając zarządzalność porównywalną z wiodącymi
przemysłowymi systemami baz danych.  Wersja 8.2 powinna przynieść
dalsze migracje w kierunku PostgreSQL-a.</p>

<p>"To wydanie dotyka prawie każdej komendy i elementu bazy danych",
powiedział Bruce Momjian, członek core team'u oraz architekt baz danych
w EnterpriseDB. "Dodaje rozszerzoną, kompatybilną składnię oraz interfejsy
które były zgłaszane przez naszą społeczność, ułatwiając nowym administratorom
baz danych w pełni wykorzystać wszystkie zaawansowane cechy PostgreSQL-a".</p>

<p>"Unisys z zadowoleniem zauważa znaczące ulepszenia w skalowalności
i wydajności PostgreSQL-a na wielkich wieloprocesorowych
systemach" stwierdził Ali Shadman, wiceprezydent i główny menedżer
Open Source Solutions, Systems and Technlogoy, Unisys. "Właśnie wypuszczona
wersja 8.2 kontynuuje dojrzewanie PostgreSWL-a do systemu zarządzania
bazami danych gotowego do zastosowań przemysłowych".</p>

<p>Nowe narzędzia i cechy ułatwiające zarządzanie i rozwijanie baz danych to między innymi:</p>

<p><b>Ulepszenia wydajności:</b> wersja 8.2 poprawiła wydajność średnio o około 20%
w zaawansowanych testach systemów OLTP (przetwarzania transakcji online).
Użytkownicy mogą zyskać nawet więcej w wydajności systemów hurtowni danych.
Zmiany to między innymi szybsze sortowanie w pamięci oraz na dysku,
lepsza skalowalność w środowiskach wieloprocesorowych, lepsze planowanie
zapytań na spartycjonowanych danych, szybsze hurtowe ładowania i znacznie
przyspieszone złączeń typu "outer join".</p>

<p><b>Gorący standby (Warm Standby):</b> dzięki rozszerzeniu naszego Przywracania
do punktu w czasie (Point in Time Recovery; wprowadzonym w wersji 8.0),
administratorzy mogą z łatwością stworzyć awaryjną kopię całego Waszego
klastra bazy danych.</p>

<p><b>Budowanie indeksów online:</b> indeksy można teraz budować podczas gdy aplilkacje
zapisują dane do tabel bazy, pozwalając na strojenie wydajnościowe bez
przerw serwisowych.</p>

<p><b>Cechy SQL:2003:</b> PostgreSQL, dobrze znany ze swej zgodności ze standardami,
dodał składnię dla kolejnych elementów wprowadzonych w specyfikacji
ANSI SQL:2003, włączając w to: agregaty statystyczne, wielowierszowa
składnia VALUE, UPDATE RETURNING oraz agregaty wielokolumnowe.</p>

<p>Zaawansowane cechy baz danych oferowane w PostgreSQL 8.2 przed jakimkolwiek
większym systemem baz danych to:</p>

<p><b>Uogólnione odwrócone indeksy (Generalized Inverted Indexes):</b> pozwalają na
lepiej skalowalną i programowalną metodę indeksowania semistrukturalnych
i pełnotekstowych danych.</p>

<p><b>DTrace:</b> PostgreSQL został również wyposażony w mechanizm dla Solaris DTrace
oraz innych zaawansowanych narzędzi śledzących -- uogólniony szkielet
monitorowania (Generic Monitoring Framework).</p>

<p>"Wraz z instancjami hurtowni danych zawierających tabele o miliardach wierszy
oraz wiele terabajtów danych, budowanie indeksów online oraz gorący
standby są niezbędne", powiedział Theo Schlossnagle,
przewodniczący w OmniTI Computer Consulting. "Bardzo nas cieszy, że
PostgreSQL jest teraz obywatelem DTrace pierwszej klasy. Oznacza to,
że nasze regularnie wykonywane analizy systemów mogą teraz
zawierać w sobie specyficzne dla bazy danych dane pozwalając uzyskać
znacznie więcej mówiące rezultaty."</p>

<p>Są jeszcze dziesiąki innych dodatkowych cech i poprawek w 8.2, które
spowodują że administratorzy baz danych lepiej będą wykorzystywać PostgreSQL-a.
Więcej przeczytasz w informacjach dla prasy (http://www.postgresql.org/about/press/presskit82.html.pl).
Ściągnij PostgreSQL-a <a href="/download">z naszej strony z pobraniami</a>.</p>

<p><b>O PostgreSQL:</b> PostgreSQL to kolektywna praca setek programistów, opierająca się na dwudziestu jeden latach rozwoju, mające go swoje początki na Uniwersytecie Kalifornii w Berkeley (UCB). Wraz z długo wspieranymi rozwiązaniami na poziomie przemysłowym włączając w to transakcje, funkcje, triggery i podzapytania, PostgreSQL używany jest dziś przez wiele najbardziej wymagaj ących biznesowych i rządowych agencji. PostgreSQL jest rozpowszechniany na licencji BSD, która pozwala na używanie i dystrybu cję bez opłat zarówno dla komercyjnych i niekomercyjnych zastosowań.
</p>

<a name="additional_features"></a><h2>Dodatkowe cechy tego wydania</h2>
Poza głównymi cechami wymienionymi w informacjach dla prasy można wymienić
ponad 200 nowych cech i rozszerzeń nadesłanych przez dziesiątki programistów
dla wersji 8.2.  Między innymi:
<ul>
<li>Blokady pomocnicze (Advisory Locks): pozwalają na kontrolę obiektów
z poziomu aplikacji wykorzystując szybki silnik blokad w PostgreSQL.</li>
<li>Wybiórczy pg_dump: pozwala na wyciąganie transakcyjnie konsystentnych
zrzutów zbiorów relacji, wybierając które dodać/pominąć za pomocą wyrażeń
regularnych.</li>
<li>Przygotowane zapytania: nowy interfejs administracyjny oraz poprawa wydajności dla przygotowanych zapytań.</li>
<li>ISN/ISBN: moduł ten, zawierający typy danych obsługujące kody ISN dla systemów sprzedaży i magazynowych, został zaktualizowany by wspierać najnowsze międzynarodowe standardy.</li>
<li>Kryptografia: moduł pgcrypto, wspierający kryptografię wewnątrz bazy danych, został uzupełniony o najnowsze algorytmy.</li>
<li>Rozszerzenia SQL: wprowadzono nową składnię, między innymi UPDATE RETURNING, DROP IF EXISTS, ON COMMIT oraz nowe polecenia związane z zarządzeniem własnoścą i uprawnieniami, ułatwiając zarządzanie obiektami bazy danych z linii poleceń.</li>
<li>Wybór paczkami dla PSQL: pozwala na zwracanie wierszy na konsolę w paczkach zamiast wszystnie naraz.</li>
<li>Refaktoryzacja ECPG: osadzony interfejs dla języka C w PostgreSQL-u został w znacznej mierze przepisany powiększając jego funkcjonalność.</li>
<li>Znaczne ulepszenia w TSearch2: wsparcie dla UTF-8, tezaurus, wsparcie dla przepisywania zapytań oraz indeksy GIN.</li>
<li>PL/Python: teraz wspiera nazwane parametry oraz funkcje zwracające zbiory.</li>
</ul>
<p>Rozszerzalna architektura PostgreSQL-a doprowadziła do powstania wielkiej
społeczności tworzącej rozszerzenia takie jak języki proceduralne, interfejsy
do zewnętrznych systemów, nowe typy indeksów, narzędzia do replikacji oraz
wysokiej dostępności.  Można je znależć na <a href="http://www.pgfoundry.org">oficjalnynej stronie projektów społeczności PostgreSQL</a>.
Projekty społeczności które dokonały dużych postępów podczas cyklu rozwoju 8.2 to między innymi:</p>
<ul>
<li>Pełne rozłączenia (Full Disjunctions): dzięki Google Summer of Code, PostgreSQL jest pierwszym systemem baz danych w którym zaimplementowano ten radykalnie nowy algorytm łączenia.</li>
<li>PGPoolII: PGPool, zasponsorowany przez Rząd Japonii, dodał nowe możliwości balansowania obciążeniem i partycjonowania.</li>
<li>PL/Java: jeden z naszych dwóch języków proceduralnych Java osiągnął status w pełni produkcyjnego języka, pozwalając na nieograniczone wykorzystanie Javy wewnątrz bazy danych.</li>
</ul>

<p>
Możesz przeczytać o dziesiątkach dalszych poprawek w 8.2
w <a href="/docs/current/static/release.html">Release Notes</a>.
</p>

<a name="download"></a><h2>Skąd ściągnąć</h2>

<ul>
<li><a href="/ftp/latest/">Lista serwerów FTP</a></li>
<li><a href="/download/bittorrent">Bittorrent</a></li>
<li><a href="/ftp/binary/v8.2.0/win32/">Instalator dla Windows</a> (dostępny również przez Bittorrent)</li>
<li><a href="/ftp/binary/v8.2.0/">Inne wersje binarne, m.in. dla Linuksa, Mac OSX i Solarisa</a></li>
<li><a href="/projects/pgsql/">SourceForge</a> (włącznie z instalatorem dla Windows)</li>
</ul>

<a name="docs"></a><h2>Dokumentacja</h2>

<ul>
<li><a href="/docs">Oficjalna dokumentacja</a></li>
<li><a href="/docs/techdocs">Dokumenty TechDocs</a></li>
<li><a href="/about/press/faq">Najczęściej zadawane pytania (FAQ)</a></li>
</ul>

<a name="license"></a><h2>Licencja</h2>
<p>
PostgreSQL używa <a href="/about/licence">licencji BSD</a>,
która wymaga jedynie by licencjonowany kod źródłowy nadal
zawierał informacjęo o prawach autorskich i warunkach licencjonowania.
Ta <a href="http://www.opensource.org/licenses/bsd-license.php">certyfikowana przez OSI licencja</a>
jest szeroko doceniania jako elastyczna i przyjazna dla środowisk biznesowych
ponieważ nie ogranicza użycia PostgreSQL-a w komercyjnych i zamkniętych zastosowaniach.
Łącznie ze wsparciem ze strony wielu firm oraz publiczną własnością kodu źródłowego,
licencja BSD powoduje, że PostgreSQL jest bardzo popularny wśród dostawców
chcących zagnieździć bazę danych w ich własnych produktach bez obawy
o opłaty, uzależnienie od jednego dostawcy czy zmiany zmiany zasad licencjonowania.
</p>

<a name="contact"></a><h2>Kontakty</h2>

<p><a href="http://www.postgresql.org.pl">PostgreSQL home page</a></p>
<p><a href="http://www.postgresql.org">PostgreSQL home page (English)</a></p>

<p>Zapytania:<br />
Dawid Kuroczko<br />
Kraków<br />
+48603776391<br />
<a href="mailto:pl@postgresql.org">pl@postgresql.org</a></p>

<p>Kontakty w innych regionach znajdziesz na <a href="/about/press/contact">naszej międzynarodowej liście kontaktów.</a></p>

<a name="quoted_companies"></a><h2>Cytowane firmy oraz pełne teksty cytatów</h2>
<p>
"Unisys z zadowoleniem zauważa znaczące ulepszenia w skalowalności
i wydajności PostgreSQL-a na wielkich wieloprocesorowych
systemach" stwierdził Ali Shadman, wiceprezydent i główny menedżer
Open Source Solutions, Systems and Technlogoy, Unisys. "Właśnie wypuszczona
wersja 8.2 kontynuuje dojrzewanie PostgreSWL-a do systemu zarządzania
bazami danych gotowego do zastosowań przemysłowych.  PostgreSQL jest kluczowym
elementem Unisys Open and Secure Integrated Solution -- OASIS -- dla
opartego o Javę EE przetwarzania transakcji wykorzystującego wybrane
technologie open source. Unisys zamierza dalej aktywnie wspierać
społeczność w drodze PostgreSQL-a do zastosowań przemysłowych."</p>
<p><b>O Unisys:</b> <a href="http://www.unisys.com/">Unisys</a> jest
ogólnoświatową firmą zamjującą się serwisami i rozwiązaniami technologicznymi.
Nasi konsultanci stosują doświadczenie Unisys w konsultacjach, integracji
systemów, outsource'ingu, infrastrukturze i technologiach serwerowych aby
pomóc naszym klientom bezpiecznie przeprowadzać operacje biznesowe.
Tworzymy bezpieczniejsze organizacje tworząc przejrzystość w operacjach
klientów. Wykorzystując Unisys 3D Visible Enterprise, wizualizujemy
wpływ ich decyzji - przed inwestycjami, okazjami i ryzykami.
<a href="mailto:brian.daly@unisys.com">Skontaktuj się z Brianem Daly</a>
w sprawie pytań dotyczących tej informacji +1-215-986-2214 (tylko po angielsku)</p>
<p>"Zarządzamy wieloma krytycznymi systemami PostgreSQL na Solarisie 10.
Wraz z instancjami hurtowni danych zawierających tabele o miliardach wierszy
oraz wiele terabajtów danych, budowanie indeksów online oraz gorący
standby są niezbędne", powiedział Theo Schlossnagle,
przewodniczący w OmniTI Computer Consulting. "Bardzo nas cieszy, że
PostgreSQL jest teraz obywaltem DTrace pierwszej klasy.  Oznacza to,
że nasze regularnie wykonywane analizy systemów mogą teraz
zawierać w sobie specyficzne dla bazy danych dane pozwalając uzyskać
znacznie więcej mówiące rezultaty."</p>
<p><b>O OmniTI:</b> <a href="http://omniti.com/home">OmniTI</a> jest
firmą konsultingową technologii internetowych z siedzibą
w Columbia, Maryland.  Z listą klientów którą czyta się jak kto jest
kim w kierunkach internetowych, OmniTI ugruntowało swoją pozycję jako
firma do której należy się zgłaszać z najbardziej wyzywającymi dziś
problemami ze skalowalnością, wydajnością i bezpieczeństwem, z jakimi
mierzą się dziś aplikacje WWW wielkiej skali.
Kontakt: +1-877-887-3031 lub info@omniti.com (tylko po angielsku).</p>

<a name="companies"></a><h2>Wsparcie korporacyjne</h2>

<p>PostgreSQL jest wspierany przez wiele przedsiębiorstw, które
wspierają programistów, udostępniają zasoby hostingowe oraz
dają wsparcie finansowe. Najwięksi stali sponsorzy są wymienieni
na naszej <a href="/about/sponsors">stronie o sponsorach</a>.</p>

<p>Jest również duża społeczność <a
href="/support/professional_support">firm oferujących
wsparcie dla PostgreSQL-a</a>, od pojedyńczych konsultantów
po wielopaństwowe przedsiębiorstwa.</p>

<a href="/about/donate">Darowizny</a> są mile widziane.

<a name="additional_software"></a><h2>Dodatkowe oprogramowanie</h2>
<p>
Główny projekt PostgreSQL jest rozszerzny przez ponad 100 aktywnych
podprojektów które dostarczają rozwiązania produkcyjnej jakości dla
replikacji, migracji, kompatybilności, współoperacyjności, projektowania
oraz narzędzi do graficznego zarządzania.
</p>

<h3>Projekty pokrewne</h3>

<ul>
<li><a href="http://projects.postgresql.org">pgFoundry</a></li>
<li><a href="http://gborg.postgresql.org">GBorg</a></li>
</ul>

<h3>Sterowniki</h3>

<ul>
<li><a href="http://jdbc.postgresql.org/">JDBC</a></li>
<li><a href="http://pgfoundry.org/projects/psqlodbc/">ODBC</a></li>
<li><a href="http://pgfoundry.org/projects/npgsql">.Net</a></li>
<li><a href="http://search.cpan.org/~dbdpg/DBD-Pg/Pg.pm">Perl DBI</a></li>
<li><a href="http://initd.org/projects/psycopg1">Python</a></li>
</ul>

<h3>Pakiety dostarczające zaawansowanej funkcjonalności</h3>

<ul>
<li><a href="http://postgis.refractions.net/">Serwer informacji geograficznej (PostGIS)</a></li>
<li><a href="http://openfts.sourceforge.net/">Pełnotekstowe wyszukiwanie (OpenFTS)</a></li>
<li><a href="http://www.bizgres.org">Inteligencja biznesowa/hurtownie danych(Bizgres)</a></li>
</ul>

<h3>Graficzne interfejsy użytkownika (GUI)</h3>

<ul>
<li><a href="http://www.pgadmin.org/">pgAdmin3</a></li>
<li><a href="http://phppgadmin.sourceforge.net/">phpPgAdmin</a></li>
<li><a href="/docs/techdocs.54">Lista innych GUI</a></li>
</ul>

<h3>Replikacja</h3>

<ul>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
</ul>
<a name="translations"></a><h2>Oficjalna angielska wersja tego dokumentu</h2>
<p><a href="/about/press/presskit82.html.en">8.2 PressKit</a></p>
