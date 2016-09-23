<!-- BEGIN page_title_block -->
PostgreSQL 8.3 - Lista cech
<!-- END page_title_block -->

<h1>PostgreSQL 8.3 - Lista cech</h1>

<p>Poniższa lista zawiera większość, ale nie wszystkie nowe cechy w wersji 8.3.  Jako, że jest ich wiele, zostały zgrupowane według przeznaczenia i opisane skrótowo.  Dalsze informacje znajdziesz w dokumentacji PostgreSQL-a oraz w uwagach do wydania.  Jeszcze krótsze zestawienie możesz znaleźć w <a href="/about/featurematrix">macierzy cech (feature matrix)</a> (tylko w języku angielskim).</p>

<h2>Ostrzeżenie przed aktualizacją</h2>

<p>Aby utrzymać wysokie standardy, jakimi projekt PostgreSQL kieruje się przy dbaniu o niezawodność i spójność danych, w wersji 8.3 gruntownie posprzątaliśmy niektóre z konwersji typów danych (tzw. "castowanie").  Te zmiany mogą spowodować problemy u niektórych użytkowników aktualizujących starsze aplikacje, które zostały napisane bez brania pod uwagę sposobu w jaki wykonywane są porównania między typami danych, zwłaszcza dla wersji PostgreSQL sprzed kilku lat.  Użytkownicy aktualizujący bardzo stare aplikacje albo ci, którzy podejrzewają, że mogą mieć niestarannie napisany kod aplikacji czy procedur składowanych powinni poświęcić więcej czasu na testy przed aktualizowaniem swoich produkcyjnych systemów.  Zobacz <a href="/docs/8.3/static/release-8-3.html">uwagi do wydania</a> dla uzyskania dalszych informacji.</p>

<h2>Wydajność</h2>

<h3>Konsystentna wydajność</h3>

<p>Poniższe cechy zwiększają zdolność PostgreSQL-a do zwracania odpowiedzi w stabilnym czasie, niezależnie od obciążenia serwera:</p>

<dl>
<dt>HOT</dt>
<dd>Heap Only Tuple (HOT) gwałtownie zmniejsza złożoność operacji związanych z częstym aktualizowaniem danych, minimalizując potrzebę czyszczenia usuniętych danych (vacuum) dając tym samym znaczną poprawę wydajności dla niektórych aplikacji.</dd>
<dt>Asynchroniczny Commit</dt>
<dd>Daje możliwość, aby polecenie COMMIT zwróciło kontrolę do aplikacji bez czekania na fizyczny zapis na dysku.  Pozwala to osiągnąć lepszy czas odpowiedzi kosztem potencjalnej możliwości starty niektórych transakcji w wypadku awarii systemu.</dd>
<dt>Rozproszenie punktów kontrolnych (checkpointów)</dt>
<dd>Automatyczne strojenie punktów kontrolnych: opóźnia i rozprasza checkpointy, zmniejszając ich wpływ na czasy odpowiedzi.</dd>
<dt>Strategia zapisu w tle "dokładnie na czas"</dt>
<dd>Automatyczne strojenie procesu zapisu w tle polegające na estymowaniu ile buforów należy zwolnić na podstawie bieżących statystyk aktywności.</dd>
</dl>

<h3>Większa szybkość</h3>

<p>Wiele nowych cech w znaczny sposób zwiększa szybkość konkretnych operacji, w tym:</p>

<dl>
<dt>Poprawiony czas odtwarzania (recovery)</dt>
<dd>Ilość I/O z Write Ahead Log podczas odtwarzania został zmniejszony o połowę dzięki poprawkom efektywności.</dd>
<dt>Bufory cykliczne dla przechowywania krotek (Tuplestore)</dt>
<dd>Znacznie przyspiesza małe merge joiny, unikając potrzeby korzystania z dysku.</dd>
<dt>Szybsze porównania LIKE/ILIKE</dt>
<dd>Zwiększa szybkość częściowych przyrównań, zwłaszcza dla wielobajtowych kodowań znaków.</dd>
<dt>Sortowanie pierwszych N elementów</dt>
<dd>Znacznie szybsze wyniki wyszukiwań z klauzulą LIMIT.</dd>
<dt>Leniwe przyznawanie XID</dt>
<dd>Pozwala PostgreSQL-owi uniknąć przypisywania identyfikatorów transakcji dla niektórych zapytań tylko odczytujących dane.  Powoduje zauważalnie większą wydajność dla baz głównie bądź tylko do odczytu.</dd>
<dt>Kosztowanie funkcji</dt>
<dd>Pozwala użytkownikom poinformować planer o orientacyjnym koszcie funkcji oraz spodziewanej ilości zwracanych wierszy, wynikiem czego są lepsze plany zapytań.</dd>
</dl>

<h3>Duże bazy danych</h3>

