<!-- BEGIN page_title_block -->
Kit de Prensa de PostgreSQL 8.2
<!-- END page_title_block -->

<h1>Kit de Prensa de PostgreSQL 8.2</h1>

<h2>Contenidos</h2>

<p>
&nbsp; <a href="#original_release">Texto original del comunicado de prensa</a><br />
&nbsp; <a href="#additional_features">Caracter&iacute;sticas adicionales</a><br />
&nbsp; <a href="#download">D&oacute;nde descargar</a><br />
&nbsp;	<a href="#docs">Documentaci&oacute;n</a><br />
&nbsp; <a href="#license">Licencia</a><br />
&nbsp; <a href="#contact">Contactos</a><br />
&nbsp; <a href="#quoted_companies">Informaci&oacute;n sobre compa&ntilde;&iacute;as citadas</a><br />
&nbsp; <a href="#companies">Soporte corporativo</a><br />
&nbsp; <a href="#additional_software">Software adicional</a><br />
&nbsp; <a href="#translations">Versi&oacute;n inglesa de este documento</a><br />
</p>

<a name="original_release"></a><h2>Texto original del comunicado de prensa</h2>
<p><b>Washington, D.C., EUA, 5 de diciembre, 2006:</b>
El Grupo Global de Desarrollo de PostgreSQL anuncia hoy el lanzamiento de la
versi&oacute;n 8.2 del sistema de manejo objeto-relacional de bases de datos
PostgreSQL. Este 14avo lanzamiento p&uacute;blico agrega
caracter&iacute;sticas, madurez y rendimiento requeridos por los usuarios
corporativos, entregando simplicidad de manejo comparable a los sistemas
l&iacute;deres de manejo de bases de datos. Se espera que la versi&oacute;n 8.2
conduzca a a&uacute;n m&aacute;s migraciones hacia PostgreSQL.
</p>

<p>
&#0171;En esta nueva versi&oacute;n se modifica casi cada una de las &oacute;rdenes y
facilidades del sistema&#0187;, dice Bruce Momjian, miembro del grupo central de
desarrollo y arquitecto de bases de datos de EnterpriseDB. &#0171;Agrega sintaxis
extendida y compatible, e interfaces que han sido solicitadas por nuestra
comunidad, haciendo m&aacute;s f&aacute;cil para nuevos DBAs el uso de todas
las caracter&iacute;sticas avanzadas de PostgreSQL.&#0187;
</p>

<p>
&#0171;Unisys est&aacute; complacido en observar mejoras significativas en la
escalabilidad y rendimiento de PostgreSQL en sistemas multiprocesador de gran
escala&#0187;, dice Ali Shadman, vicepresidente y gerente general de Soluciones de
C&oacute;digo Abierto, Sistemas y Tecnolog&iacute;a, Unisys.  &#0171;La nueva
versi&oacute;n 8.2 contin&uacute;a la evoluci&oacute;n de PostgreSQL en un
sistema gestor de bases de datos capaz de adopci&oacute;n empresarial&#0187;.</p>

<p>
Las nuevas herramientas y caracter&iacute;sticas que facilitan la
gesti&oacute;n de bases de datos y el desarrollo incluyen:
</p>

<p>
<b>Mejoras de rendimiento:</b> la versi&oacute;n 8.2 mejora el rendimiento
en alrededor de un 20% en pruebas de sistemas OLTP (procesamiento en
l&iacute;nea de transacciones) de gran escala.  Los usuarios de sistemas
<i>data warehouse</i> pueden notar mejoras a&uacute;n mayores.  Los cambios
incluyen ordenamientos m&aacute;s r&aacute;pidos, tanto en memoria como en disco; mejor
escalabilidad en sistemas multiprocesador; mejor optimizaci&oacute;n de
consultas sobre datos particionados; cargas masivas m&aacute;s r&aacute;pidas, y
<i>outer joins</i> considerablemente acelerados.
</p>

<p>
<b>Bases de datos <i>warm standby</i>:</b> una extensi&oacute;n a nuestra
caracter&iacute;stica de &#0171;recuperaci&oacute;n a un punto en el
tiempo&#0187;, introducida en la versi&oacute;n 8.0, permite a los
administradores crear f&aacute;cilmente una copia para recuperaci&oacute;n
inmediata (<i>failover</i>) de su cluster de bases de datos.
</p>

