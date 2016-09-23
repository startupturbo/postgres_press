<!-- BEGIN page_title_block -->
PostgreSQL 8.4 Press Kit
<!-- END page_title_block -->

<h1>PostgreSQL 8.4 Press Kit</h1>

<h2>Contenidos</h2>

<p>
 &nbsp; <a href="#original_release">Texto Original del Comunicado de Prensa</a><br />
 &nbsp; <a href="#additional_features">Lista de Caracter&iacute;sticas</a><br />
 &nbsp; <a href="#download">Donde Descargar</a><br />
 &nbsp; <a href="#docs">Documentaci&oacute;n</a><br />
 &nbsp; <a href="#license">Licencia</a><br />
 &nbsp; <a href="#contact">Contactos</a><br />
 &nbsp; <a href="#quoted_companies">Texto Completo de las Citas e Informaci&oacute;n de Compa&ntilde;&iacute;as</a><br />
 &nbsp; <a href="#companies">Soporte Corporativo</a><br />
</p>

<a name="original_release"></a><h2>Comunicado de Prensa Original</h2>

<p><b>1 de julio, 2009</b> El Grupo Global de Desarrollo de PostgreSQL ha liberado la versi&oacute;n 8.4, continuando con el r&aacute;pido desarrollo de la base de datos de c&oacute;digo abierto m&aacute;s avanzada del mundo. Esta versi&oacute;n contiene una gran cantidad de mejoras para que la administraci&oacute;n, consulta y programaci&oacute;n en PostgreSQL sea m&aacute;s f&aacute;cil que nunca. Con las 293 funcionalidades nuevas o mejoradas en la versi&oacute;n 8.4, hay a&uacute;n m&aacute;s motivos para escoger PostgreSQL para sus futuros proyectos.</p>

<p>
La mayor&iacute;a de los cambios en PostgreSQL 8.4 son herramientas y &oacute;rdenes de administraci&oacute;n y monitoreo, nuevas o mejoradas.  Cada usuario tiene su funcionalidad favorita que hace su trabajo cotidiano con PostgreSQL m&aacute;s f&aacute;cil y productivo.</p>

<p><i>“Hemos usado PostgreSQL durante siete a&ntilde;os, y estamos entusiasmados con varias funcionalidades de 8.4, especialmente los privilegios por columna, configuraci&oacute;n regional configurable por base de datos, b&uacute;squedas parciales en &iacute;ndices GIN y excepciones definidas por el usuario”</i>, dice Jeffrey Webster, CTO de ZooLoo.com. <i>“PostgreSQL nos ha permitido crecer sin sacrificar la integridad de nuestros datos”</i>.</p>

<p>Entre las mejoras m&aacute;s populares est&aacute;n:</p>
<ul>
<li><b>Restauraci&oacute;n de base de datos en procesos paralelos</b>, que acelera la recuperaci&oacute;n de un respaldo hasta 8 veces.</li>
<li><b>Privilegios por Columna</b>, que permiten un control m&aacute;s granular de datos confidenciales.</li>
<li><b>Configuraci&oacute;n de ordenamiento configurable por base de datos</b>, lo cual hace a PostgreSQL m&aacute;s &uacute;til en entornos con m&uacute;ltiples idiomas.</li>
<li><b>Actualizaciones “en el lugar”</b> desde 8.3 a 8.4 con muy bajo downtime, gracias al uso de pg_migrator beta.</li>
<li><b>Nuevas Herramientas para Monitoreo de Consultas</b> que le otorgan a los administradores mayor informaci&oacute;n sobre la actividad del sistema.</li>
</ul>

<p>La versi&oacute;n 8.4 hace el an&aacute;lisis de datos mucho m&aacute;s sencillo a trav&eacute;s de funcionalidades avanzadas de ANSI SQL:2003, como las <b>funciones window</b>, <b>expresiones comunes de tabla</b> y <b>joins recursivos</b>.  <i>“Estas estructuras de consulta aumentan sustancialmente la expresividad del dialecto SQL de PostgreSQL, permitiendo a los usuarios hacer preguntas interesantes en una sola consulta, que habr&iacute;a sido imposible de construir antes”</i>, explica Sailesh Krishnamurthy, fundador de Truviso.  Las mejoras en los procedimientos almacenados, como los <b>valores por omisi&oacute;n para los argumentos</b> y los <b>argumentos de largo variable</b> hacen m&aacute;s simple y compacta la programaci&oacute;n en la base de datos.</p>

<p>La nueva versi&oacute;n aumenta el rendimiento de las aplicaciones, como comenta Kevin Grittner, Administrador de bases de datos del Sistema de Tribunales de Wisconsin: <i>“PostgreSQL contin&uacute;a mejorando el rendimiento en cada versi&oacute;n. La versi&oacute;n 8.4 ha a&ntilde;adido muchas optimizaciones, como semi-joins y anti-joins, que otorgan una notable mejora en el tiempo de ejecuci&oacute;n en algunas de nuestras consultas m&aacute;s exigentes.”</i></p>

