<!-- BEGIN page_title_block -->
Kit de Prensa de PostgreSQL 8.1
<!-- END page_title_block -->

<h1>Kit de Prensa de PostgreSQL 8.1</h1>

<h2>Contenidos</h2>

<p>
 &nbsp; <a href="#original_release">Texto Original del Comunicado de Prensa</a><br />
 &nbsp; <a href="#additional_features">Caracter&iacute;sticas Adicionales</a><br />
 &nbsp; <a href="#quoted_companies">Informaci&oacute;n sobre Compa&ntilde;&iacute;as Citadas</a><br />
 &nbsp; <a href="#download">D&oacute;nde Descargar</a><br />
 &nbsp;	<a href="#docs">Documentaci&oacute;n</a><br />
 &nbsp; <a href="#license">Licencia</a><br />
 &nbsp; <a href="#contact">Contactos</a><br />
 &nbsp; <a href="#companies">Soporte Corporativo</a><br />
 &nbsp; <a href="#additional_software">Software Adicional</a><br />
</p>

<h2><a name="original_release">Texto Original del Comunicado de Prensa</a></h2>

<p>8 de noviembre, 2005, Frankfurt, Alemania (OpenDBCon): El Grupo de
Desarrollo Global de PostgreSQL se complace en anunciar la liberaci&oacute;n de
PostgreSQL 8.1, extendiendo el liderazgo de PostgreSQL como el sistema de
manejo de bases de datos de c&oacute;digo abierto m&aacute;s avanzado.  Dise&ntilde;ada,
construida y probada por una numerosa y pr&oacute;spera comunidad, y respaldado
por un creciente n&uacute;mero de auspiciadores corporativos y compa&ntilde;&iacute;as de soporte,
la versi&oacute;n 8.1 ampliar&aacute; los alcances de desarrollo de aplicaciones en
PostgreSQL.  La nueva versi&oacute;n incluye mejoras de rendimiento y caracter&iacute;sticas
de SQL avanzado, que soportar&aacute;n almacenes de datos m&aacute;s grandes, procesamiento
transaccional de mayor volumen, y software empresarial distribuido m&aacute;s
complejo.</p>

<p>Estas prestaciones continuar&aacute;n la tendencia de adopci&oacute;n establecida por
la versi&oacute;n anterior.  La versi&oacute;n 8.0 fue descargada m&aacute;s de un mill&oacute;n de veces
durante sus primeros siete meses, notablemente m&aacute;s que las 300.000 descargas
registradas en un per&iacute;odo similar para la versi&oacute;n anterior.</p>

<p>&#0171;El proyecto claramente se est&aacute; acelerando en las mentes de los usuarios de
bases de datos&#0187;, dice Lance Obermeyer, Director de Productos en Pervasive
Software, uno de los auspiciadores empresariales de PostgreSQL.  &#0171;Dado el
creciente inter&eacute;s en software infraestructural de c&oacute;digo fuente abierto,
podemos esperar que PostgreSQL adquiera a&uacute;n m&aacute;s &iacute;mpetu.&#0187;</p>

<h3>Nuevas Caracter&iacute;sticas Avanzadas</h3>

<p>Roles: PostgreSQL ahora soporta roles de bases de datos, los que simplifican
el manejo de grandes cantidades de usuarios con esquemas complejos de
privilegios superpuestos.</p>

<p>Parametros de entrada/salida (IN/OUT): Las funciones ahora soportan par&aacute;metros
de entrada (IN), salida (OUT) y entrada/salida (INOUT), lo cual mejora
sustancialmente el soporte de l&oacute;gica compleja y aplicaciones J2EE y .NET.</p>

<p>Compromiso en Dos Fases (Two-Phase Commit, 2PC): esta caracter&iacute;stica,
muy necesaria para aplicaciones WAN y centros de c&oacute;mputo heterog&eacute;neos, permite
transacciones conformes con ACID a trav&eacute;s de servidores distribuidos.</p>

<h3>Mejoras de Rendimiento</h3>

<p>Rendimiento Multiprocesador (SMP) mejorado: el gestor de memoria ha sido
mejorado para 8.1, de manera que escala casi lineamente con el n&uacute;mero de
procesadores.  Esto conlleva mejoras significativas de rendimiento en
sistemas de 8 v&iacute;as, 16 v&iacute;as, dual-core y multi-core.</p>