<p>
<b>Construcci&oacute;n en l&iacute;nea de &iacute;ndices:</b> la
construcci&oacute;n de &iacute;ndices puede ocurrir mientras las aplicaciones
escriben a las tablas de la base de datos, permitiendo el afinamiento de
rendimiento sin afectar la disponibilidad.
</p>

<p>
<b>Caracter&iacute;sticas de SQL 2003:</b> PostgreSQL, bien conocido por
su conformidad a los est&aacute;ndares, ha agregado sintaxis para varias
caracter&iacute;sticas introducidas en la especificaci&oacute;n ANSI SQL:2003,
incluyendo funciones de agregaci&oacute;n estad&iacute;stica, sentencias VALUE
con m&uacute;ltiples registros, UPDATE RETURNING y funciones de
agregaci&oacute;n de m&uacute;ltiples columnas.
</p>

<p>
Las caracter&iacute;sticas avanzadas que se ofrecen con PostgreSQL 8.2
antes que ning&uacute;n otro sistema de gestor de bases de datos incluyen:
</p>

<p>
<b>&Iacute;ndices invertidos generalizados:</b> una forma m&aacute;s escalable
y programable de indexar datos semi-estructurados y texto.
</p>

<p>
<b>DTrace:</b> PostgreSQL ha sido instrumentado para permitir la trazabilidad a
trav&eacute;s de un marco gen&eacute;rico de monitoreo, usando DTrace en Solaris y otras
herramientas avanzadas de traza.
</p>

<p>
&#0171;Con instancias de data warehouse con tablas de miles de millones de
registros y varios terabytes de datos, las capacidades de construcci&oacute;n
en l&iacute;nea de &iacute;ndices y hot-standby son cruciales&#0187;, dice Theo
Schlossnagle, Director en OmniTI Computer Consulting.  &#0171;Estamos entusiasmados
con el hecho de que PostgreSQL sea un ciudadano de primera clase de DTrace.
Esto permite que nuestros permanentes esfuerzos de an&aacute;lisis de sistemas
incorporen datos espec&iacute;ficos de las bases de datos, llevando a resultados
mucho m&aacute;s certeros&#0187;.
</p>

<p>
Hay decenas de caracter&iacute;sticas y mejoras adicionales en 8.2 que
har&aacute;n a los DBAs m&aacute;s productivos.  Vea el kit de prensa
para mayores detalles.
<!-- URL del kit de prensa --> Descargue PostgreSQL
desde <a href="/download">nuestra p&aacute;gina de descargas.</a>
</p>

<p>
<b>Acerca de PostgreSQL:</b> PostgreSQL es el trabajo colectivo de cientos
de desarrolladores, bas&aacute;ndose en veinti&uacute;n a&ntilde;os de
desarrollo que empezaron en la Universidad de California en Berkeley. Con su
soporte de larga data de un conjunto de caracter&iacute;sticas de nivel
empresarial, el cual incluye transacciones, funciones, triggers y subconsultas,
PostgreSQL est&aacute; siendo usado por muchas de las m&aacute;s exigentes
empresas y agencias de gobierno.  PostgreSQL se distribuye bajo licencia BSD,
lo cual permite el uso y distribuci&oacute;n sin costo, tanto para aplicaciones
comerciales como no comerciales.
</p>

<a name="additional_features"></a>
<h2>Caracter&iacute;sticas adicionales en este lanzamiento</h2>
Adem&aacute;s de las caracter&iacute;sticas listadas en
el lanzamiento de prensa, hay m&aacute;s de 200 nuevas prestaciones y mejoras
contribuidas por docenas de desarrolladores para versi&oacute;n 8.2.  Entre
ellas se cuentan:

