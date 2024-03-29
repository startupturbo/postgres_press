Subject: Вышел PostgreSQL 8.4

Email Body:

Для незамедлительной публикации

1 июля 2009: Всемирная группа разработчиков PostgreSQL выпустила новую версию PostgreSQL, продолжая активную разработку самой развитой системы управления базами данных с открытым исходным кодом. Новая версия содержит множество улучшений, делающих администрирование, написание запросов и программирование баз данных PostgreSQL более простым, чем когда-либо. Благодаря 293 новым функциям и улучшениям, содержащимся в версии 8.4, причин выбрать PostgreSQL для вашего нового проекта стало ещё больше.

Львиная доля изменений в PostgreSQL 8.4 -- это новые или улучшенные инструменты и команды для администрирования и мониторинга. Каждый пользователь может найти для себя те возможности, которые сделают именно его ежедневную работу с PostgreSQL более лёгкой и продуктивной.

"Мы используем PostgreSQL уже семь лет и с нетерпением ожидаем появления многих новшеств версии 8.4, в особенности таких возможностей как права доступа на столбцы, индивидуальные настройки локали у баз данных, поиск по частичному совпадению с помощью GIN-индексов и определяемые пользователем исключения, -- говорит Джеффри Уэбстер (Jeffrey Webster), исполнительный директор проекта ZooLoo.com. -- PostgreSQL дал нам возможность расти, не заставляя приносить в жертву целостность данных."

Среди самых популярных улучшений можно выделить следующие.
 * Многопоточное восстановление базы данных, обеспечивающее до 8-кратного увеличения скорости реставрации базы данных из резервной копии.
 * Права доступа на столбцы, предоставляющие более тонкий контроль над важными данными.
 * Раздельные локали для баз данных, что упрощает работу с PostgreSQL в многоязычных окружениях.
 * Обновления "на месте" с помощью бета-версии инструмента pg_migrator, который позволяет перейти с версии 8.3 на 8.4 без существенного простоя системы.
 * Новые инструменты мониторинга запросов, помогающие администраторам получить лучшее представление об активности запросов.

В версии 8.4 стало проще анализировать данные с помощью развитых средств стандарта ISO/ANSI SQL2003: "оконных" функций (windowing functions), общих табличных выражений (common table expressions) и рекурсивных запросов с операциями соединения. "Такие структуры запросов существенно повышают выразительную мощь PostgreSQL-диалекта языка SQL, позволяя пользователям формулировать интересные запросы лишь в одном SQL-предложении, что ранее представлялось совершенно невозможным, -- поясняет Сейлеш Кришнамёрфи (Sailesh Krishnamurthy), основатель компании Truviso. Улучшения хранимых процедур, такие как значения параметров по умолчанию и переменное число параметров (variadic parameters), делают программирование баз данных более простым, а код становится более компактным."

С выходом новой версии также улучшается общая производительность приложений. Администратор баз данных Системы судопроизводства штата Висконсин Кевин Гриттнер (Kevin Grittner) отмечает: "PostgreSQL продолжает улучшать производительность с выходом очередной основной версии. Версия 8.4 включает несколько оптимизаций, таких как полусоединения (semi-joins) и антисоединения (anti-joins), что позволяет значительно сократить время обработки некоторых из наших наиболее важных запросов к базам данных."

Появление новых возможностей означает, что PostgreSQL 8.4 будет служить большему числу пользователей, чем когда-либо. И среди таких новых пользователей -- проект OpenStreetMap. "Когда мы планировали новую версию API для OpenStreetMap, стало очевидно, что нам нужна первоклассная система управления базами данных, которая не только предоставит все нужные нам возможности, но и будет хорошо работать на необходимых нам масштабах. Хотя существует много систем с открытым исходным кодом, выбор для нас очевиден, это PostgreSQL," -- говорит Том Хьюз (Tom Hughes), системный администратор проекта OpenStreetMap.

Контакты для дополнительной информации:
  Николай Самохвалов
  ru@postgresql.org
  +7-905-783-9804
  http://PostgreSQLRussia.org

* Страница для загрузки PostgreSQL 8.4: http://www.postgresql.org/download/

* Полный список нововведений версии 8.4 (англ.): http://www.postgresql.org/about/press/features84

* Сведения об изменениях (Release Notes, англ.): http://www.postgresql.org/docs/8.4/static/release.html

* Расширенный пресс-релиз: http://www.postgresql.org/about/press/presskit84.html.ru

О PostgreSQL: PostgreSQL -- это коллективный продукт сотен разработчиков, основанный на более чем двух десятилетиях работы, начавшейся в Калифорнийском университете в Беркли. Благодаря давней поддержке возможностей транзакционных баз данных корпоративного уровня и масштабируемости PostgreSQL сегодня используется в самых требовательных областях бизнеса и в правительственных учреждениях. PostgreSQL распространяется под лицензией BSD, которая позволяет использование и распространение без каких-либо отчислений как для коммерческих, так и для некоммерческих приложений. Больше информации можно найти на официальном сайте: http://www.postgresql.org