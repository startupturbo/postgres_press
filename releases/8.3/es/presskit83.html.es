<!-- BEGIN page_title_block -->
Kit de Prensa de PostgreSQL 8.3
<!-- END page_title_block -->

<h1>Kit de Prensa de PostgreSQL 8.3</h1>

<h2>Contenidos</h2>

<p>
 &nbsp; <a href="#original_release">Texto del comunicado original</a><br />
 &nbsp; <a href="#additional_features">Listado adicional de caracter&iacute;sticas</a><br />
 &nbsp; <a href="#download">D&oacute;nde descargar</a><br />
 &nbsp; <a href="#docs">Documentaci&oacute;n</a><br />
 &nbsp; <a href="#license">Licencia</a><br />
 &nbsp; <a href="#contact">Contactos</a><br />
 &nbsp; <a href="#quoted_companies">Informaci&oacute;n de compa&ntilde;&iacute;as citadas</a><br />
 &nbsp; <a href="#companies">Soporte corporativo</a><br />
 &nbsp; <a href="#additional_software">Software adicional</a><br />
</p>

<a name="original_release"></a><h2>Texto del comunicado original</h2>

<p><b>4 de febrero de 2008, Nueva York, NY, USA:</b>  El Grupo Global de Desarrollo de PostgreSQL anuncia hoy el lanzamiento de la versi&oacute;n 8.3 del gestor objeto-relacional de bases de datos PostgreSQL. Esta versi&oacute;n incluye una cantidad r&eacute;cord de caracter&iacute;sticas nuevas y mejoradas, que van a aumentar los beneficios para dise&ntilde;adores de aplicaciones, administradores de bases de datos y usuarios, a trav&eacute;s de m&aacute;s de 280 parches creados por docenas de contribuyentes a PostgreSQL en 18 pa&iacute;ses.
</p><p>
&laquo;La evoluci&oacute;n continua del gestor de datos de c&oacute;digo abierto PostgreSQL les da a los usuarios la opci&oacute;n de instalar una base de datos no privativa, permiti&eacute;ndoles ahorrar dinero, mejorar el rendimiento e incrementar la productividad. PostgreSQL 8.3 es una versi&oacute;n impresionante y alentamos a los clientes de todo el mundo a que lo exploren&raquo;, dice Rich Green, vicepresidente ejecutivo de software de Sun Microsystems.
</p><p>
La versi&oacute;n 8.3 entrega mayor consistencia en el rendimiento que versiones anteriores, asegurando que cada usuario pueda obtener el mismo alto nivel de rendimiento demostrado en pruebas recientes, para todas las transacciones, tanto en horas pico como fuera de ellas, siete d&iacute;as a la semana, 52 semanas al a&ntilde;o. Las mejoras de rendimiento m&aacute;s importantes incluyen:
</p><ul>
<li>
Heap Organized Tuples (HOT), que eliminan hasta un 75% de la sobrecarga de mantenimiento en tablas frecuentemente actualizadas
</li>
<li>
Checkpoints extendidos y autoafinamiento del escritor en segundo plano, que reducen el impacto de los checkpoints en los tiempos de respuesta
</li>
<li>
Opci&oacute;n de confirmaci&oacute;n (commit) asincr&oacute;nico de transacciones, que permite tiempos de respuesta m&aacute;s breves para algunas transacciones
</li>
</ul><p>
Estos cambios, adem&aacute;s, aceleran significativamente la tasa de procesamiento de transacciones, entre un 5 y un 30%, dependiendo de la carga de trabajo.
</p><p>
&laquo;PostgreSQL acaba de volverse m&aacute;s listo&raquo;, dice Bruce Momjian, miembro del Core Team de PostgreSQL.
</p><p>
PostgreSQL es la primera base de datos de c&oacute;digo abierto en implementar Recorrido Sincronizado, que reduce el uso de E/S en aplicaciones de miner&iacute;a de datos.  El grupo de Windows ha implementado un sistema de compilaci&oacute;n con Visual C++, lo cual mejora la estabilidad y rendimiento en Windows, as&iacute; como la accesibilidad para otros contribuyentes Windows.  Nuevas opciones de registro (logging) han sido agregadas y el sobrecosto del recolector de estad&iacute;sticas ha sido disminuido para hacer m&aacute;s f&aacute;cil el monitoreo de sus servidores.
</p><p>
Esta no ser&iacute;a una verdadera nueva versi&oacute;n de PostgreSQL si no incluyera nuevas caracter&iacute;sticas para desarrolladores de aplicaciones, como:
</p><ul>
<li>
Soporte SQL/XML de acuerdo al est&aacute;ndar ANSI, incluyendo exportaci&oacute;n en formato XML
</li>
<li>
B&uacute;squeda en texto: nuestra herramienta avanzada de b&uacute;squeda en texto, TSearch2, ha sido incorporada en la distribuci&oacute;n central, con mejor manejo y nuevos diccionarios e idiomas
</li>
<li>
Soporte de autentificaci&oacute;n GSSAPI y SSPI
</li>
<li>
Nuevos tipos de datos: UUIDs, ENUMs y arreglos de tipos compuestos
</li>
</ul><p>
&laquo;Procesamos cerca de 18.000 consultas por segundo en nuestros servidores PostgreSQL, en m&aacute;s de 300GB de datos y estos n&uacute;meros se incrementan todos los meses&raquo;, dice Gavin Roy, CTO del sitio de redes sociales MyYearbook.com. &laquo;Estamos muy entusiasmados con HOT, las mejoras en el rendimiento de recorridos sincronizados y la b&uacute;squeda en texto integrada. Nuestras pruebas preliminares muestran que 8.3 mejorar&aacute; nuestro perfil de carga de bases de datos y simult&aacute;neamente reducir&aacute; los tiempos de respuesta. Esperamos esta nueva versi&oacute;n con ansias&raquo;.
</p><p>
Adem&aacute;s de las variadas caracter&iacute;sticas incorporadas, algunos componentes opcionales han continuado madurando y han lanzados versiones 1.0 durante el ciclo de desarrollo de 8.3, las cuales incluyen el soporte SNMP, algunas opciones de escalabilidad horizontal como PL/Proxy, pgPool2 y Bucardo, un depurador gr&aacute;fico para los procedimientos almacenados y un acumulador de conexiones llamado pgBouncer. Estos se agregan al variado conjunto de accesorios ya disponibles.
</p><p>
Hay docenas de caracter&iacute;sticas y mejoras en 8.3 que hacen de PostgreSQL una plataforma de bases de datos poderosa. Vea el kit de prensa para m&aacute;s detalles: http://www.postgresql.org/about/press/presskit83
</p><p>
Descargue PostgreSQL desde nuestra 
<a href="http://www.postgresql.org/download">p&aacute;gina de descargas</a>.
</p><p>
Acerca de PostgreSQL: PostgreSQL es el trabajo colectivo de cientos de desarrolladores, bas&aacute;ndose en veinti&uacute;n a&ntilde;os de desarrollo que comenzaron en la Universidad de California en Berkeley. Con su soporte de larga data de un conjunto de caracter&iacute;sticas de bases de datos transaccionales de nivel empresarial y su escalabilidad, PostgreSQL est&aacute; siendo usado por muchas de las m&aacute;s exigentes empresas y agencias de gobierno. PostgreSQL se distribuye bajo licencia BSD, lo cual permite el uso y distribuci&oacute;n sin costo, tanto para aplicaciones comerciales como no comerciales. Para obtener m&aacute;s informaci&oacute;n visite <a href="http://www.postgresql.org">nuestro sitio web</a>.
</p>

