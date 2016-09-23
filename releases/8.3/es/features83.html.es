<!-- BEGIN page_title_block -->
PostgreSQL 8.3 Feature List
<!-- END page_title_block -->

<h1>Lista de Características de PostgreSQL 8.3</h1>

<p>La lista siguiente cubre la mayoría de las características nuevas de la
versión 8.3. Puesto que son muy numerosas, se han agrupado según su propósito
y las descripciones son breves. Para mayor información, revise la documentación
de PostgreSQL y las <i>release notes</i>. Esta lista se mantiene en un formato
aún más abreviado en la 
<a href="/about/featurematrix">feature matrix</a> (sólo en inglés).</p>

<h2>Nota Precautoria sobre la Actualización</h2>

<p>Para cumplir con los altos estándares de integridad de datos y robustez
del proyecto PostgreSQL, en la versión 8.3 hemos limpiado algunas de las
conversiones de tipos (<i>casts</i>). Esta refactorización puede causar problemas
a algunos usuarios que actualicen aplicaciones que fueron escritas sin
mucha preocupación sobre las comparaciones de tipos de datos, especialmente
aquellas escritas para versiones de PostgreSQL de muchos años de antigüedad.
Aquellos usuarios que estén actualizando aplicaciones muy antiguas, o que
sospechen que tienen código poco cuidadoso en aplicaciones o procedimientos
almacenados, deberían hacer pruebas adicionales antes de actualizar sus
sistemas en producción. Vea las 
<a href="/docs/8.3/static/release-8-3.html">release notes</a> para obtener
mayor información.  </p>

<h2>Rendimiento</h2>

<h3>Consistencia en el rendimiento</h3>

<p>Estas características mejoran la habilidad de PostgreSQL para entregar
tiempos de respuesta consistentes sin importar la carga del servidor:</p>

<dl>
<dt>HOT</dt>
<dd>Heap Only Tuple (HOT) reduce significativamente los problemas de mantención
que tienen que ver con datos frecuentemente actualizados, disminuyendo la
necesidad de hacer VACUUM y otorgando mejoras importantes de rendimiento para
algunas aplicaciones.</dd>

<dt>Compromiso (commit) asincrónico</dt>
<dd>Permite que COMMIT retorne el control a la aplicación sin esperar la
escritura física en disco.  Esto permite mejores tiempos de respuesta, al
costo de potencialmente perder una cantidad definida de transacciones en
el evento de una falla del sistema.</dd>
<dt>Checkpoints Extendidos</dt>
<dd>Autoajuste de Checkpoints: retarda y distribuye el checkpoint, reduciendo el
impacto de éste en los tiempos de respuesta.</dd>
<dt>Estrategia «just-in-time» de escritura en segundo plano</dt>
<dd>Autoajuste del «escritor en segundo plano», que estima cuántos bufers
debería intentar limpiar, basándose en estadísticas sobre actividad reciente.
</dd>
</dl>

<h3>Mejoras de velocidad</h3>

<p>Varias características nuevas mejoran significativamente la velocidad de
operaciones específicas, incluyendo:</p>

<dl>
	<dt>Tiempos de recuperación mejorados</dt>
	<dd>La cantidad de E/S desde el «Write Ahead Log» en tiempo de recuperación
	ha sido reducida a la mitad, gracias a mejoras de eficiencia.
	</dd>
	<dt>Búfer circular de «tuplestore»</dt>
	<dd>Incrementa considerablemente la velocidad de «merge joins», debido a que se evita la necesidad de escribir pasos intermedios a disco.</dd>
	<dt>Comparaciones LIKE/ILIKE más rápidas</dt>
	<dd>Mejora la velocidad de coincidencias parciales, especialmente con codificaciones de múltiples bytes.</dd>
	<dt>Ordenamiento Top-N</dt>
	<dd>Búsquedas significativamente más rápidas para resultados con LIMIT.</dd>
	<dt>Asignación de XID «perezosa»</dt>
	<dd>Permite que PostgreSQL evite asignar IDs de transacción a algunas consultas de sólo lectura, resultando en rendimiento notablemente mejor en bases de datos de sólo lectura o mayoritariamente de lectura.  </dd>
	<dt>Costo de Funciones</dt>
	<dd>Permite a los usuarios informar al optimizador sobre el costo de ejecución y la cantidad de filas retornadas por una función, lo cual redunda en mejores planes de ejecución.</dd>
</dl>

