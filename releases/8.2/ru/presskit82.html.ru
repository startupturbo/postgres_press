<!-- BEGIN page_title_block -->
Прeсс-релиз PostgreSQL 8.2
<!-- END page_title_block -->

<h1>Прeсс-релиз PostgreSQL 8.2</h1>

<h2>Содержание</h2>

<p>
 &nbsp; <a href="#original_release">Текст оригинального пресс-релиза</a><br />
 &nbsp; <a href="#additional_features">Дополнительные возможности</a><br />
 &nbsp; <a href="#download">Где получить</a><br />
 &nbsp;	<a href="#docs">Документация</a><br />
 &nbsp; <a href="#license">Лицензия</a><br />
 &nbsp; <a href="#contact">Контакты</a><br />
 &nbsp; <a href="#quoted_companies">Информация о цитируемых компаниях</a><br />
 &nbsp; <a href="#companies">Корпоративная поддержка</a><br />
 &nbsp; <a href="#additional_software">Дополнительное программное обеспечение</a><br />
 &nbsp; <a href="#translations">Англоязычная версия</a><br />
</p>

<a name="original_release"></a><h2>Текст оригинального пресс-релиза</h2>
<p><b>5 декабря 2006 г, Вашингтон (конференция LISA):</b> Международная команда разработчиков PostgreSQL
объявила о выпуске версии 8.2 объектно-реляционной СУБД PostgreSQL.
Это 14-й релиз, в котором улучшена производительность, 
добавлены новые возможности, востребованные пользователями,
предоставлены возможности управления, сравнимые с ведущими
СУБД. По оценкам специалистов, версия 8.2 привлечет еще больше пользователей 
к миграции на PostgreSQL.</p>

<p>"Этот выпуск затрагивает почти все команды и средства базы данных,"
говорит Брюс Момджиан, член руководства команды разработчиков PostgreSQL 
и архитектор баз данных фирмы EnterpriseDB. 
"Добавлен расширенный синтаксис  и интерфейсы,
востребованные пользователями, что упрощает новым администраторам задачу 
более полного использования всех передовых возможностей PostgresSQL."</p>

<p>"Unisys рада отметить значительные улучшения масштабируемости 
и производительности PostgreSQL на крупных многопроцессорных системах,"
сообщает Али Шедман, вице-президент и главный менеджер подразделения
решений, систем и технологий Open Source компании Unisys. "Версия 8.2
продолжает утверждение PostgreSQL в качестве СУБД,
готовой для принятия в крупном бизнесе."</p>

<p>
Новые средства и возможности, упрощающие управление и разработку баз данных, включают:</p>

<p><b>Улучшенная производительность:</b> версия 8.2 повышает в среднем на 20%
общую производительность в крупномасштабных тестах OLTP.
Еще больше выиграют пользователи хранилищ данных. Нововведения включают 
более быструю сортировку в памяти и на диске, лучшую масштабируемость на нескольких процессорах, 
улучшенное планирование запросов к секционированным данным, более быструю
массовую загрузку данных и чрезвычайно ускоренные внешния слияния.</p>

<p><b>Базы данных "теплого резерва":</b>  при помощи дополнения к системе
восстановления на момент времени (появившейся в версии 8.0)
администраторы теперь могут легко создавать
копии кластеров баз данных с передачей нагрузки при сбое.</p>

<p><b>Построение индексов в on-line:</b> построение индексов теперь может вестись
во время записи приложениями данных в таблицы, позволяя настраивать производительность без
прерывания работы.</p>

<p><b>Возможности SQL:2003:</b>  в PostgreSQL, известный соответствием стандартам,
добавлен синтаксис для некоторых новых возможностей, представленных 
в спецификации ANSI SQL:2003, включая: статистические агрегаты,
многострочные выражения VALUE, UPDATE RETURNING и многостолбцовые агрегаты.</p>

<p>Расширенные возможности, предоженные в PostgreSQL 8.2 раньше, 
чем в большинстве основных СУБД, включают:</p>