<p>Debido a estas nuevas caracter&iacute;sticas PostgreSQL 8.4 podr&aacute; atender a muchos m&aacute;s usuarios que antes, como el proyecto OpenStreetMap. <i>“A medida que dise&ntilde;&aacute;bamos la nueva versi&oacute;n de la API de OpenStreetMap, estuvo claro que necesit&aacute;bamos una base de datos de clase mundial que no s&oacute;lo dijera que ten&iacute;a las funcionalidades deseadas, sino que realmente corriera bien en la escala que necesit&aacute;bamos. Aunque existen varias bases de datos de c&oacute;digo abierto, PostgreSQL era la elecci&oacute;n obvia”</i>, dice Tom Hughes, administrador de sistemas de OpenStreetMap.</p>

<h2>Versi&oacute;n Extendida</h2>

<a name="additional_features"></a><h2>Lista de Caracter&iacute;sticas</h2>
<p>
La versi&oacute;n 8.4 tiene un n&uacute;mero sin precedentes de nuevas caracter&iacute;sticas.  Hemos creado p&aacute;ginas adicionales para catalogarlas:
</p>
<ul>
<li><a href="/about/press/features84">Lista completa de caracter&iacute;sticas (en ingl&eacute;s)</a></li>
<li><a href="/about/featurematrix">Matr&iacute;z de caracter&iacute;sticas (en ingl&eacute;s)</a></li>
<li><a href="/docs/8.4/static/release-8-4.html">Notas de versi&oacute;n</a></li>
</ul>
<a name="download"></a><h2>Descargas</h2>
<ul>
<li><a href="/download">P&aacute;gina de descargas</a>, con enlaces hacia instaladores y herramientas</li>
<li><a href="/ftp/source/v8.4.0">C&oacute;digo fuente</a></li>
<li><a href="/download/windows">Instaladores para Windows</a></li>
<li><a href="/download/linux">Instaladores para Linux</a> y repositorios de paquetes</li>
<li><a href="/download/solaris">Paquetes para Solaris</a></li>
<li><a href="/download/macosx">Instaladores para Mac OSX</a></li>
<li><a href="/download/freebsd">Ports de FreeBSD</a></li>
<li><a href="http://pgfoundry.org/projects/pg-migrator/">Proyecto pg_migrator</a></li>
<li><a href="http://www.pgfoundry.org">Componentes Opcionales y Adicionales</a></li>
<li><a href="http://www.postgresql.org/download/product-categories">Software Relacionado y Software Comercial</a></li>
</ul>

<a name="docs"></a><h2>Documentaci&oacute;n</h2>

<p>La documentaci&oacute;n en HTML y las p&aacute;ginas <i>man</i> son instaladas junto con PostgreSQL; adem&aacute;s, puede navegar, buscar y comentar en nuestra extensa <a href="/docs/8.4/interactive">documentaci&oacute;n en l&iacute;nea</a> interactiva.</p>

<a name="license"></a><h2>Licencia</h2>
<p>
PostgreSQL usa la <a href="/about/licence">licencia BSD</a>, la cual s&oacute;lo requiere que el c&oacute;digo fuente licenciado mantenga la informaci&oacute;n de derechos de autor y licenciamiento. Esta
<a href="http://www.opensource.org/licenses/bsd-license.php">licencia certificada por la OSI</a> es altamente apreciada por su flexibilidad y por ser amigable para los negocios, debido a que no restringe el uso de PostgreSQL con aplicaciones comerciales y propietarias. Junto con el soporte de varias compa&ntilde;&iacute;as y la propiedad p&uacute;blica del c&oacute;digo, la licencia BSD hace a PostgreSQL muy popular con proveedores que desean integrarlo con sus propios productos sin el temor de los costos de licenciamiento, “lock-in” con un proveedor o cambios en los t&eacute;rminos de licencia.
</p>

<a name="contact"></a><h2>Contactos</h2>

<p>P&aacute;ginas Web</p>
<ul>
<li><a href="http://www.postgresql.org">P&aacute;gina Oficial de PostgreSQL</a></li>
<li><a href="http://www.postgresql-es.org">Portal en espa&ntilde;ol sobre PostgreSQL</a></li>
</ul>

<p>Consultas de Prensa</p>
<p>Argentina<br />
Guido Barosio<br />
<a href="ar@postgresql.org">ar@postgresql.org</a><br />
Celular: +54911-6641-1945</p>
<p>Brasil<br />
Diogo Biazus<br />
<a href="br@postgresql.org">br@postgresql.org</a><br />
<a href="http://www.postgresql.org.br/">www.postgresql.org.br</a></p>
<p>Chile<br />
&Aacute;lvaro Herrera<br />
<a href="alvherre@postgresql.org">alvherre@postgresql.org</a><br />
Tel&eacute;fono: +56-9-74990919</p>
<p>Colombia<br />
Juan Romero<br />
<a href="co@postgresql.org">co@postgresql.org</a><br /></p>
<p>Rep&uacute;blica Dominicana<br />
Edwin Quijada<br />
<a href="do@postgresql.org">do@postgresql.org</a><br />
<p>Ecuador<br />
Jaime Casanova<br />
<a href="ec@postgresql.org">ec@postgresql.org</a><br />
Celular: +593-08-7171157</p>
<p>Guatemala<br />
Antonio Sobalvarro<br />
<a href="gt@postgresql.org">gt@postgresql.org</a><br />
Tel&eacute;fono: +502 23794860</p>
<p>Per&uacute;<br />
Ernesto Qui&ntilde;ones<br />
<a href="pe@postgresql.org">pe@postgresql.org</a><br />
Tel&eacute;fono: (51)(1)5645424</p>
<p>Uruguay<br />
Fernando Fontana<br />
<a href="uy@postgresql.org">uy@postgresql.org</a><br />
Tel&eacute;fono: 59899639046</p>
<p>Venezuela<br />
Ernesto Lozano<br />
<a href="ve@postgresql.org">ve@postgresql.org</a><br />