<p>Recorridos de Mapas de Bits: los &iacute;ndices son convertidos a mapas de bits en
memoria cuando es apropiado, otorgando hasta veinte veces m&aacute;s rendimiento en
consultas complejas para tablas muy grandes.  Esto tambi&eacute;n ayuda a simplificar
la administraci&oacute;n de bases de datos reduciendo significativamente la necesidad
de &iacute;ndices multicolumna.</p>
<p>Particionamiento de Tablas: El optimizador de consultas es capaz de evitar
recorrer secciones completas de tablas grandes, a trav&eacute;s de una t&eacute;cnica
conocida como Exclusi&oacute;n por Restricciones.  Similar a las caracter&iacute;sticas de
Particionado de Tablas de otros sistemas gestores de datos, esta caracter&iacute;stica
mejora tanto el rendimiento como la gesti&oacute;n de datos para tablas de varios
gigabytes.</p>
<p>Bloqueos Compartidos de Registros: El modelo de bloqueos &#0171;mejor que a nivel
de registro&#0187; de PostgreSQL ahora soporta niveles de concurrencia a&uacute;n
mayores, a trav&eacute;s de la adici&oacute;n de candados compartidos a nivel de registro
para llaves for&aacute;neas.  Estos candados compartidos mejorar&aacute;n el rendimiento
de inserci&oacute;n y actualizaci&oacute;n para muchas aplicaciones OLTP de gran
concurrencia.</p>
<p>&#0171;PostgreSQL 8.1 ofrece una mejora de rendimiento enorme, a todos los
niveles, en nuestros servidores Opteron de doble procesador&#0187;, seg&uacute;n Merlin
Moncure, Administrador de Bases de Datos para Reliable Computer Solutions.
&#0171;M&aacute;s espec&iacute;ficamente, estamos viendo alrededor de un 20% de reducci&oacute;n en los
tiempos de ejecuci&oacute;n de consultas simples, y una reducci&oacute;n adicional de un
20% en el nivel de carga de CPU, para una reducci&oacute;n total de carga del
servidor de entre 20 y 40%&#0187;.</p>
<p>Hay m&aacute;s de 120 otras mejoras, algunas de las cuales se encuentran detalladas
en nuestro kit de prensa.</p>

<h3>Acerca de PostgreSQL</h3>
<p>PostgreSQL es el trabajo colectivo de cientos de desarrolladores, bas&aacute;ndose
en veinte a&ntilde;os de desarrollo que empezaron en la Universidad de California
en Berkeley.  Con su soporte de larga data de un conjunto de caracter&iacute;sticas
de nivel empresarial, el cual incluye transacciones, funciones, triggers y
subconsultas, PostgreSQL est&aacute; siendo usado por muchas de las m&aacute;s exigentes
empresas y agencias de gobierno.  PostgreSQL se distribuye bajo licencia
BSD, la cual permite el uso y distribuci&oacute;n sin costo tanto para aplicaciones
comerciales como no comerciales.</p>

<h2><a name="additional_features">Caracter&iacute;sticas Adicionales en esta Versi&oacute;n</a></h2>

<p>
Adem&aacute;s de las caracter&iacute;sticas principales listadas en el comunicado de prensa,
hay m&aacute;s de 120 caracter&iacute;sticas nuevas y mejoras contribuidas por m&aacute;s de 200
desarrolladores para la versi&oacute;n 8.1.  Destacan entre ellas:</p>

<ul>
<li><b>GiST:</b> El Árbol de B&uacute;squeda Generalizado (Generalized Search Tree,
GiST) de PostgreSQL, mecanismo extensible de indexamiento, ha sido mejorado
de manera que soporta concurrencia de alta velocidad, recuperabilidad y
rendimiento de actualizaciones, que antes estaba disponible s&oacute;lo para los
&iacute;ndices B-Tree.  GiST es el mecanismo central para el soporte de indexamiento
total de texto (TSearch2), geoespacial (GIS) y de estructuras de &aacute;rbol.  Con
esta mejora, los tipos de datos complejos tendr&aacute;n buen rendimiento a&uacute;n en
grandes aplicaciones de alta disponibilidad.</li>

