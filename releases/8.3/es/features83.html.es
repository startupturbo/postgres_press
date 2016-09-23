<!-- BEGIN page_title_block -->
PostgreSQL 8.3 Feature List
<!-- END page_title_block -->

<h1>Lista de Caracter�sticas de PostgreSQL 8.3</h1>

<p>La lista siguiente cubre la mayor�a de las caracter�sticas nuevas de la
versi�n 8.3. Puesto que son muy numerosas, se han agrupado seg�n su prop�sito
y las descripciones son breves. Para mayor informaci�n, revise la documentaci�n
de PostgreSQL y las <i>release notes</i>. Esta lista se mantiene en un formato
a�n m�s abreviado en la 
<a href="/about/featurematrix">feature matrix</a> (s�lo en ingl�s).</p>

<h2>Nota Precautoria sobre la Actualizaci�n</h2>

<p>Para cumplir con los altos est�ndares de integridad de datos y robustez
del proyecto PostgreSQL, en la versi�n 8.3 hemos limpiado algunas de las
conversiones de tipos (<i>casts</i>). Esta refactorizaci�n puede causar problemas
a algunos usuarios que actualicen aplicaciones que fueron escritas sin
mucha preocupaci�n sobre las comparaciones de tipos de datos, especialmente
aquellas escritas para versiones de PostgreSQL de muchos a�os de antig�edad.
Aquellos usuarios que est�n actualizando aplicaciones muy antiguas, o que
sospechen que tienen c�digo poco cuidadoso en aplicaciones o procedimientos
almacenados, deber�an hacer pruebas adicionales antes de actualizar sus
sistemas en producci�n. Vea las 
<a href="/docs/8.3/static/release-8-3.html">release notes</a> para obtener
mayor informaci�n.  </p>

<h2>Rendimiento</h2>

<h3>Consistencia en el rendimiento</h3>

<p>Estas caracter�sticas mejoran la habilidad de PostgreSQL para entregar
tiempos de respuesta consistentes sin importar la carga del servidor:</p>

<dl>
<dt>HOT</dt>
<dd>Heap Only Tuple (HOT) reduce significativamente los problemas de mantenci�n
que tienen que ver con datos frecuentemente actualizados, disminuyendo la
necesidad de hacer VACUUM y otorgando mejoras importantes de rendimiento para
algunas aplicaciones.</dd>

<dt>Compromiso (commit) asincr�nico</dt>
<dd>Permite que COMMIT retorne el control a la aplicaci�n sin esperar la
escritura f�sica en disco.  Esto permite mejores tiempos de respuesta, al
costo de potencialmente perder una cantidad definida de transacciones en
el evento de una falla del sistema.</dd>
<dt>Checkpoints Extendidos</dt>
<dd>Autoajuste de Checkpoints: retarda y distribuye el checkpoint, reduciendo el
impacto de �ste en los tiempos de respuesta.</dd>
<dt>Estrategia �just-in-time� de escritura en segundo plano</dt>
<dd>Autoajuste del �escritor en segundo plano�, que estima cu�ntos bufers
deber�a intentar limpiar, bas�ndose en estad�sticas sobre actividad reciente.
</dd>
</dl>

<h3>Mejoras de velocidad</h3>

<p>Varias caracter�sticas nuevas mejoran significativamente la velocidad de
operaciones espec�ficas, incluyendo:</p>

<dl>
	<dt>Tiempos de recuperaci�n mejorados</dt>
	<dd>La cantidad de E/S desde el �Write Ahead Log� en tiempo de recuperaci�n
	ha sido reducida a la mitad, gracias a mejoras de eficiencia.
	</dd>
	<dt>B�fer circular de �tuplestore�</dt>
	<dd>Incrementa considerablemente la velocidad de �merge joins�, debido a que se evita la necesidad de escribir pasos intermedios a disco.</dd>
	<dt>Comparaciones LIKE/ILIKE m�s r�pidas</dt>
	<dd>Mejora la velocidad de coincidencias parciales, especialmente con codificaciones de m�ltiples bytes.</dd>
	<dt>Ordenamiento Top-N</dt>
	<dd>B�squedas significativamente m�s r�pidas para resultados con LIMIT.</dd>
	<dt>Asignaci�n de XID �perezosa�</dt>
	<dd>Permite que PostgreSQL evite asignar IDs de transacci�n a algunas consultas de s�lo lectura, resultando en rendimiento notablemente mejor en bases de datos de s�lo lectura o mayoritariamente de lectura.  </dd>
	<dt>Costo de Funciones</dt>
	<dd>Permite a los usuarios informar al optimizador sobre el costo de ejecuci�n y la cantidad de filas retornadas por una funci�n, lo cual redunda en mejores planes de ejecuci�n.</dd>