<h2>Informaci&oacute;n adicional</h2>

<a name="additional_features"></a><h2>Listado adicional de caracter&iacute;sticas</h2>
<p>
La versi&oacute;n 8.3 tiene una cantidad de caracter&iacute;sticas nunca antes vista. Hemos creado p&aacute;ginas separadas
para catalogarlas:
<ul>
<li><a href="/about/press/features83">Listado completo de caracter&iacute;sticas</a></li>
<li><a href="/about/featurematrix">Matriz de caracter&iacute;sticas (s&oacute;lo ingl&eacute;s)</a></li>
<li><a href="/docs/8.3/static/release-8-3.html">Release Notes</a></li>
</ul>
<a name="download"></a><h2>Dónde descargar</h2>
<ul>
<li><a href="/ftp/source/v8.3">C&oacute;digo fuente</a></li>
<li><a href="/ftp/binary/v8.3">Binarios</a>, incluyendo Windows, Red Hat Linux y Solaris</li>
<li><a href="http://www.pgfoundry.org">Componentes opcionales</a></li>
</ul>

<a name="docs"></a><h2>Documentaci&oacute;n</h2>

La documentaci&oacute;n HTML y las p&aacute;ginas &laquo;man&raquo; son instaladas junto con PostgreSQL, pero le invitamos a navegar, buscar y dejar comentarios en nuestra <a href="/docs/8.3/interactive">documentaci&oacute;n en l&iacute;nea</a> exhaustiva e interactiva.