<p><b>Обобщенные инверсные индексы:</b> поддерживают более маштабируемый
и более простой для программирования способ индексирования полуструктурированных данных и текста.</p>

<p><b>DTrace:</b>  PostgreSQL подотовлен для Solaris DTrace и
других современных средств трассировки посредством новой универсальной системы мониторинга.</p>

<p>"При работе с приложениями хранилищ данных с таблицами в миллиарды строк
и терабайты данных, перестроение индексов в online и возможности "горячего"
резервирования имеют критическую важность," говорит Тео Шлосснагл,
руководитель OmniTI Computer Consulting. "Мы также были очень рады узнать, 
что PostgreSQL теперь полноценно взаимодействует с DTrace. Это означает, что
наши регулярные процедуры по анализу систем теперь могут включать
сбор данных о СУБД, давая гораздо более показательные результаты."</p>


<p>Десятки дополнений и улучшений в версии 8.2 
сделают труд администраторов PostgreSQL более продуктивным. За подробностями обращайтесь к материалам для прессы.
Получить PostgreSQL можно со <a href="/download">страницы загрузки.</a></p>

<p><b>О PostgreSQL:</b> 
PostgreSQL -- это коллективный продукт сотен разработчиков,
основанный на двух десятилетиях работы, начавшейся в Калифорнийском
Университете в Беркли.
С поддержкой возможностей, необходимых для крупных организаций,
таких, как транзакции, функции, триггеры и вложенные запросы,
PostgreSQL используется сегодня многими фирмами и
правительственными учреждениями с самыми высокими требованиями.
PostgreSQL распространяется под лицензией BSD, допускающей
использование и распространение без каких-либо отчислений как для
коммерческих, так и для некоммерческих приложений.
</p>

<a name="additional_features"></a><h2>Дополнительные возможности версии</h2>
Кроме основных нововведений, перечисленных выше, добавлено более 200
новых возможностей и улучшений, введенных десятками 
разработчиков в версии 8.2. Среди них:
<ul>
<li>Необязательные блокировки: позволяют вести контроль объектов на уровне приложений
при помощи быстрого механизма блокировок PostgreSQL.</li>
<li>Избирательный pg_dump: допускает транзакционно-согласованное
архивирование наборов таблиц, задавая их включение/исключение из архива
при помощи регулярных выражений.</li>

<li>Prepared Statements: новые административные интерфейсы и улучшения производительности для prepared statements.</li>
<li>ISN/ISBN: этот модуль, реализующий типы данных для поддержки поиска ISN продуктов в системах инввентаризации и продаж, обновлен для поддержки последних международных стандартов.</li>
<li>Криптография: модуль pgcrypto, поддерживающий криптографию в базах данных, дополнен последними алгоритмами.</li>
<li>Расширения SQL: введен новый синтаксис, включая UPDATE RETURNING, DROP IF EXISTS, ON COMMIT и новые команды управления владельцами и правами, упрощающие управление объектами базы данных из командной строки.</li>
<li>Пакетный отбор PSQL: поддерживает вывод строк в консоли "пакетами" вместо вывода всех строк сразу.</li>
<li>Рефакторинг ECPG: встроенный интерфейс PostgreSQL для C значительно переработан, добавлены новые интерфейсы.</li>
<li>Значительные усовершенствования TSearch2: поддержка UTF-8, тезаурус, поддержка перезаписи запросов и индексации GIN.</li>
<li>PL/Python: теперь поддерживает именованные параметры и функции, возвращающие наборы данных.</li>
</ul>
<p>Расширяемая архитектура PostgreSQL привела к появлению группы
дополнительных модулей, таких, как новые процедурные языки, интерфейсы к
внешним системам, новые типы индексов, средства репликации и высокой доступности,
размещенные на <a href="http://www.pgfoundry.org">официальном сайте сообщества PostgreSQL.</a>
Проекты сообщества, значительно продвинувшиеся к выходу версии 8.2,
включают:</p>
<ul>
<li>Полные разъединения: благодаря Google Summer of Code, PostgreSQL стал первой СУБД, реализующей этот новый радикальный механизм слияний.</li>
<li>PGPoolII: в PGPool, при спонсорской поддержке Японского правительства, были добавлены новые возможности распределения нагрузки и секционирования</li>
<li>PL/Java: одна из двух реализаций процедурного языка Java достигла статуса промышленного решения, позволяя полностью использовать в базе данных средства Java.</li>
</ul>