<li><b>Refactorizaci&oacute;n de COPY:</b> COPY ha sido refactorizado, lo cual
ha acelerado m&aacute;s de un 30% las operaciones de carga masiva de datos.
Junto con las mejoras de carga CSV, esto permite cargas de bases de datos
grandes a&uacute;n m&aacute;s r&aacute;pidamente.</li>
<li><b>Memoria Compartida de 64 bits:</b> el gestor de b&uacute;fers ha sido
mejorado, y ahora soporta la utilizaci&oacute;n de hasta 2 terabytes de RAM en
plataformas de 64 bits, preparando a PostgreSQL para los servidores de
datos del futuro.
</li>
<li><b>Autovacuum Integrado:</b> el sistema automatizado de mantenci&oacute;n
de PostgreSQL ha sido mejorado e integrado en el proceso servidor,
haciendo los servidores PostgreSQL m&aacute;s simples de configurar y administrar.
</li>
<li><b>Agregaci&oacute;n m&aacute;s r&aacute;pida:</b> Las funciones de agregaci&oacute;n han sido
mejoradas, para hacer las consultas de reportes a&uacute;n m&aacute;s r&aacute;pidas.  Los
desarrolladores reescribieron el manejo de memoria para las funciones de
agregaci&oacute;n, y adem&aacute;s agregaron optimizaciones de &iacute;ndice para MIN() y
MAX().
</li>
<li><b>Funciones de Administraci&oacute;n:</b> se agregaron nuevas funciones
para obtener informaci&oacute;n del servidor y para realizar tareas de administraci&oacute;n
con mayor facilidad desde la l&iacute;nea de mandatos PSQL.
</li>
<li><b>Funciones de Compatibilidad:</b> se han agregado las funciones
lastval(), greatest() y least(), para facilitar el porte de aplicaciones
desde MySQL y Oracle.  </li>
</ul>

<p>
Puede leer acerca de las docenas de otras mejoras en 8.1 en las
<a href="/docs/current/static/release.html">Release Notes.</a>
</p>

<h2><a name="quoted_companies">Compa&ntilde;&iacute;as Citadas</a></h2>

<p>
<b>Pervasive Software</b> (NASDQ: PVSW) provee software de infraestructura
de datos que permite a las compa&ntilde;&iacute;as descubrir el valor de sus inversiones
de datos.  Durante m&aacute;s de dos d&eacute;cadas, Pervasive ha estado entregando
una propuesta de reforzado valor y la mejor combinaci&oacute;n de rendimiento,
confiabilidad, funcionalidad y conectividad.  Decenas de miles de clientes
en pr&aacute;cticamente todas las industrias, en m&aacute;s de 150 pa&iacute;ses alrededor del
mundo, conf&iacute;an en Pervasive para el manejo, integraci&oacute;n, an&aacute;lisis y seguridad
de sus datos cr&iacute;ticos. Para mayor informaci&oacute;n, <a href="http://www.pervasive.com/company">visite nuestro sitio web</a>.
</p>

<p>
<b>Reliable Computer Solutions</b> provee software ERP y servicios de
consultor&iacute;a para intereses regionales de fabricaci&oacute;n.  Nos especializamos
en soluciones completas de TI para las industrias de Veh&iacute;culos Recreacionales
y Casas Prefabricadas.  Nuestro producto estrella, ESP, maneja m&aacute;s de mil
millones de d&oacute;lares de fabricaci&oacute;n en los Estados Unidos.  Para mayor
informaci&oacute;n, contacte a Merlin Moncure (s&oacute;lo en ingl&eacute;s):
merlin.moncure@rcsonline.com, tel&eacute;fono (01) 269-483-1234 ext. 304.

</p>

<h2><a name="download">D&oacute;nde Descargar</a></h2>

<ul>
<li><a href="http://www.postgresql.org/ftp/latest/">Lista de Mirrors FTP</a></li>
<li><a href="http://www.postgresql.org/download/bittorrent">Bittorrent</a></li>
<li><a href="http://www.postgresql.org/ftp/binary/v8.1.0/win32/">Instalador Windows
</a> (tambi&eacute;n disponible v&iacute;a Bittorrent)</li>
<li><a href="http://www.postgresql.org/ftp/binary/v8.1.0/">Otros Binarios, incluyendo Linux, Mac OS X y Solaris </a></li>
<li><a href="http://sourceforge.net/projects/pgsql/">SourceForge</a> (incluyendo el Instalador de Windows) </li>
</ul>

<h2><a name="docs">Documentaci&oacute;n</a></h2>

<ul>
<li><a href="/docs/current/static/">Documentaci&oacute;n Oficial </a></li>
<li><a href="http://techdocs.postgresql.org">TechDocs</a></li>
<li><a href="http://www.varlena.com/GeneralBits">General
Bits</a></li>
</ul>

<h2><a name="license">Licencia</a></h2>
<p>
PostgreSQL usa la <a href="/about/licence">licencia BSD</a>,
la cual s&oacute;lo requiere que el c&oacute;digo fuente licenciado mantenga
su informaci&oacute;n de derechos de copia y licenciamiento.  Esta
<a href="http://www.opensource.org/licenses/bsd-license.php">licencia
certificada por OSI </a> es apreciada ampliamente por su flexibilidad, puesto
que no impone restricciones adicionales al uso de PostgreSQL con
aplicaciones comerciales y propietarias.  Junto con el soporte multi-empresa y
la propiedad p&uacute;blica del c&oacute;digo fuente, la licencia BSD hace de PostgreSQL una
opci&oacute;n muy popular con proveedores que desean incluir una base de datos en sus
propios productos, sin temor de pagos adicionales, dependencia de un solo
proveedor, o cambios en los t&eacute;rminos de licenciamiento.
</p>

