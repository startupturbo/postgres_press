<!-- BEGIN page_title_block -->
PostgreSQL 8.3 - Informacje dla prasy
<!-- END page_title_block -->

<h1>PostgreSQL 8.3 - Informacje dla prasy</h1>

<h2>Spis treści</h2>

<p>
 &nbsp; <a href="#original_release">Pierwotny tekst informacji dla prasy</a><br />
 &nbsp; <a href="#additional_features">Lista cech</a><br />
 &nbsp; <a href="#download">Skąd ściągnąć</a><br />
 &nbsp; <a href="#docs">Dokumentacja</a><br />
 &nbsp; <a href="#license">Licencja</a><br />
 &nbsp; <a href="#contact">Kontakt</a><br />
 &nbsp; <a href="#quoted_companies">Informacje o cytowanych podmiotach</a><br />
 &nbsp; <a href="#companies">Wsparcie korporacyjne</a><br />
 &nbsp; <a href="#additional_software">Dodatkowe oprogramowanie</a><br />
</p>

<a name="original_release"></a><h2>Pierwotny tekst informacji dla prasy</h2>
<p><b>4 lutego 2008, Nowy Jork, NY</b>:  PostgreSQL Global Development Group ogłosiła dziś wydanie wersji 8.3 wydajnego systemu zarządzania obiektowo-relacyjnymi bazami danych.  To wydanie zawiera rekordową liczbę zarówno nowości jaki i ulepszeń, które w znacznym stopniu wzbogacą PostgreSQL-a dla projektantów aplikacji, administratorów baz danych i użytkowników, rozbudowując go o ponad 280 patchy napisanych przez dziesiątki współtwórców PostgreSQL-a z 18 państw.
</p><p>
"Ciągła ewolucja otwartej bazy danych PostgreSQL daje użytkownikom możliwość wdrażania wolnodostępnej (non proprietary) bazy danych, pozwalając tym samym na oszczędzenie pieniędzy oraz zwiększenie wydajności i produktywności.  PostgreSQL 8.3 jest nową, robiącą wrażenie edycją i zachęcamy klientów na całym świecie do wypróbowania jej", powiedział Rich Green, generalny wiceprezes działu Oprogramowania w Sun Microsystems.
</p><p>
Wersja 8.3 dostarcza większą regularność wydajności niż poprzednie wersje, zapewniając że każdy użytkownik może spodziewać się takiej samej wydajności, jak demonstrowana w ostatnich testach, dla każdej przeprowadzanej transakcji, niezależnie od tego czy w godzinach szczytu czy poza nimi, siedem dni w tygodniu, 52 tygodnie w roku.  Główne zmiany zwiększające wydajność:
</p><ul>
<li>Heap Organized Tuples (HOT), które eliminują do 3/4 narzutu na zarządzanie w często aktualizowanych tabelach</li>
<li>Rozciągnięcie punktów kontrolnych (checkpointów) oraz automatyczne strojenie zapisu w tle (background writer), zmniejszające wpływ punktów kontrolnych na czasy odpowiedzi</li>
<li>Możliwość wykonywania asynchronicznych operacji commit dla zwiększenia czasu odpowiedzi niektórych transakcji</li>
</ul><p>
Te zmiany zwiększają również znacznie przepustowość przetwarzania transakcji, od 5% do 30% w zależności do rodzaju pracy.
</p><p>
"PostgreSQL po prostu stał się mądrzejszy", powiedział Bruce Momijan, członek PostgreSQL Core Team.
</p><p>
PostgreSQL jest pierwszą bazą danych open source, która zaimplementowała Synchroniczne Skanowanie.  W dużym stopniu zmniejsza ono I/O dla baz data miningowych.  Zespół Windowsowy dodał możliwość kompilacji PostgreSQL-a przy pomocy Visual C++, zwiększając stabilność i wydajność na Windows, jak również dostępność projektu dla współtwórców ze środowiska Windows.  Dodano nowe opcje logowania, ponadto został zminimalizowany narzut kolektora statystyk został zminimalizowany w celu ułatwienia monitorowania waszych serwerów.
</p><p>
Oczywiście to nie byłoby prawdziwe wydanie PostgreSQL-a bez podania wielu nowości dla twórców aplikacji, między innymi:
</p><ul>
<li>zgodne ze standardem ANSI wsparcie dla SQL/XML, włącznie z eksportem do XML-a</li>
<li>wyszukiwanie pełnotekstowe: nasz zaawansowany system wyszukiwania, TSearch2, został włączy do podstawowej dystrybucji, z lepszym zarządzaniem oraz nowymi słownikami i językami</li>
<li>wsparcie dla autentykacji GSSAPI oraz SSPI</li>
<li>nowy typy danych: UUID-y, ENUMeracje oraz tablice typów złożonych</li>
</ul><p>
"Przetwarzamy ponad 18,000 zapytań na sekundę na ponad 300GB danych użytkowników na naszych serwerach PostgreSQL i te liczby rosną z miesiąca na miesiąc", powiedział Gavin Roy, główny technolog w społecznościowym serwisie MyYearbook.com.  "Bardzo emocjonuje nas HOT, poprawki w przeszukiwaniu buforów dzielonych oraz zintegrowanie indeksowania pełnotekstowego.  Wstępne testy pokazują, że 8.3 poprawi nasz profil obciążenia bazy zmniejszając czasy odpowiedzi.  Czekamy na to z niecierpliwością."
</p><p>
Poza wieloma nowymi cechami podstawowymi, kilka opcjonalnych komponentów dojrzało i wypuściło wersje 1.0 podczas cyklu rozwojowego 8.3.  Należą do nich wsparcie dla SNMP, opcje skalowalności horyzontalnej takie jak PL/Proxy, pgPool2 oraz Bucardo, graficzny debugger dla procedur składowanych oraz skalowalny system utrzymywania puli połączeń nazywający się pgBouncer.  Uzupełniają one bogaty zestaw narzędzi dostępnych już wcześniej.
</p><p>
Wersja 8.3 przynosi dziesiątki dodatkowych cech i ulepszeń, które spowodują, że PostgreSQL będzie jeszcze wydajniejszą platformą bazodanową.  Więcej w informacjach dla prasy.
</p><p>
Ściągnij PostgreSQL-a z <a href="http://www.postgresql.org/download">naszej strony</a>.
</p><p>
O PostgreSQL: PostgreSQL to kolektywna praca setek programistów, opierająca się na dwudziestu jeden latach rozwoju, mającego swoje początki na Uniwersytecie Kalifornii w Berkeley.  Wraz z wieloletnim wsparciem dla właściwości transakcyjnych baz danych na przemysłowym poziomie oraz skalowalnością, PostgreSQL używany jest dziś przez wiele najbardziej wymagających biznesowych i rządowych agencji.  PostgreSQL jest rozpowszechniany na licencji BSD, która pozwala na używanie i dystrybucję bez opłat zarówno dla komercyjnych jak i niekomercyjnych zastosowań.  Więcej na <a href="http://www.postgresql.org">naszej stronie domowej</a>.
</p>