<h3>Bases de datos grandes</h3>

<p>Unas pocas mejoras permitirán que los usuarios construyan almacenes de datos aún más grandes con PostgreSQL:</p>
<dl>
<dt>Recorridos sincronizados</dt>
<dd>Permite que los recorridos de tablas grandes se «acarreen» unos a otros, reduciendo
enormemente la E/S total requerida.</dd>
<dt>Protección de Cache L2</dt>
<dd>Optimizaciones del código impiden que los caches de CPU sean continuamente refrescados, lo cual ralentiza consultas concurrentes.</dd>
<dt>Reducción de tamaño de encabezados Varlena («Var-Varlena»)</dt>
<dd>Reduce los tamaños de encabezado para la mayoría de los campos de largo variable. Puede disminuir el tamaño total de las bases de datos hasta un 20%.  </dd>
</dl>

<h3>Rendimiento en Windows</h3>

<p>No hemos olvidado a nuestro usuarios Windows. Puede que 8.3 permita a
Windows convertirse en una plataforma de primera clase para PostgreSQL: </p>
<dl>
<dt>Soporte a MS Visual C++ </dt>
<dd>Permite que el código fuente de PostgreSQL sea compilado con el compilador C++
de Microsoft, en lugar de las herramientas MinGW. Esto mejora el rendimiento y la
estabilidad en plataformas MS.  </dd>
<dt>Rediseño del código de inicialización del backend</dt>
<dd>Reduce drásticamente los requerimientos de memoria en el postmaster,
permitiendo una cantidad mayor de backends en paralelo en Windows.</dd>
</dl>

<h2>Administración</h2>

<p>Aún cuando PostgreSQL ya es superior a otras bases de datos comerciales
con respecto a la facilidad de administración, siempre queda espacio para
seguir mejorando. Por lo tanto, hemos agregado unas cuantas características
a la versión 8.3 que la hacen más fácil de administrar y proporcionan mayor
información al DBA: </p>
<dl>
<dt>Salida de log CSV </dt>
<dd>Registra eventos en un archivo que se puede cargar en una base de datos,
simplificando la creación de herramientas ad-hoc de auditoría y análisis de rendimiento.
</dd>
<dt>Soporte de SSPI y GSSAPI</dt>
<dd>La autentificación Kerberos en PostgreSQL ahora soporta las APIs estándares seguras:
SSPI en Windows y GSSAPI en Linux y Unix, facilitando la integración en redes corporativas
grandes.  </dd>
<dt>Configuración GUC por función</dt>
<dd>Permite a cada función tener configuración GUC propia, definida al momento de
creación de la función.  Es especialmente útil para definir la ruta de búsqueda
de la función al tiempo de creación, lo cual mejora la seguridad.</dd>
<dt>Múltiples esclavos Autovacuum </dt>
<dd>Permite paralelismo configurable del agente de mantención de PostgreSQL,
permitiendo el uso de autovacuum en aplicaciones con miles de tablas.</dd>
<dt>pg_standby</dt>
<dd>Una herramienta administrativa que simplifica mucho la configuración de
servidores «Warm standby».</dd>
<dt>ORDER BY Nulls First/Last</dt>
<dd>Permite que el ordenamiento especifique si los valores NULL deben ir al principio o al final.</dd>
</dl>

<h2>Desarrolladores</h2>

<h3>Desarrollo de aplicaciones</h3>

<p>Varias mejoras ayudan a que PostgreSQL esté al nivel de las mejores bases
de datos comerciales, permitiendo el desarrollo de aplicaciones de bases de datos
complejas y de múltiples capas, incluyendo: </p>
<dl>
<dt>Búsqueda exhaustiva en texto</dt>
<dd>TSearch2, nuestra herramienta de avanzada tecnología para búsqueda en texto,
ha sido incorporada en el código central, y tiene una API más elegante.  Esto hará
que TSearch2 sea más fácil de usar, al tiempo que es más fácil extenderlo con
nuevos lenguajes, diccionarios y sistemas de ponderación.</dd>
<dt>Invalidación de planes</dt>
<dd>Permite que los planes de ejecución almacenados en cache sean eliminados,
tanto por invocaciones de la aplicación como por cambios en las tablas utilizadas.
</dd>
<dt>Cursores actualizables</dt>
<dd>Los cursores ahora soportan WHERE CURRENT OF, flexibilizando el diseño
de aplicaciones basadas en cursores.  </dd>
</dl>