<h2><a name="contact" >Contactos</a></h2>

<p><a href="http://www.postgresql.org">Sitio principal, en ingl&eacute;s</a></p>

<p>Consultas:</p>

<p>Christian Kuroki<br />
PostgreSQL Regional Contact, Argentina<br />
+54-11-5004-3227<br />
<a href="mailto:ar@postgresql.org">ar@postgresql.org</a><br />
<a href="http://www.dbas.com.ar/">http://www.dbas.com.ar/</a>
</p>

<p>
Diogo de Oliveira Biazus <br />
PostgreSQL Regional Contact, Brasil<br />
+51-91410130 <br />
<a href="mailto:br@postgresql.org">br@postgresql.org</a> <br />
<a href="http://www.postgresql.org.br/">http://www.postgresql.org.br/</a>
</p>

<p>
Álvaro Herrera<br />
PostgreSQL Regional Contact, Chile<br />
+56-63-210164<br />
<a href="mailto:alvherre@postgresql.org">alvherre@postgresql.org</a></p>

<p> C&eacute;sar Villanueva<br />
PostgreSQL Regional Contact, Venezuela<br />
+58-416-6153429<br />
<a href="mailto:ve@postgresql.org">ve@postgresql.org</a></p>

<p>Para contactos en otras regiones, vea
<a
href="/about/press/contact">nuestra lista internacional de contactos.</a></p>

<h2><a name="companies">Soporte Corporativo</a></h2>

<p>PostgreSQL disfruta del soporte de numerosas compa&ntilde;&iacute;as, las cuales
auspician desarrolladores, proveen recursos de hosting, y nos dan
soporte financiero.  Los auspiciadores de m&aacute;s larga data aparecen
listados en nuestra <a href="/about/sponsors">p&aacute;gina de auspiciadores</a>.</p>

<p>
Adem&aacute;s hay una numerosa comunidad de
<a href="/support/professional_support">compa&ntilde;&iacute;as que ofrecen soporte de PostgreSQL</a>,
desde individuos hasta compa&ntilde;&iacute;as multinacionales. </p>

<h2><a name="additional_software" >Enlaces</a></h2>
<p>
El proyecto PostgreSQL central es apoyado por m&aacute;s de 100 subproyectos activos
que provee soluciones de alta calidad para replicaci&oacute;n, migraci&oacute;n,
compatibilidad, interoperabilidad, dise&ntilde;o y herramientas de administraci&oacute;n
gr&aacute;fica.
</p>

<h3>Proyectos Relacionados</h3>

<ul>
<li><a href="http://projects.postgresql.org">pgFoundry</a></li>
<li><a href="http://gborg.postgresql.org">GBorg</a></li>
</ul>

<h3>Controladores</h3>

<ul>
<li><a href="http://jdbc.postgresql.org/">JDBC</a></li>
<li><a href="http://pgfoundry.org/projects/psqlodbc/">ODBC</a></li>
<li><a href="http://gborg.postgresql.org/project/npgsql/projdisplay.php">.Net</a></li>
<li><a href="http://search.cpan.org/~rudy/DBD-Pg-1.32/Pg.pm">Perl DBI</a></li>
<li><a href="http://initd.org/projects/psycopg1">Python</a></li>
</ul>

<h3>Paquetes con Caracter&iacute;sticas Avanzadas</h3>

<ul>
<li><a href="http://postgis.refractions.net/">Servicio de Informaci&oacute;n Geogr&aacute;fica(PostGIS)</a></li>
<li><a href="http://openfts.sourceforge.net/">B&uacute;squeda en Texto (OpenFTS)</a></li>
<li><a href="http://www.bizgres.org">Business Intelligence/Data Warehousing (Bizgres)</a></li>
</ul>

<h3>Interfaces Gr&aacute;ficas de Usuario</h3>

<ul>
<li><a href="http://www.pgadmin.org/">pgAdmin III</a></li>
<li><a href="http://phppgadmin.sourceforge.net/">phpPgAdmin</a></li>
<li><a href="http://www.pgaccess.org/">pgAccess</a></li>
<li><a href="http://techdocs.postgresql.org/guides/GUITools">Listado de otras
GUIs</a></li>
</ul>

<h3>Replicaci&oacute;n</h3>

<ul>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
</ul>