<h2>Szersze informacje</h2>

<a name="additional_features"></a><h2>Lista cech</h2>
<p>
Wersja 8.3 zawiera bezprecedensową liczbę nowych cech.  Stworzyliśmy osobne strony by je skatalogować:
</p>
<ul>
<li><a href="/about/press/features83">Pełna lista cech</a></li>
<li><a href="/about/featurematrix">Macierz (tylko po angielsku)</a></li>
<li><a href="/docs/8.3/static/release-8-3.html">Uwagi do wydania</a></li>
</ul>
<a name="download"></a><h2>Ściąganie</h2>
<ul>
<li><a href="/ftp/source/v8.3">Kod źródłowy</a></li>
<li><a href="/ftp/binary/v8.3">Binaria</a>, włącznie z wersjami dla Windows, Red Hata oraz Solarisa</li>
<li><a href="http://www.pgfoundry.org">Opcjonalne komponenty</a></li>
</ul>

<a name="docs"></a><h2>Dokumentacja</h2>

Dokumentacja w formacie HTML i strony manuala są instalowane razem z PostgreSQL-em, ale proszę, przeglądaj, przeszukuj i komentuj naszą rozbudowaną, interaktywną <a href="/docs/8.3/interactive">dokumentację online</a>.

<a name="license"></a><h2>Licencja</h2>
<p>
PostgreSQL udostępniany jest na <a href="/about/licence">licencji BSD</a>, która wymaga tylko by prawa autorskie i informacje o licencjonowaniu były utrzymane w kodzie źródłowym. Ta
<a href="http://www.opensource.org/licenses/bsd-license.php">certyfikowana przez OSI licencja</a> jest powszechnie doceniana jako elastyczna i przyjazna dla firm, ponieważ nie ogranicza wykorzystania PostgreSQL-a w komercyjnych oraz zamkniętych zastosowaniach. Razem ze wsparciem ze strony wielu firm oraz publiczną własnością kodu źródłowego, licencja BSD powoduje, że PostgreSQL jest bardzo popularny wśród producentów chcących włączyć bazę danych do swoich własnych produktów bez ryzyka czy opłat, włącznie z ryzykiem uzależnienia od jednego dostawcy czy ryzykiem zmiany warunków licencjonowania.
</p>