<p>Kilka poprawek pozwoli użytkownikom na prowadzenie jeszcze większych hurtowni danych na PostgreSQL-u:</p>
<dl>
<dt>Zsynchronizowane skanowania</dt>
<dd>Pozwala "przyłączyć się" do skanowania dużych tabel przez kolejnych użytkowników, znacznie zmniejszając całkowitą ilość operacji I/O.</dd>
<dt>Chronienie pamięci podręcznej L2</dt>
<dd>Optymalizacje w kodzie unikają zaśmiecania pamięci podręcznych CPU, które zmniejszało wydajność przy równoległych zapytaniach.</dd>
<dt>Zmniejszenie rozmiaru nagłówka danych o zmiennej długości</dt>
<dd>Zmniejsza rozmiary nagłówków dla większości pól o zmiennej długości.  Umożliwia zmniejszenie całkowitego rozmiaru bazy nawet o 20%.</dd>
</dl>

<h3>Wydajność w Windows</h3>

<p>Nie, nie zapomnieliśmy o naszych użytkownikach ze środowiska Windows.  8.3 pozwoli Windowsom stać się pełnoprawną platformą dla PostgreSQL-a:</p>
<dl>
<dt>Wsparcie dla MS Visual C++</dt>
<dd>Pozwala aby kod źródłowy PostgreSQL-a był skompilowany kompilatorem C++ Microsoftu, zamiast narzędzi MinGW. Zwiększa wydajność i stabilność na platformach MS.</dd>
<dt>Przeprojektowanie kodu startowego</dt>
<dd>Drastyczne zmniejszenie pamięci wymaganych dla procesu postmaster, co pozwala na więcej połączeń działających równolegle pod Windows.</dd>
</dl>

<h2>Administracja</h2>

<p>Chociaż PostgreSQL już wyprzedza zamknięte bazy danych w łatwości administracji, nadal jest miejsce na ulepszenia.  Tak więc dodaliśmy do wersji 8.3 kilka nowych cech ułatwiających zarządzanie serwerami baz danych i dostarczających więcej informacji DBA:</p>
<dl>
<dt>Logowanie w formacie CSV</dt>
<dd>Logowanie do pliku w formacie dogodnym do załadowania do bazy danych, pozwalając na łatwe tworzenie ad-hoc narzędzi do audytowania i analizowania wydajności.</dd>
<dt>Wsparcie dla SSPI oraz GSSAPI</dt>
<dd>Autentykacja Kerberos w PostgreSQL-u teraz wspiera API o standardzie przemysłowym: SSPI na Windows oraz GSSAPI w środowiskach Unix i Linux, pozwalając na łatwiejszą integrację z dużymi sieciami korporacyjnymi.</dd>
<dt>Ustawienia użytkownika (GUC) przypisane do funkcji</dt>
<dd>Pozwala funkcjom posiadanie ustawień GUC przypisanych do nich podczas ich tworzenia.  Jest to zwłaszcza przydatne dla rzeczy takich jak definiowanie ścieżki szukania podczas tworzenia funkcji, co poprawia bezpieczeństwo.</dd>
<dt>Wiele procesów Autovacuum</dt>
<dd>Pozwala na konfigurowalne zrównoleglenie demona utrzymaniowego PostgreSQL-a, powodując że autovacuum może być używane w aplikacjach z tysiącami tabel.</dd>
<dt>pg_standby</dt>
<dd>Narzędzie, które powoduje, że skonfigurowanie serera Warm Standby jest znacznie prostsze.</dd>
<dt>ORDER BY Nulls First/Last</dt>
<dd>Pozwala na tworzenie indeksów w których wartości NULL znajdują się albo na początku, albo na końcu.</dd>
</dl>

<h2>Programiści</h2>

<h3>Twórcy aplikacji</h3>

<p>Wiele usprawnień pomoże PostgreSQL-owi 8.3 dorównać zamkniętym bazom danych przy wspieraniu skomplikowanych, wielowarstwowych aplikacji bazodanowych, w tym:</p>
<dl>
<dt>Full Text Search</dt>
<dd>TSearch2, nasze zaawansowane narzędzie do wyszukiwania pełnotekstowego zostało w pełni zintegrowane z głównym kodem, co pozwoliło przy okazji poprawić API.  Dzięki temu TSearch2 będzie łatwiejszy w użyciu i łatwiej będzie uzupełniać go o nowe języki, słowniki i systemy wagowe.</dd>
<dt>Inwalidacja planów</dt>
<dd>Pozwala na czyszczenie zapamiętanych planów wykonania przez polecenie od aplikacji oraz automatyczne usuwanie planów gdy tabele są aktualizowane.</dd>
<dt>Aktualizowalne kursory</dt>
<dd>Kursory pozwalają na klauzulę WHERE CURRENT OF, dając większą elastyczność w tworzeniu aplikacji opartych o kursory.</dd>
</dl>