<a name="license"></a><h2>Licencia</h2>
<p>
PostgreSQL usa la <a href="/about/licence">licencia BSD</a>, la cual s&oacute;lo requiere que el c&oacute;digo fuente licenciado mantenga su informaci&oacute;n de copyright y licencia. Esta 
<a href="http://www.opensource.org/licenses/bsd-license.php">licencia certificada por OSI</a> es ampliamente reconocida por su flexibilidad y su conveniencia para empresas, puesto que no restringe el uso de PostgreSQL con aplicaciones comerciales y propietarias. En conjunto con el soporte disponible desde m&uacute;ltiples compa&ntilde;&iacute;as y propiedad p&uacute;blica del c&oacute;digo, la licencia BSD hace a PostgreSQL muy popular con proveedores que desean incluir una base de datos con sus propios productos sin temor de cargos de licenciamiento, &laquo;lock-in&raquo; de un proveedor, o cambios en los t&eacute;rminos de licencia.
</p>

<a name="contact"></a><h2>Contactos</h2>

<p><a href="http://www.postgresql.org">Sitio web de PostgreSQL</a></p>

<p>Contactos de prensa</p>

<dl>
<dt>Argentina</dt>
<dd>Christian Kuroki
<br /><a href="mailto:ar@postgresql.org">ar@postgresql.org</a>
<br />Fono: +54-11-6560-5785
</dd>
<dt>Brasil</dt>
<dd>Roberto Mello
<br /><a href="mailto:br@postgresql.org">br@postgresql.org</a>
<br />Fono: +1-8016364531
<br />Skype: rlbmello
<br /><a href="http://www.postgresql.org.br">http://www.postgresql.org.br</a>
</dd>
<dt>Chile</dt>
<dd>&Aacute;lvaro Herrera
<br /><a href="mailto:alvherre@postgresql.org">alvherre@postgresql.org</a>
<br />Fono: +56-63-210164
<br /><a href="http://www.postgresql.cl/">http://www.postgresql.cl/</a>
</dd>
<dt>Ecuador</dt>
<dd>Jaime Casanova
<br /><a href="mailto:ec@postgresql.org">ec@postgresql.org</a>
<br />Cell: 593-08-7171157
</dd>
<dt>Guatemala</dt>
<dd>Antonio Sobalvarro
<br /><a href="mailto:gt@postgresql.org">gt@postgresql.org</a>
<br />Fono: +502 23794860
</dd>
<dt>Venezuela</dt>
<dd>C&eacute;sar Villanueva
<br /><a href="mailto:ve@postgresql.org">ve@postgresql.org</a>
<br />Cell: +58-416-9244559
</dd>
</dl>


<p>Para obtener informaci&oacute;n sobre contactos en otras regiones espec&iacute;ficas, vea <a href="/about/press/contact">nuestro listado de contactos internacionales.</a></p>