<h3>Nuevos tipos de datos</h3>

<dl>
<dt>Soporte XML</dt>
<dd>El nuevo tipo de dato XML soporta completamente la especificación SQL/XML
de ANSI SQL:2003, incluyendo verificaciones de sintaxis, chequeos de tipos de datos,
publicación SQL/XML y consultas XPath. La versión 8.3 también incluye funciones
adicionales para exportar datos en formato XML.</dd>
<dt>UUID</dt>
<dd>Este nuevo tipo de 128 bits es compatible con los generadores GUID y UUID más comunes,
favoreciendo el diseño de aplicaciones distribuidas.</dd>
<dt>Arreglos de tipos compuestos</dt>
<dd>Ahora se pueden crear arreglos usando tipos compuestos (es decir, aquellos tipos que tienen múltiples columnas, como el tipo de una tabla o un tipo creado manualmente).</dd>
<dt>ENUM</dt>
<dd>PostgreSQL ahora soporta columnas ENUM, que llevan una lista predefinida ordenada de alternativas. Esto facilitará la migración de aplicaciones de MySQL a PostgreSQL.</dd>
</dl>

<h3>Procedimientos almacenados</h3>

<p>Dos características nuevas expanden la utilidad de PL/pgSQL, el lenguaje de procedimientos almacenados más popular de PostgreSQL:</p>
<dl>
	<dt>Soporte a «funciones tablas»</dt>
	<dd>PL/pgSQL ahora soporta una sintaxis simplificada para funciones que retornan conjuntos de registros.</dd>
	<dt>Cursores desplazables (scrollable)</dt>
	<dd>PL/pgSQL ahora soporta además cursores desplazables, permitiendo que los 
	procedimientos PL/pgSQL lleven a cabo manipulaciones complejas de registros.</dd>
</dl>

<h2>Accessorios</h2>

<p>Varias herramientas importantes no son distribuidas con el código central
de PostgreSQL, con el objetivo de mantener dicho código central pequeño y
mantenible. Actualmente son parte de una colección de varios cientos de componentes
opcionales que dan soporte a replicación, alta disponibilidad, interfaces de
lenguajes, integración de aplicaciones y características de última generación,
la mayoría de las cuales están accesibles desde
<a href="http://www.pgfoundry.org">pgFoundry</a>. Las siguientes herramientas
PostgreSQL han sido liberadas para la versión 8.3, o han alcanzado un grado
de madurez durante el desarrollo de 8.3, incluyendo sistemas de replicación
que han sido modificados para utilizar los nuevos acoples de replicación en
el servidor 8.3: </p>
<dl>
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></dt>
<dd>Este acumulador de conexiones multihilo permite que un sólo servidor PostgreSQL
soporte hasta 100.000 conexiones.</dd>
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a></dt>
<dd>Un sistema para la distribución horizontal de tablas en PostgreSQL.</dd>
<dt><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></dt>
<dd>Una interfaz SNMP conforme al estándar, lo cual simplifica la integración con
redes de monitoreo de servidores.</dd>
<dt><a href="http://code.google.com/p/sepgsql/downloads/list">SEpgsql</a></dt>
<dd>Una extensión de seguridad basada en el modelo y políticas SELinux, que permite aplicar una política unificada de SELinux tanto al sistema operativo como al gestor de datos.</dd>
<dt><a href="http://pgfoundry.org/projects/edb-debugger/">PL/pgSQL Debugger</a></dt>
<dd>Una interfaz gráfica que soporta el depurador interactivo y ejecución paso a paso
de procedimientos PL/pgSQL.</dd>
<dt><a href="http://pgfoundry.org/projects/pgpool/">pgPool-II</a></dt>
<dd>Basándose en el éxito de pgPool, el nuevo agente de consultas replicadas para PostgreSQL agrega particionamiento de datos.</dd>
<dt><a href="http://bucardo.org/">Bucardo</a></dt>
<dd>El primer sistema de replicación asincrónico multimaestro está disponible.</dd>
<dt><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></dt>
<dd>Este proyecto cuyo código fue recientemente abierto integra y mejora varias herramientas existentes de manejo de clusters, como pgCluster y pgPool.</dd>
<dt><a href="http://www.slony.info/">Slony-I</a></dt>
<dd>La versión 2.0 de Slony-I, nuestro popular sistema de replicación, ahora usa los nuevos acoples de replicación presentes en PostgreSQL 8.3.</dd>
</dl>