<p>
О десятках других нововведений версии 8.2 вы можете прочитать в 
<a href="/docs/current/static/release.html">информации о релизе
</a>.
</p>

<a name="download"></a><h2>Где получить</h2>

<ul>
<li><a href="/ftp/latest/">Список FTP-серверов</a></li>
<li><a href="/download/bittorrent">Bittorrent</a></li>
<li><a href="/ftp/binary/v8.2.0/win32/">Windows
Installer</a> (также доступен через Bittorrent)</li>
<li><a href="/ftp/binary/v8.2.0/">Другие двоичные дистрибутивы,
включая Linux, Mac OSX и Solaris</a></li>
<li><a href="/projects/pgsql/">SourceForge</a> (в т.ч.
Windows installer)</li>
</ul>

<a name="docs"></a><h2>Документация</h2>

<ul>
<li><a href="/docs">Официальная документация</a></li>
<li><a href="/docs/techdocs">TechDocs</a></li>
<li><a href="/about/press/faq">Часто задаваемые вопросы</a></li>
</ul>

<a name="license"></a><h2>Лицензия</h2>
<p>
PostgreSQL распространяется под  <a href="/about/licence">лицензией BSD</a>,
которая требует только того, чтобы лицензируемый исходный код 
сохранял информацию об авторских правах и лицензировании. Эта лицензия,
<a href="http://www.opensource.org/licenses/bsd-license.php">сертифицированная OSI
</a> широко изпользуется из-за гибкости и "дружественности" для бизнеса, 
так как она не ограничивает использование PostgreSQL 
в коммерческих и "закрытых" приложениях. Вместе с 
поддержкой многими компаниями и коллективной собственностью на код
лицензия BSD сделала PostgreSQL популярным среди производителей, желающих
встроить в свои продукты базу данных без проблем с отчислениями, замыканием на одного производителя или сменой
условий лицензирования.
</p>

<a name="contact"></a><h2>Контакты</h2>

<p><a href="http://www.linuxshare.ru/postgresql/">Русская страница PostgreSQL</a></p>
<p><a href="http://www.postgresql.org">Англоязычный сайт PostgreSQL</a></p>

<p>Справки:<br />
Николай Газалов<br />
Пятигорск<br />
+7 8793 365584<br />
<a href="mailto:ru@postgresql.org">ru@postgresql.org</a></p>

<p>Контакты в других регионах доступны на 
<a href="/about/press/contact">странице международных контактов</a>.</p>

<a name="quoted_companies"></a><h2>Полный текст цитат</h2>
<p>"Unisys рада отметить значительные улучшения масштабируемости 
и производительности PostgreSQL на крупных многопроцессорных системах,"
сообщает Али Шедман, вице-президент и главный менеджер подразделения
решений, систем и технологий Open Source компании Unisys. "Версия 8.2
продолжает утверждение PostgreSQL в качестве СУБД,
готовой для принятия в крупном бизнесе. PostgreSQL является ключевым
компонентом Unisys Open and Secure Integrated Solution -- OASIS -- для
обработки транзакций Java EE на базе избранных технологий open source.
Unisys намерена продолжать содействие сообществу
в продвижении PostgreSQL в крупный бизнес."</p>
<p><b>О Unisys:</b> <a href="http://www.unisys.com/">Unisys</a> --
всемирная компания технологических услуг и решений. 
Ее консультанты применяют опыт Unisys в консалтинге, системной интеграции,
аутсорсинге, инфраструктуре и серверных технологиях, помогая клиентам
вести безопасную интеграцию бизнес-операций. Unisys строит более
защищенные организации, добавляя полный контроль к бизнес-операциям клиентов.
Используя Unisys 3D Visible Enterprise, компания делает видимыми последствия
решений - помимо инвестиций, возможностей и рисков.
По вопросам о релизе <a href="mailto:brian.daly@unisys.com">свяжитесь с Brian Daly</a> (English only)</p>