<a name="quoted_companies"></a><h2>Informaci&oacute;n sobre compa&ntilde;&iacute;as citadas</h2>
<p>
&laquo;La evoluci&oacute;n continua del gestor de datos de c&oacute;digo abierto PostgreSQL les da a los usuarios la opci&oacute;n de instalar una base de datos no privativa, permiti&eacute;ndoles ahorrar dinero, mejorar el rendimiento e incrementar la productividad. Sun est&aacute; comprometido con el &eacute;xito de PostgreSQL en OpenSolaris, tanto en nuestros servidores x64 y Sun SPARC como en los de Dell, HP e IBM, y tenemos una variedad de ofertas de educaci&oacute;n y soporte para aquellos clientes que buscan desplegar PostgreSQL. PostgreSQL 8.3 es una versi&oacute;n impresionante y alentamos a los clientes de todo el mundo a que lo exploren&raquo;, dice Rich Green, vicepresidente ejecutivo de software de Sun Microsystems.
</p><p>
<b>Contacte Sun Microsystems</b>: Terri Molini, 01-408-404-4976, terri.molini@sun.com (s&oacute;lo ingl&eacute;s)
</p><p>
&laquo;Procesamos cerca de 18.000 consultas por segundo en nuestros servidores PostgreSQL, en m&aacute;s de 300GB de datos y estos n&uacute;meros se incrementan todos los meses&raquo;, dice Gavin Roy, CTO del sitio de redes sociales MyYearbook.com. &laquo;Estamos muy entusiasmados con HOT, las mejoras en el rendimiento de recorridos sincronizados y la b&uacute;squeda en texto integrada. Nuestras pruebas preliminares muestran que 8.3 mejorar&aacute; nuestro perfil de carga de bases de datos y simult&aacute;neamente reducir&aacute; los tiempos de respuesta. Esperamos esta nueva versi&oacute;n con ansias&raquo;.
</p><p>
<b>Acerca de MyYearbook.com</b>: myYearbook.com es uno de los sitios m&aacute;s grandes para adolescentes en Internet. Con un crecimiento de un 500% en p&aacute;ginas vistas y cantidad de miembros en los &uacute;ltimos cinco meses, myYearbook ha crecido desde un s&oacute;lo colegio de secundaria a m&aacute;s de 4,7 millones de miembros y agrega un mill&oacute;n de miembros nuevos cada mes.  Contacte a press@myyearbook.com (s&oacute;lo ingl&eacute;s).
</p>

<a name="companies"></a><h2>Soporte corporativo</h2>

<p>
PostgreSQL tiene el privilegio de contar con numerosas compa&ntilde;&iacute;as que financian desarrolladores, proveen recursos de hospedaje y entregan soporte financiero. Los mayores auspiciadores de largo plazo se listan en nuestra
<a href="/about/sponsors">p&aacute;gina de auspiciadores de desarrollo</a>.</p>

<p>Adicionalmente, hay una comunidad grande de <a href="/support/professional_support">compa&ntilde;&iacute;as que ofrecen soporte a PostgreSQL</a>, desde consultores individuales a compa&ntilde;&iacute;as multinacionales.</p>

Las <a href="/about/donate">donaciones</a> son apreciadas.

<a name="additional_software"></a><h2>Links</h2>
<p>
El proyecto PostgreSQL principal es aumentado por m&aacute;s de 100 subproyectos activos que proveen soluciones de alta calidad para la replicaci&oacute;n, migraci&oacute;n, compatibilidad, interoperabilidad, dise&ntilde;o y administraci&oacute;n gr&aacute;fica. La mayor&iacute;a de los componentes opcionales se indexan en 
<a href="http://www.pgfoundry.org">pgFoundry</a> o nuestro <a href="/download">sitio de descargas</a>.  Estos son los mencionados en el comunicado de prensa:
</p>
<h3>Herramientas de desarrollador</h3>
<ul>
<li><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></li>
<li><a href="http://pgfoundry.org/projects/edb-debugger/">Depurador PL/pgSQL</a></li>
</ul>

<h3>Replicaci&oacute;n y escalamiento horizontal</h3>

<ul>
<li><a href="http://bucardo.org/">Bucardo</a></li>
<li><a href="https://developer.skype.com/SkypeGarage/DbProjects/SkyTools">Skytools</a>, incluyendo <a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a> y <a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></li>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
<li><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></li>
</ul>