</dl>

<h3>Bases de datos grandes</h3>

<p>Unas pocas mejoras permitir�n que los usuarios construyan almacenes de datos a�n m�s grandes con PostgreSQL:</p>
<dl>
<dt>Recorridos sincronizados</dt>
<dd>Permite que los recorridos de tablas grandes se �acarreen� unos a otros, reduciendo
enormemente la E/S total requerida.</dd>
<dt>Protecci�n de Cache L2</dt>
<dd>Optimizaciones del c�digo impiden que los caches de CPU sean continuamente refrescados, lo cual ralentiza consultas concurrentes.</dd>
<dt>Reducci�n de tama�o de encabezados Varlena (�Var-Varlena�)</dt>
<dd>Reduce los tama�os de encabezado para la mayor�a de los campos de largo variable. Puede disminuir el tama�o total de las bases de datos hasta un 20%.  </dd>
</dl>

<h3>Rendimiento en Windows</h3>

<p>No hemos olvidado a nuestro usuarios Windows. Puede que 8.3 permita a
Windows convertirse en una plataforma de primera clase para PostgreSQL: </p>
<dl>
<dt>Soporte a MS Visual C++ </dt>
<dd>Permite que el c�digo fuente de PostgreSQL sea compilado con el compilador C++
de Microsoft, en lugar de las herramientas MinGW. Esto mejora el rendimiento y la
estabilidad en plataformas MS.  </dd>
<dt>Redise�o del c�digo de inicializaci�n del backend</dt>
<dd>Reduce dr�sticamente los requerimientos de memoria en el postmaster,
permitiendo una cantidad mayor de backends en paralelo en Windows.</dd>
</dl>

<h2>Administraci�n</h2>

<p>A�n cuando PostgreSQL ya es superior a otras bases de datos comerciales
con respecto a la facilidad de administraci�n, siempre queda espacio para
seguir mejorando. Por lo tanto, hemos agregado unas cuantas caracter�sticas
a la versi�n 8.3 que la hacen m�s f�cil de administrar y proporcionan mayor
informaci�n al DBA: </p>
<dl>
<dt>Salida de log CSV </dt>
<dd>Registra eventos en un archivo que se puede cargar en una base de datos,
simplificando la creaci�n de herramientas ad-hoc de auditor�a y an�lisis de rendimiento.
</dd>
<dt>Soporte de SSPI y GSSAPI</dt>
<dd>La autentificaci�n Kerberos en PostgreSQL ahora soporta las APIs est�ndares seguras:
SSPI en Windows y GSSAPI en Linux y Unix, facilitando la integraci�n en redes corporativas
grandes.  </dd>
<dt>Configuraci�n GUC por funci�n</dt>
<dd>Permite a cada funci�n tener configuraci�n GUC propia, definida al momento de
creaci�n de la funci�n.  Es especialmente �til para definir la ruta de b�squeda
de la funci�n al tiempo de creaci�n, lo cual mejora la seguridad.</dd>
<dt>M�ltiples esclavos Autovacuum </dt>
<dd>Permite paralelismo configurable del agente de mantenci�n de PostgreSQL,
permitiendo el uso de autovacuum en aplicaciones con miles de tablas.</dd>
<dt>pg_standby</dt>
<dd>Una herramienta administrativa que simplifica mucho la configuraci�n de
servidores �Warm standby�.</dd>
<dt>ORDER BY Nulls First/Last</dt>
<dd>Permite que el ordenamiento especifique si los valores NULL deben ir al principio o al final.</dd>
</dl>

<h2>Desarrolladores</h2>

<h3>Desarrollo de aplicaciones</h3>

<p>Varias mejoras ayudan a que PostgreSQL est� al nivel de las mejores bases
de datos comerciales, permitiendo el desarrollo de aplicaciones de bases de datos
complejas y de m�ltiples capas, incluyendo: </p>
<dl>
<dt>B�squeda exhaustiva en texto</dt>
<dd>TSearch2, nuestra herramienta de avanzada tecnolog�a para b�squeda en texto,
ha sido incorporada en el c�digo central, y tiene una API m�s elegante.  Esto har�
que TSearch2 sea m�s f�cil de usar, al tiempo que es m�s f�cil extenderlo con
nuevos lenguajes, diccionarios y sistemas de ponderaci�n.</dd>
<dt>Invalidaci�n de planes</dt>
<dd>Permite que los planes de ejecuci�n almacenados en cache sean eliminados,
tanto por invocaciones de la aplicaci�n como por cambios en las tablas utilizadas.
</dd>
<dt>Cursores actualizables</dt>
<dd>Los cursores ahora soportan WHERE CURRENT OF, flexibilizando el dise�o
de aplicaciones basadas en cursores.  </dd>
</dl>