<p>"Мы управляем многими критично важными системами PostgreSQL в Solaris 10.
При работе с приложениями хранилищ данных с таблицами в миллиарды строк
и терабайты данных, перестроение индексов в online и возможности "горячего"
резервирования имеют критическую важность," говорит Тео Шлосснагл,
руководитель OmniTI Computer Consulting. "Мы также были очень рады узнать, 
что PostgreSQL теперь полноценно взаимодействует с DTrace. Это означает, что
наши регулярные процедуры по анализу систем теперь могут включать
сбор данных о СУБД, давая гораздо более показательные результаты."</p>
<p><b>Об OmniTI:</b> <a href="http://omniti.com/home">OmniTI</a>
 консалтинговая компания по Интернет-технологиям, расположенная 
в Колумбии, Мерилэнд. Имея список клиентов, выглядящий как справочник
"Кто есть кто в Интернет", OmniTI зарекомендовала себя как компания
первого выбора в вопросах масштабируемости, производительности и
безопасности, с которыми сталкиваются сегодня крупномасштабные Wen-приложения.
С ними можно связаться по телефону 877-887-3031 или адресу info@omniti.com (English only).</p>

<a name="companies"></a><h2>Корпоративная поддержка</h2>

<p>PostgreSQL пользуется поддержкой ряда компаний, которые
спонсируют разработчиков, предоставляют ресурсы хостинга и финансовую поддержку. 
Крупнейшие долгосрочные спонсоры перечислены на 
<a href="/about/sponsors">странице спонсоров разработки</a>.</p>

<p>Также существует большое сообщество <a
href="/support/professional_support">компаний, предоставляющих поддержку
PostgreSQL</a>, от индивидуальных консультантов до многонациональных компаний.</p>

С радостью принимаются <a href="/about/donate">пожертвования</a>.

<a name="additional_software"></a><h2>Ссылки</h2>
<p>
Основной проект PostgreSQL дополняется более, чем 100 активными подпроектами,
которые предоставляют решения промышленного качества для 
репликации, миграции, совместимости, взаимодействия, дизайна
и графического администрирования.
</p>

<h3>Проекты</h3>

<ul>
<li><a href="http://projects.postgresql.org">pgFoundry</a></li>
<li><a href="http://gborg.postgresql.org">GBorg</a></li>
</ul>

<h3>Драйверы</h3>

<ul>
<li><a href="http://jdbc.postgresql.org/">JDBC</a></li>
<li><a href="http://pgfoundry.org/projects/psqlodbc/">ODBC</a></li>
<li><a href="http://pgfoundry.org/projects/npgsql">.Net</a></li>
<li><a href="http://search.cpan.org/~dbdpg/DBD-Pg/Pg.pm">Perl DBI</a></li>
<li><a href="http://initd.org/projects/psycopg1">Python</a></li>
</ul>

<h3>Пакеты с расширенными возможностями</h3>

<ul>
<li><a href="http://postgis.refractions.net/">Сервер географичекой информации (PostGIS)</a></li>
<li><a href="http://openfts.sourceforge.net/">Полнотекстовый поиск (OpenFTS)</a></li>
<li><a href="http://www.bizgres.org">Бизнес-интеллект/хранилища данных (Bizgres)</a></li>
</ul>

<h3>Графические пользовательские интерфейсы</h3>

<ul>
<li><a href="http://www.pgadmin.org/">pgAdmin3</a></li>
<li><a href="http://phppgadmin.sourceforge.net/">phpPgAdmin</a></li>
<li><a href="/docs/techdocs.54">Список других GUI</a></li>
</ul>

<h3>Репликация</h3>

<ul>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
</ul>

<a name="translations"></a><h2>Официальная англоязычная версия этого документа</h2>

<p><a href="/about/press/presskit82.html.en">8.2 PressKit</a></p>