<h3>Nowe typy danych</h3>

<dl>
<dt>Wsparcie dla XML</dt>
<dd>Nowy typ danych, XML, spełnia specyfikacje SQL/XML ANSI SQL:2003, włącznie z weryfikowaniem poprawności dokumentu, operacji na typach, publikowaniem SQL/XML oraz zapytaniach XPatch.  Wersja 8.3 dodaje również dodatkowe funkcje pozwalające na eksport danych w formacie XML.</dd>
<dt>UUID</dt>
<dd>Ten nowy 128 bitowy typ jest kompatybilny z większością typowych generatorów GUID i UUID, ułatwiając tworzenie rozproszonych aplikacji.</dd>
<dt>Tablice złożonych typów</dt>
<dd>Tablice mogą być teraz tworzone z typów złożonych (typów zwracających wiele kolumn, takich jak tabela czy własne typy użytkownika).</dd>
<dt>ENUM</dt>
<dd>PostgreSQL wspiera teraz kolumny typu ENUM ze zdefiniowaną listą alternatywnych wartości.  Uprości to migrację z MySQL-a do PostgreSQL-a.</dd>
</dl>

<h3>Procedury składowane</h3>

<p>Dwie nowe cechy rozszerzają przydatność PL/pgSQL, najpopularniejszego języka procedur składowanych PostgreSQL:</p>
<dl>
<dt>Wsparcie dla funkcji tablicowych</dt>
<dd>PL/pgSQL, nasz najpopularniejszy język proceduralny wspiera teraz uproszczoną składnię dla funkcji zwracających wiersze.</dd>
<dt>Przewijanie kursorów w PL/pgSQL</dt>
<dd>Teraz PL/pgSQL również wspiera przewijanie kursorów pozwalając procedurom PL/pgSQL wykonywać skomplikowane operacje na wierszach.</dd>
</dl>

<h2>Narzędzia</h2>

<p>Wiele ważnych narzędzi nie jest dostarczanych z kodem źródłowym PostgreSQL-a aby pozostał łatwy w utrzymaniu i w rozsądnym rozmiarze.  Są one częścią zbioru kilkuset opcjonalnych komponentów PostgreSQL-a, które umożliwiają replikację, wysokodostępność, interfejsy do języków, integrację z aplikacjami oraz nowe eksperymentalne cechy.  Większość z nich jest dostępna z <a href="http://www.pgfoundry.org">pgFoundry</a>.  Wymienione poniżej narzędzia są dostosowane do wersji 8.3 bądź też osiągnęły dojrzałość wraz z cyklem rozwojowym wersji 8.3.  Dotyczy to między innymi kilku systemów replikacji, które zostały zmodyfikowane by wykorzystać nowe wstawki programowe dla replikacji:</p>
<dl>
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></dt>
<dd>Ten wielowątkowy system utrzymywania puli połączeń pozwala jednemu serwerowi baz danych PostgreSQL utrzymywać do 100,000 połączeń od serwerów aplikacyjnych.</dd>
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a></dt>
<dd>Interfejs do rozproszonych, skalujących się horyzontalnie tabel w PostgreSQL-u.</dd>
<dt><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></dt>
<dd>Zgodny ze standardami interfejs SNMP dla PostgreSQL-a, ułatwiający integrację z dużymi systemami monitorowania.</dd>
<dt><a href="http://code.google.com/p/sepgsql/downloads/list">SEpgsql</a></dt>
<dd>Rozszerzenie bezpieczeństwa oparte o model i polityki SELinux, które pozwala na stosowanie zunifikowanej polityki SELinux zarówno w systemie operacyjnym jak i bazie danych.</dd>
<dt><a href="http://pgfoundry.org/projects/edb-debugger/">Debugger PL/pgSQL</a></dt>
<dd>Nowe graficzne narzędzie pozwalające na interaktywne poszukiwanie błędów oraz uruchamianie krok-po-kroku procedur PL/pgSQL.</dd>
<dt><a href="http://pgfoundry.org/projects/pgpool/">pgPool-II</a></dt>
<dd>Opierając się na sukcesie pgPool, nowy agent replikujący zapytania dodaje partycjonowanie danych.</dd>
<dt><a href="http://bucardo.org/">Bucardo</a></dt>
<dd>Pierwszy PostgreSQL-owy system asynchronicznej replikacji multi-master jest już dostępny.</dd>
<dt><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></dt>
<dd>Projekt, który niedawno otworzył źródła, integruje i ulepsza kilka istniejących narzędzi do klastrowania PostgreSQL-a, takich jak pgCluster czy pgPool.</dd>
<dt><a href="http://www.slony.info/">Slony-I</a></dt>
<dd>Wersja 2.0 Slony-I, naszego najpopularniejszego systemu replikacji teraz wykorzystuje nowe wstawki dla replikacji w PostgreSQL-u 8.3.</dd>
</dl>