<p>Para contactos en otras regiones, vea <a href="/about/press/contact"> nuestra lista de contactos internacionales.</a></p>

<a name="quoted_companies"></a><h2>Texto Completo de las Citas e Informaci&oacute;n de Compa&ntilde;&iacute;as</h2>

<p>Los contactos abajo son solo en ingl&eacute;s.</p>

<p><i>“Hemos usado PostgreSQL durante siete a&ntilde;os, y estamos entusiasmados con varias funcionalidades de 8.4, especialmente privilegios por columna, configuraci&oacute;n regional configurable por base de datos, b&uacute;squedas parciales en &iacute;ndices GIN y excepciones definidas por el usuario”</i> dice Jeffrey Webster, CTO de ZooLoo.com. <i>“PostgreSQL nos ha permitido crecer sin sacrificar la integridad de nuestros datos.”</i></br />
Contacto: <a href="mailto:melissa@zooloo.com">Melissa</a> o visite <a href="http://www.zooloo.com/">ZooLoo.com</a></p>

<p><i>“PostgreSQL contin&uacute;a mejorando el rendimiento en cada versi&oacute;n”</i>, dice Kevin Grittner, Administrador de bases de datos, Automatizaci&oacute;n de Programas Consolidados del Sistema de Tribunales de Wisconsin. 
<i>“La versi&oacute;n 8.4 ha a&ntilde;adido muchas optimizaciones, como semi-joins y anti-joins, que otorgan una notable mejora en el tiempo de ejecuci&oacute;n en algunas de nuestras consultas m&aacute;s exigentes.”</i><br />
Contacto: <a href="mailto:Kevin.Grittner@wicourts.gov">Kevin Grittner</a> o visite <a href="http://www.wicourts.gov/">Sistema de Tribunales de Wisconsin</a> </p>

<p><i>“Estas estructuras de consulta aumentan sustancialmente la expresividad del dialecto SQL de PostgreSQL, permitiendo a los usuarios hacer preguntas interesantes en una sola consulta, que antes habr&iacute;a sido imposible de construir antes”</i>, explica Sailesh Krishnamurthy, Fundador y VP de Tecnolog&iacute;a, Truviso.<br /> 
Contacto: <a href="mailto:info@truviso.com">Correo para informaci&oacute;n</a> o visite <a href="http://www.truviso.com">Truviso</a>.</p>

<p><i>“A medida que dise&ntilde;&aacute;bamos la nueva versi&oacute;n de la API de OpenStreetMap, estuvo claro que necesit&aacute;bamos una base de datos de clase mundial que no s&oacute;lo dijera que ten&iacute;a las funcionalidades deseadas, sino que realmente corriera bien en la escala que necesit&aacute;bamos. PostgreSQL nos permite mantener la consistencia de la base de datos usando llaves for&aacute;neas y actualizaciones transaccionales mientras les da a nuestros administradores de sistema las herramientas requeridas para trabajar con nuestra base de datos de 850Gb, manejando el desarrollo continuo de las estructuras de nuestras tablas y los aspectos operacionales como vistas consistentes de la base de datos. Aunque existen varias bases de datos de c&oacute;digo abierto, PostgreSQL era nuestra elecci&oacute;n obvia”,</i> dice Tom Hughes, administrador de sistemas del proyecto OpenStreetMap.<br />
Contacto: <a href="mailto:webmaster@openstreetmap.org">Tom Hughes</a> o visite <a href="http://www.openstreetmap.org">OpenStreetMap</a>.</p>

<a name="companies"></a><h2>Soporte Corporativo</h2>

<p>PostgreSQL tiene el privilegio de contar con numerosas compa&ntilde;&iacute;as que financian desarrolladores, proveen recursos de hospedaje y entregan soporte financiero. Los mayores auspiciadores de largo plazo se listan en nuestra
<a href="/about/sponsors">p&aacute;gina de auspiciadores de desarrollo</a>.</p>

<p>Existe tambi&eacute;n una larga comunidad de <a href="/support/professional_support">compa&ntilde;&iacute;as que ofrecen soporte de PostgreSQL</a>, desde consultores individuales hasta compa&ntilde;&iacute;as multinacionales.</p>

<p>Las <a href="/about/donate">Donaciones</a> son apreciadas.</p>