<a name="contact"></a><h2>Kontakt</h2>

<p><a href="http://www.postgresql.org">PostgreSQL - strona domowa</a></p>

<p>Zapytania od prasy</p>
Dawid Kuroczko<br />
+48-603-776391<br />
<a href="mailto:pl@postgresql.org">pl@postgresql.org</a></p>

<p>Lista kontaktów w innych regionach jest dostępna <a href="/about/press/contact">naszej liście kontaktów międzynarodowych</a>.</p>

<a name="quoted_companies"></a><h2>Informacja o cytowanych podmiotach</h2>
<p>
"Ciągła ewolucja otwartej bazy danych PostgreSQL daje użytkownikom możliwość wdrażania wolnodostępnej (non proprietary) bazy danych, pozwalając tym samym na oszczędzenie pieniędzy oraz zwiększenie wydajności i produktywności.  Sun przywiązuje dużą wagę do powodzenia PostgreSQL-a na OpenSolarisie -  działającym na wszystkich naszych serwerach opartych o procesory x64 oraz Sun SPARC, jak również na sprzęcie Della, HP oraz IBM - oferujemy również różnorodną paletę szkoleń i wsparcia dla klientów zamierzających stosować PostgreSQL-a. PostgreSQL 8.3 jest robiącą wrażenie nową edycją i zachęcamy klientów na całym świecie do wypróbowania jej", powiedział Rich Green, generalny wiceprezes działu Oprogramowania w Sun Microsystems.
</p><p>
<b>Kontakt do Sun Microsystems</b>: Terri Molini, 01-408-404-4976, terri.molini@sun.com (tylko w języku angielskim)
</p><p>
"Przetwarzamy ponad 18,000 zapytań na sekundę na ponad 300GB danych użytkowników na naszych serwerach PostgreSQL i te liczby rosną z miesiąca na miesiąc", powiedział Gavin Roy, Główny Technolog w społecznościowym serwisie MyYearbook.com.  "Bardzo emocjonuje nas HOT, poprawki w przeszukiwaniu buforów dzielonych oraz zintegrowanie indeksowanie pełnotekstowe.  Wstępne testy pokazują, że 8.3 poprawi nasz profile obciążenia bazy zmniejszając czasy odpowiedzi.  Czekamy na to z niecierpliwością."
</p><p>
<b>O MyYearbook.com</b>: myYearbook.com jest jednym z największych amerykańskich przedsięwzięć medialnych w Internecie zorientowanych na młodzież.  Robiący wrażenie wzrost o 500 procent w ilości wyświetleń stron i liczby członków przez ostatnie pięć miesięcy, myYearbook wzrósł od jednej szkoły średniej do ponad 4.7 miliona członków, i nadal zwiększa się o jeden milion nowych członków co każde dwa miesiące.  Kontakt: press@myyearbook.com (tylko w języku angielskim).
</p>

<a name="companies"></a><h2>Wsparcie korporacyjne</h2>

<p>PostgreSQL jest wspierany przez liczne firmy, które sponsorują programistów, udostępniają zasoby hostingowe oraz dają nam wsparcie finansowe.  Najwięksi wieloletni sponsorzy są wymienieni na naszej <a href="/about/sponsors">stronie o sponsorach rozwoju</a>.</p>

<p>Istnieje również duża społeczność <a href="/support/professional_support">firm oferujących wsparcie PostgreSQL-owe</a>, od indywidualnych konsultantów do wielonarodowych przedsiębiorstw.</p>

<a href="/about/donate">Darowizny</a> są mile widziane.

<a name="additional_software"></a><h2>Linki</h2>
<p>
Oprócz głównego projektu jakim jest PostgreSQL warto wspomnieć o ponad 100 aktywnych podprojektach, które dostarczą produkcyjnej jakości rozwiązania do replikacji, migracji, zachowywania kompatybilności i współpracy, narzędzia do rozwijania i graficznej administracji.  Najważniejsze komponenty są skatalogowane na <a href="http://www.pgfoundry.org">pgFoundry</a> lub naszej <a href="/download">stronie z plikami do ściągnięcia.</a>  Poniżej są linki do tych, które zostały wspomniane tutaj:

</p>
<h3>Narzędzia dla programistów</h3>
<ul>
<li><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></li>
<li><a href="http://pgfoundry.org/projects/edb-debugger/">Debugger PL/pgSQL</a></li>
</ul>

<h3>Replikacja i skalowanie horyzontalne</h3>

<ul>
<li><a href="http://bucardo.org/">Bucardo</a></li>
<li><a href="https://developer.skype.com/SkypeGarage/DbProjects/SkyTools">Skytools</a>, w tym <a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a> i <a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></li>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
<li><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></li>
</ul>