<h3>Nuevos tipos de datos</h3>

<dl>
<dt>Soporte XML</dt>
<dd>El nuevo tipo de dato XML soporta completamente la especificaci�n SQL/XML
de ANSI SQL:2003, incluyendo verificaciones de sintaxis, chequeos de tipos de datos,
publicaci�n SQL/XML y consultas XPath. La versi�n 8.3 tambi�n incluye funciones
adicionales para exportar datos en formato XML.</dd>
<dt>UUID</dt>
<dd>Este nuevo tipo de 128 bits es compatible con los generadores GUID y UUID m�s comunes,
favoreciendo el dise�o de aplicaciones distribuidas.</dd>
<dt>Arreglos de tipos compuestos</dt>
<dd>Ahora se pueden crear arreglos usando tipos compuestos (es decir, aquellos tipos que tienen m�ltiples columnas, como el tipo de una tabla o un tipo creado manualmente).</dd>
<dt>ENUM</dt>
<dd>PostgreSQL ahora soporta columnas ENUM, que llevan una lista predefinida ordenada de alternativas. Esto facilitar� la migraci�n de aplicaciones de MySQL a PostgreSQL.</dd>
</dl>

<h3>Procedimientos almacenados</h3>

<p>Dos caracter�sticas nuevas expanden la utilidad de PL/pgSQL, el lenguaje de procedimientos almacenados m�s popular de PostgreSQL:</p>
<dl>
	<dt>Soporte a �funciones tablas�</dt>
	<dd>PL/pgSQL ahora soporta una sintaxis simplificada para funciones que retornan conjuntos de registros.</dd>
	<dt>Cursores desplazables (scrollable)</dt>
	<dd>PL/pgSQL ahora soporta adem�s cursores desplazables, permitiendo que los 
	procedimientos PL/pgSQL lleven a cabo manipulaciones complejas de registros.</dd>
</dl>

<h2>Accessorios</h2>

<p>Varias herramientas importantes no son distribuidas con el c�digo central
de PostgreSQL, con el objetivo de mantener dicho c�digo central peque�o y
mantenible. Actualmente son parte de una colecci�n de varios cientos de componentes
opcionales que dan soporte a replicaci�n, alta disponibilidad, interfaces de
lenguajes, integraci�n de aplicaciones y caracter�sticas de �ltima generaci�n,
la mayor�a de las cuales est�n accesibles desde
<a href="http://www.pgfoundry.org">pgFoundry</a>. Las siguientes herramientas
PostgreSQL han sido liberadas para la versi�n 8.3, o han alcanzado un grado
de madurez durante el desarrollo de 8.3, incluyendo sistemas de replicaci�n
que han sido modificados para utilizar los nuevos acoples de replicaci�n en
el servidor 8.3: </p>
<dl>
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></dt>
<dd>Este acumulador de conexiones multihilo permite que un s�lo servidor PostgreSQL
soporte hasta 100.000 conexiones.</dd>
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a></dt>
<dd>Un sistema para la distribuci�n horizontal de tablas en PostgreSQL.</dd>
<dt><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></dt>
<dd>Una interfaz SNMP conforme al est�ndar, lo cual simplifica la integraci�n con
redes de monitoreo de servidores.</dd>
<dt><a href="http://code.google.com/p/sepgsql/downloads/list">SEpgsql</a></dt>
<dd>Una extensi�n de seguridad basada en el modelo y pol�ticas SELinux, que permite aplicar una pol�tica unificada de SELinux tanto al sistema operativo como al gestor de datos.</dd>
<dt><a href="http://pgfoundry.org/projects/edb-debugger/">PL/pgSQL Debugger</a></dt>
<dd>Una interfaz gr�fica que soporta el depurador interactivo y ejecuci�n paso a paso
de procedimientos PL/pgSQL.</dd>
<dt><a href="http://pgfoundry.org/projects/pgpool/">pgPool-II</a></dt>
<dd>Bas�ndose en el �xito de pgPool, el nuevo agente de consultas replicadas para PostgreSQL agrega particionamiento de datos.</dd>
<dt><a href="http://bucardo.org/">Bucardo</a></dt>
<dd>El primer sistema de replicaci�n asincr�nico multimaestro est� disponible.</dd>
<dt><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></dt>
<dd>Este proyecto cuyo c�digo fue recientemente abierto integra y mejora varias herramientas existentes de manejo de clusters, como pgCluster y pgPool.</dd>
<dt><a href="http://www.slony.info/">Slony-I</a></dt>
<dd>La versi�n 2.0 de Slony-I, nuestro popular sistema de replicaci�n, ahora usa los nuevos acoples de replicaci�n presentes en PostgreSQL 8.3.</dd>
</dl>