<ul>
	<li>Bloqueos consultivos (&#0171;advisory locks&#0187;): permiten el
	control de objetos de bases de datos a nivel de aplicaci&oacute;n
	usando el eficiente motor de bloqueos de PostgreSQL.</li>

	<li>pg_dump selectivo: permite extraer volcados de relaciones
	transaccionalmente consistentes, seleccionando la inclusi&oacute;n y
	exclusi&oacute;n usando expresiones regulares.</li>

	<li>Sentencias preparadas: tiene nuevas interfaces administrativas y mejoras de
	rendimiento en sentencias preparadas.</li>

	<li>ISN/ISBN: este m&oacute;dulo contiene tipos de datos para soportar
	descriptores de producto ISN para inventarios y sistemas de venta al por menor.
	Ha sido aumentado para soportar los &uacute;ltimos est&aacute;ndares
	internacionales.</li>

	<li>Criptograf&iacute;a: el m&oacute;dulo pgcrypto, que implementa
	criptograf&iacute;a al interior de la base de datos, fue actualizado
	con los &uacute;ltimos algoritmos.</li>

	<li>Mejoras al SQL: nueva sintaxis, incluyendo UPDATE RETURNING, DROP IF
	EXISTS, ON COMMIT y nuevos comandos de propiedad (&#0171;ownership&#0187;) y permisos, para
	hacer m&aacute;s f&aacute;cil el manejo de objetos de la base de datos en la
	l&iacute;nea de &oacute;rdenes.</li>

	<li>Extracci&oacute;n de registros por lotes en psql: permite devolver filas a la
	consola en lotes en lugar de todas a la vez.</li>

	<li>Reconstrucci&oacute;n de ECPG: la interfaz embebida C de PostgreSQL ha
	sido extensivamente reescrita y se agregaron nuevas interfaces.</li>

	<li>Mejoras importantes en TSearch2: soporte de UTF-8, tesauros, soporte de
	reescritura de consultas e indexaci&oacute;n GIN.</li>

	<li>PL/Python: ahora soporta par&aacute;metros con nombre y funciones que
	devuelven conjuntos.</li>
</ul>

<p> La arquitectura extensible de PostgreSQL ha conducido a una gran comunidad
de extensiones como lenguajes procedurales adicionales, interfaces a sistemas
externos, nuevos tipos de &iacute;ndices, replicaci&oacute;n y herramientas de alta
disponibilidad que est&aacute;n alojadas en
<a href="http://www.pgfoundry.org">el sitio oficial de proyectos de la comunidad PostgreSQL</a>.
Entre los proyectos comunitarios que han tenido avances significativos en el ciclo
del lanzamiento de 8.2 se cuentan:
</p>

<ul>
	<li>Full Disjunctions: gracias al programa &#0171;Summer of Code&#0187;
	de Google, PostgreSQL es el primer sistema de base de datos que tiene
	una implementaci&oacute;n de este nuevo y radical algoritmo de
	join.</li>

	<li>PGPool II: PGPool, bajo el auspicio del gobierno japon&eacute;s, ha
	agregado nuevas capacidades de balanceo de carga y particionamiento.</li>

	<li>PL/Java: uno de nuestros dos lenguajes procedurales Java ha alcanzado
	estado de producci&oacute;n completo, permitiendo la utilizaci&oacute;n
	completa de Java dentro de la base de datos.</li> </ul>

<p> Puede leer acerca de docenas m&aacute;s de mejoras en las
<a href="/docs/current/static/release.html">Notas de Lanzamiento (en ingl&eacute;s).</a>
</p>

<a name="download"></a><h2>D&oacute;nde descargar</h2>

<ul>
	<li><a href="/ftp/latest/">Lista de mirrors FTP</a></li>
	<li><a href="/download/bittorrent">Bittorrent</a></li>
	<li><a href="/ftp/binary/v8.2.0/win32/">Instalador de Windows</a>
	(tambi&eacute;n disponible v&iacute;a Bittorrent)</li>
	<li><a href="/ftp/binary/v8.2.0/">Otros binarios, incluyendo Linux, Mac OSX y Solaris</a></li>
	<li><a href="/projects/pgsql/">SourceForge</a> (incluyendo instalador Windows)</li>
</ul>

<a name="docs"></a><h2>Documentaci&oacute;n</h2>

<ul>
	<li><a href="/docs">Documentaci&oacute;n oficial </a></li>
	<li><a href="/docs/techdocs">Techdocs</a></li>
	<li><a href="/about/press/faq">Preguntas frecuentes</a></li>
</ul>

<a name="license"></a><h2>Licencia</h2>
<p> PostgreSQL usa la <a href="/about/licence">licencia BSD</a>,
que s&oacute;lo requiere que el c&oacute;digo fuente licenciado mantenga su
informaci&oacute;n de derechos y licenciamiento.  Esta licencia
<a href="http://www.opensource.org/licenses/bsd-license.php">certificada por la OSI</a>
es ampliamente apreciada por ser flexible y amigable a los negocios, dado que
no restringe el uso de PostgreSQL con aplicaciones propietarias y comerciales.
Junto con el soporte provisto por m&uacute;ltiples compa&ntilde;&iacute;as y
propiedad p&uacute;blica del c&oacute;digo, la licencia BSD hace PostgreSQL muy
popular con proveedores que desean incluir la base de datos en sus productos sin
riesgo de cobros imprevistos, trabas de venta o cambios en los t&eacute;rminos de
licenciamiento.
</p>

<a name="contact"></a><h2>Contactos</h2>

<p><a href="http://www.postgresql.cl">PostgreSQL en espa&ntilde;ol</a></p>
<p><a href="http://www.postgresql.org">PostgreSQL home page (English)</a></p>

<p>Preguntas:</p>

<p>
Christian Kuroki<br />
Buenos Aires, Argentina<br />
+54-11-6560-5785<br />
<a href="mailto:ar@postgresql.org">ar@postgresql.org</a><br />
<a href="http://www.dbas.com.ar/">http://www.dbas.com.ar/</a>
</p>

<p>
Diogo de Oliveira Biazus <br />
Porto Alegre, Brasil<br />
+55 51 91410130<br />
<a href="mailto:br@postgresql.org">br@postgresql.org</a> <br />
<a href="http://www.postgresql.org.br/">http://www.postgresql.org.br/</a>
</p>

<p>
&Aacute;lvaro Herrera<br />
Valdivia, Chile<br />
+56-63-210164<br />
<a href="mailto:alvherre@postgresql.org">alvherre@postgresql.org</a></p>

<p> C&eacute;sar Villanueva<br />
Venezuela<br />
+58-416-6153429<br />
<a href="mailto:ve@postgresql.org">ve@postgresql.org</a></p>

<p>
Para contactos en otras regiones por favor, vea
<a href="/about/press/contact">nuestra lista internacional de contactos.</a>
</p>

<a name="quoted_companies"></a>
<h2>Texto completo de comentarios y compa&ntilde;&iacute;as citadas</h2>

<p>
&#0171;Unisys est&aacute; complacido en observar mejoras significativas en la
escalabilidad y rendimiento de PostgreSQL en sistemas multiprocesador de gran
escala&#0187;, dice Ali Shadman, vicepresidente y gerente general de Soluciones de
C&oacute;digo Abierto, Sistemas y Tecnolog&iacute;a, Unisys.  &#0171;La nueva
versi&oacute;n 8.2 contin&uacute;a la evoluci&oacute;n de
PostgreSQL en un sistema gestor de bases de datos capaz de adopci&oacute;n
empresarial.  PostgreSQL es un componente clave de Unisys Open and Secure
Integrated Solution (OASIS) para el procesamiento de transacciones basado en
Java EE usando selectas tecnolog&iacute;as de c&oacute;digo abierto.  Unisys
tiene la intenci&oacute;n de continuar asistiendo activamente a la comunidad en llevar
a PostgreSQL m&aacute;s all&aacute; en el &aacute;mbito empresarial.&#0187;
</p>

<p>
<b>Acerca de Unisys:</b> <a href="http://www.unisys.com/">Unisys</a> es una
compa&ntilde;&iacute;a global de servicios de tecnolog&iacute;a y soluciones.
Nuestros consultores aplican la experiencia de Unisys en consultor&iacute;a,
integraci&oacute;n  de sistemas, outsourcing, infraestructura,  y
tecnolog&iacute;a de servidores para ayudar a nuestros clientes a alcanzar
operaciones de negocio seguras. Construimos organizaciones mas seguras
creando visibilidad las operaciones de negocios de los clientes.
Incorporando Unisys 3D Visible Enterprise, hacemos visible el impacto de sus
decisiones m&aacute;s all&aacute; de sus inversiones, oportunidades y riesgos.
Contacte a <a href="mailto:brian.daly@unisys.com">Brian Daly</a> para
preguntas sobre este comunicado: 215-986-2214 (solo ingl&eacute;s)
</p>

<p>&#0171;Nuestra compa&ntilde;&iacute;a maneja muchos sistemas de misi&oacute;n cr&iacute;tica en
PostgreSQL sobre Solaris 10.  Con instancias de data warehouse con tablas de
miles de millones de registros y varios terabytes de datos, las capacidades de
construcci&oacute;n en l&iacute;nea de &iacute;ndices y hot-standby son
cruciales&#0187;, dice Theo Schlossnagle, Director en OmniTI Computer Consulting.
&#0171;Estamos entusiasmados con el hecho de que PostgreSQL sea un ciudadano de
primera clase de DTrace.  Esto permite que nuestros permanentes esfuerzos de
an&aacute;lisis de sistemas incorporen datos espec&iacute;ficos de las bases de
datos, llevando a resultados mucho m&aacute;s certeros&#0187;.
</p>

<p><b>Acerca de OmniTI:</b> <a href="http://omniti.com/home">OmniTI</a> es una
compa&ntilde;&iacute;a de consultor&iacute;a en tecnolog&iacute;as de
Internet localizada in Columbia, Maryland. Con una lista de clientes que
parece ser un &#0171;qui&eacute;n es qui&eacute;n&#0187; de destinos Internet, OmniTI ha demostrado ser
la compa&ntilde;&iacute;a a la cual dirigirse para resolver los problemas m&aacute;s
desafiantes de escalabilidad, rendimiento y seguridad que enfrentan las
aplicaciones web de gran escala de hoy.  Contactos: 877-887-3031 o
<a href="mailto:info@omniti.com">info@omniti.com</a> (s&oacute;lo ingl&eacute;s).
</p>

<a name="companies"></a><h2>Soporte corporativo</h2>

<p>
PostgreSQL cuenta con el soporte de numerosas compa&ntilde;&iacute;as, que
auspician desarrolladores, proveen recursos de alojamiento, y entregan soporte
financiero. Los auspiciadores m&aacute;s destacados est&aacute;n listados en nuestra
<a href="/about/sponsors">p&aacute;gina de auspiciadores.</a>
</p>

<p>
Existe adem&aacute;s una extensa comunidad de
<a href="/support/professional_support">compa&ntilde;&iacute;as que ofrecen Soporte a PostgreSQL</a>,
desde consultores individuales a compa&ntilde;&iacute;as multinacionales.</p>

<p>Las <a href="/about/donate">donaciones</a> son gratamente recibidas.</p>

<a name="additional_software"></a><h2>Software adicional</h2>
<p>
El proyecto principal de PostgreSQL es extendido por m&aacute;s de cien subproyectos
activos que proveen soluciones de alta calidad para replicaci&oacute;n,
migraci&oacute;n, compatibilidad, interoperabilidad, dise&ntilde;o y
herramientas de administraci&oacute;n gr&aacute;fica.
</p>

<h3>Proyectos relacionados</h3>

<ul>
	<li><a href="http://projects.postgresql.org">pgFoundry</a></li>
	<li><a href="http://gborg.postgresql.org">GBorg</a></li>
</ul>

<h3>Controladores</h3>

<ul>
	<li><a href="http://jdbc.postgresql.org/">JDBC</a></li>
	<li><a href="http://pgfoundry.org/projects/psqlodbc/">ODBC</a></li>
	<li><a href="http://pgfoundry.org/projects/npgsql">.Net</a></li>
	<li><a href="http://search.cpan.org/~dbdpg/DBD-Pg/Pg.pm">Perl DBI</a></li>
	<li><a href="http://initd.org/projects/psycopg1">Python</a></li>
</ul>

<h3>Paquetes de caracter&iacute;sticas avanzadas</h3>

<ul>
	<li><a href="http://postgis.refractions.net/">Sistema de informaci&oacute;n geogr&aacute;fica (PostGIS)</a></li>
	<li><a href="http://openfts.sourceforge.net/">B&uacute;squeda en textos (OpenFTS)</a></li>
	<li><a href="http://www.bizgres.org">Business intelligence/Data warehousing (Bizgres)</a></li>
</ul>

<h3>Interfaces gr&aacute;ficas de usuario</h3>

<ul>
	<li><a href="http://www.pgadmin.org/">pgAdmin3</a></li>
	<li><a href="http://phppgadmin.sourceforge.net/">phpPgAdmin</a></li>
	<li><a href="/docs/techdocs.54">Listado de otras GUIs</a></li>
</ul>

<h3>Replicaci&oacute;n</h3>

<ul>
	<li><a href="http://www.slony.info/">Slony-I</a></li>
	<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
	<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
</ul>

<a name="translations"></a><h2>Versi&oacute;n inglesa de este documento</h2>

<p><a href="/about/press/presskit82.html.en">8.2 PressKit</a></p>


<!-- vim:filetype=html
-->
