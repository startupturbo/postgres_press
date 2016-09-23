<!-- BEGIN page_title_block -->
PostgreSQL 8.3 Press Kit
<!-- END page_title_block -->

<h1>Δελτίο Τύπου για την PostgreSQL 8.3</h1>

<h2>Contents</h2>

<p>
 &nbsp; <a href="#original_release">Πρωτότυπη ανακοίνωση της νέας έκδοσης</a><br />
 &nbsp; <a href="#additional_features">Λίστα Χαρακτηριστικών</a><br />
 &nbsp; <a href="#download">Download</a><br />
 &nbsp; <a href="#docs">Τεκμηρίωση</a><br />
 &nbsp; <a href="#license">Άδεια χρήσης</a><br />
 &nbsp; <a href="#contact">Επικοινωνία</a><br />
 &nbsp; <a href="#quoted_companies">Πληροφορίες για τις αναφερθείσες εταιρείες</a><br />
 &nbsp; <a href="#companies">Εταιρική Υποστήριξη</a><br />
 &nbsp; <a href="#additional_software">Επιπρόσθετο Λογισμικό</a><br />
 &nbsp; <a href="#translations">Μεταφράσεις</a><br />
</p>



<a name="original_release"></a><h2>Πρωτότυπη ανακοίνωση της νέας έκδοσης</h2>

<p><b>4 Φεβρουαρίου 2008, Νέα Υόρκη NY:</b>Σήμερα Το Παγκόσμιο Τμήμα Ανάπτυξης της PostgreSQL ανακοίνωσε την κυκλοφορία της έκδοσης 8.3 του υψηλών επιδόσεων αντικειμενοστραφούς-σχεσιακού συστήματος
διαχείρισης βάσεων δεδομένων.
Αυτή η έκδοση συμπεριλαμβάνει ένα πλήθος νέων αλλά και βελτιωμένων χαρακτηριστικών τα οποία θα αναβαθμίσουν κατά πολύ την  PostgreSQL για σχεδιαστές εφαρμογών, διαχειριστές και χρήστες βάσεων δεδομένων με περισσότερες από 280 προσθήκες κώδικα. Δεκάδες προγραμματιστές από 18 χώρες συνεισφέραν στην νέα έκδοση 
</p><p>
"Η διαρκής εξέλιξη της ανοιχτού λογισμικού βάσης δεδομένων PostgreSQL δίνει στους χρήστες την δυνατότητα χρήσης μιας non-proprietary βάσης δεδομένων, επιτρέποντας τους να εξοικονομήσουν χρήματα,
να βελτιώσουν τις επιδόσεις και να ενισχύσουν την παραγωγικότητα. Η PostgreSQL 8.3 αποτελεί μια εντυπωσιακή νέα έκδοση και ενθαρρύνουμε τους ανά τον κόσμο πελάτες μας να την εξερευνήσουν." 
όπως ανέφερε ο Rich Green, executive vice president λογισμικού στην Sun Microsystems.
</p><p>

Η έκδοση 8.3 προσφέρει  μεγαλύτερη σταθερότητα επιδόσεων από τις προηγούμενες εκδόσεις, εξασφαλίζοντας οτι όλοι οι χρήστες μπορούν να βασισθούν στις ίδιες υψηλές επιδόσεις που είδαμε στα πρόσφατα
benchmarks για ολα τα transaction, ανεξαρτήτως υψηλού φόρτου η όχι, επτά μέρες την βδομάδα, 52 εβδομάδες τον χρόνο. Κρίσιμες βελτιώσεις σε θέματα επιδόσεων περιλαμβάνουν:
</p><ul>
<li>Heap Organized Tuples (HOT), οι οποιες εξαλείφουν εως και 3/4 της επιβάρυνσης που προκύπτει απο την συχνή ανανέωση πινάκων </li>
<li>Load distributed checkpoints, τα οποία μειώνουν την checkpoint activity της ώρες υψηλού φόρτου.</li>
<li>Automated self-tuning of the background writer</li>
</ul><p>
Οι αλλαγές αυτές επιταχύνουν σημαντικά την διαδικασία χειρισμού transcations, επιφέρουν αύξηση μεταξύ 5% και 30%, ανάλογα με τον όγκο εργασιών.
</p><p>
"Η PostgreSQL απλά έγινε εξυπνότερη," όπως ανέφερε ο Bruce Momjian, μέλος του PostgreSQL Core Team.
</p><p>
Η PostgreSQL είναι η πρώτη ανοιχτού λογισμικού database που υλοποιεί Synchronized Scan, το οποίο μειώνει πολύ τις διαδικασίες I/O για data mining. Η ομάδα Windows επέτρεψε την μεταγλώττιση της
PostgreSQL σε Visual C++, βελτιώνοντας την σταθερότητα και τις επιδόσεις στα Windows, καθώς και την προσβασιμοτητα των Windows contributors στο project.
Νέες επιλογές logging προστέθηκαν και η επιβάρυνση του statistics collector (συλλογή στατιστικών στοιχείων) μειώθηκε έτσι ώστε να είναι ευκολότερο να επιβλεπουμε τους PostgreSQL servers.
</p><p>
Φυσικά, δεν 8α μπορούσε να είναι μια σωστή έκδοση της PostgreSQL χωρίς να παρέχει πολλά νέα χαρακτηριστικά για ανάπτυξη εφαρμογών, συμπεριλαμβανομένων:
</p><ul>
<li>ANSI-standard SQL/XML υποστήριξη, συμπεριλαμβανομένου XML export</li>
<li>Text search: Το εξελιγμένο εργαλείο TSearch2 προσχώρησε στην core διανομή με καλύτερη διαχείριση καθώς και νέα λεξικά και γλώσσες </li>
<li>υποστήριξη αυθεντικοποιησης GSSAPI και SSPI</li>
<li>Νέοι τύποι δεδομένων: UUIDs, ENUMs και πίνακες απο composite types (σύνθετους τύπους)</li>
</ul><p>
"Επεξεργαζόμαστε πάνω απο 18,000 queries ανά δευτερόλεπτο σε πάνω απο 300GB δεδομένα στους PostgreSQL servers μας,
και αυτα τα νούμερα αυξάνονται κάθε μήνα" ανέφερε ο Gavin Roy, CTO of social networking site MyYearbook.com.
"Ειμαστε πολύ ενθουσιασμένοι με το HOT, τις shared buffer scan βελτιώσεις και το ενσωματωμένο tsearch indexing. Πρόωρα tests δείχνουν οτι η 8.3 βελτιώνει το database load profile  ενώ μειώνει τους χρόνους απόκρισης. Αληθινά περιμένουμε την τελική έκδοση"
</p><p>
Εκτός απο τα αρκετά νέα χαρακτηριστικά στον πυρήνα, αρκετά νέα προαιρετικά component έχουν ωριμάσει και έχουν φτάσει σε έκδοση 1.0 κατά την διάρκεια του  8.3 κύκλου.
Αυτά περιλαμβάνουν υποστήριξη SNMP, επιλογές  horizontal scalability οπος  PL/Proxy, pgPool-II, και Bucardo, εναν γραφικό  debugger για stored procedures, και έναν scalable connection pooler
που καλειται pgBouncer. Αυτά επιπροσ8ετα σε ενα μεγάλο σύνολο απο συμπληρωματικά component που είναι ήδη διαθέσιμα.
</p><p>

Υπάρχουν δεκάδες επιπρόσθετα χαρακτηριστικά και βελτιώσεις στην έκδοση 8.3 τα οποία θα κάνουν την  PostgreSQL μια πιο δυναμική βάση δεδομένων.
Για περισσότερες λεπτομέρειες δείτε το  Press Kit.
</p><p>

Κατεβάστε την PostgreSQL απο την <a href="http://www.postgresql.org/download">download page</a>.
</p><p>
Περί της PostgreSQL: Η PostgreSQL είναι η συλλογική εργασία εκατοντάδων προγραμματιστών, βασισμένη σε 21 χρόνια ανάπτυξης που ξεκίνησε στο Πανεπιστήμιο της Καλιφόρνια στο Μπέρκλεϊ. 
Με την μακροχρόνια υποστήριξή σε επαγγελματικού επιπέδου χαρακτηριστικά μιας transactional database, 
η PostgreSQL χρησιμοποιείται σήμερα σε πολλές από τις πιο απαιτητικές επιχειρήσεις και κυβερνητικούς οργανισμούς.
Η PostgreSQL διατίθεται υπό την άδεια χρήσης BSD, η οποία επιτρέπει τη χρήση και διανομή της χωρίς χρέωση, τόσο για εμπορικές όσο και για μη-εμπορικές εφαρμογές.
Μπορειτε να μάθετε περισσότερα στην <a href="http://www.postgresql.org">κεντρική σελίδα μας</a>
</p>



<h2>Εκτεταμένη Έκδοση</h2>

<a name="additional_features"></a><h2>Λίστα χαρακτηριστικών</h2>
<p>
Η έκδοση  8.3 έχει ενα πρωτοφανή αριθμό απο νεα χαρακτηριστικά. Δημιουργήσαμε επιπλέον σελίδες για να τα καταλογραφησουμε:
<ul>
<li><a href="/about/press/features83">Ολοκληρη η λιστα με τα χαρακτηριστικα</a></li>
<li><a href="/about/featurematrix">Feature matrix (English only)</a></li>
<li><a href="/docs/8.3/static/release-8-3.html">Release Notes</a></li>
</ul>
<a name="download"></a><h2>Downloads</h2>
<ul>
<li><a href="/ftp/source/v8.3">Πηγαίος Κώδικας</a></li>
<li><a href="/ftp/binary/v8.3">Binaries</a>, συμπεριλαμβανομένων  Windows, Red Hat Linux και Solaris</li>
<li><a href="http://www.pgfoundry.org">Προαιρετικά Components</a></li>
</ul>

<a name="docs"></a><h2>Τεκμηρίωση</h2>
HTML τεκμηρίωση και man pages είναι διαθέσιμα μαζί με την PostgreSQL, επιπλέον μπορείτε ελεύθερα να ανατρέξετε,να αναζητήσετε και να σχολιάσετε στη διαδραστική και εκτενή 
<a href="/docs/8.3/interactive">online τεκμηρίωσή μας</a>.


<a name="license"></a><h2>Άδεια χρήσης</h2>
<p>
Η PostgreSQL χρησιμοποιεί την <a href="/about/licence">άδεια χρήσης BSD</a>, η οποία απαιτεί μόνο τη διατήρηση του copyright για τον πηγαίο κώδικα, και των πληροφοριών της άδειας χρήσης. Αυτή η άδεια χρήσης η οποία είναι <a href="http://www.opensource.org/licenses/bsd-license.php">πιστοποιημένη από τον OSI</a> είναι κοινώς αποδεκτή ως ευέλικτη και φιλική προς τις επιχειρήσεις, αφού δεν προσθέτει περιορισμούς για τη χρήση της PostgreSQL με εμπορικές εφαρμογές και εφαρμογές κλειστού κώδικα. Μαζί με την υποστήριξη από πολλές επιχειρήσεις, και την κοινή ιδιοκτησία του κώδικα, η άδεια BSD κάνει πολλές εταιρείες που θέλουν να ενσωματώσουν μία βάση δεδομένων στα δικά τους προϊόντα χωρίς να ανησυχούν για το κόστος, τη σύνδεση με ένα μοναδικό πάροχο, ή πιθανές αλλαγές στην άδεια χρήσης, να προτιμάνε την PostgreSQL.
</p>



<a name="contact"></a><h2>Επικοινωνία</h2>

<p><a href="http://www.postgresql.org">PostgreSQL home page</a></p>


<p>Πληροφορίες:<br />
Κωστας Μαϊστρέλης<br />
Τοπικός εκπρόσωπος επικοινωνίας της PostgreSQL<br />
Κινητό: +306946071060<br />
<a href="mailto:el@postgresql.org">el@postgresql.org</a></p>


<p>Για επικοινωνία σε άλλες περιοχές, δείτε <a href="/about/press/contact">τη λίστα μας με τις διεθνείς επαφές.</a></p>


<a name="quoted_companies"></a><h2>Πληροφορίες για τις αναφερθείσες εταιρείες</h2>
<p>

"Η διαρκής εξέλιξη της ανοιχτού λογισμικού βάσης δεδομένων PostgreSQL δίνει στους χρήστες την δυνατότητα χρήσης μιας non-proprietary βάσης δεδομένων, επιτρέποντας τους να εξοικονομήσουν χρήματα,
να βελτιώσουν τις επιδόσεις και να ενισχύσουν την παραγωγικότητα. Η Sun έχει συνεισφέρει στην επιτυχία της PostgreSQL στο OpenSolaris - τρέχει σε όλους τους x64 και Sun SPARC servers μας, όπως επίσης
και στους  Dell, HP και IBM - και προσφέρουμε μια ποικιλία πακέτων εκπαίδευσης και υποστήριξης για πελάτες που ενδιαφέρονται να εγκαταστήσουν PostgreSQL. 
Η PostgreSQL 8.3 αποτελεί μια εντυπωσιακή νεα έκδοση και ενθαρρύνουμε τους ανά τον κόσμο πελάτες μας να την εξερευνήσουν." 
οπως ανέφερε ο Rich Green, executive vice president λογισμικού στην Sun Microsystems.
</p><p>
<b>Επικοινωνία για Sun Microsystems</b>: Terri Molini, 01-408-404-4976, terri.molini@sun.com
</p><p>
"Επεξεργαζόμαστε πάνω απο 18,000 queries ανά δευτερόλεπτο σε πάνω απο 300GB δεδομένα στους PostgreSQL servers μας,
και αυτα τα νούμερα αυξάνονται κάθε μήνα" ανέφερε ο Gavin Roy, CTO of social networking site MyYearbook.com.
"Ειμαστε πολύ ενθουσιασμένοι με το HOT, τις shared buffer scan βελτιώσεις και το ενσωματωμένο tsearch indexing. Πρόωρα tests δείχνουν οτι η 8.3 βελτιώνει το database load profile 
ενω μειώνει τους χρόνους απόκρισης. Αληθινά περιμένουμε την τελική έκδοση"
</p><p>
<b>Σχετικά με το MyYearbook.com</b>: το myYearbook.com  αποτελεί έναν απο τους μεγαλύτερους ομιλους media με κυρια απευθυνση σε εφηβους στης ΗΠΑ. 
τους τελευταίους πέντε μήνες παρουσίας θεαματική αύξηση 500% σε page views και εγγραφή μελών. τα μέλη του myYearbook.com  έφτασαν να ξεπερνούν τα 4.7 εκατομμύρια άτομα, και πλέον
προστίθενται ένα εκατομμύριο νέα μέλη κάθε δυο μήνες. 
Επικοινωνία  press@myyearbook.com.

</p>

<a name="companies"></a><h2>Εταιρική Υποστήριξη</h2>


<p>

Η PostgreSQL υποστηριζεται απο πολλές εταιρείες, που χορηγούν προγραμματιστές, παρέχουν υπηρεσίες hosting και μας στηρίζουν οικονομικά. Οι μεγαλύτεροι (σε βάθος χρόνου χορηγοί) βρίσκονται
στη <a href="/about/sponsors"> σελίδα χορηγών ανάπτυξης</a></p>



<p>Υπάρχει επίσης μια μεγάλη κοινότητα απο <a href="/support/professional_support">εταιρείες που προσφέρουν υποστήριξη σε  PostgreSQL </a>, απο μεμονωμένους  consultants μέχρι και πολυεθνικές εταιρείες </p>

Οποιαδήποτε <a href="/about/donate">Οικονομική Συνεισφορά</a> είναι ευπρόσδεκτη.

<a name="additional_software"></a><h2>Links</h2>
<p>


Το κυρίως έργο της PostgreSQL εμπλουτίζεται με πάνω από 100 ενεργά υπο-έργα που παρέχουν ποιοτικές λύσεις για replication, μετάβαση, συμβατότητα, διαλειτουργικότητα, γραφικά εργαλεία σχεδίασης και διαχείρισης. Τα περισοτερα προαιρετικα components μπορειτε να τα βρειτε στο <a href="http://www.pgfoundry.org">pgFoundry</a> η στην <a href="/download">downloads σελίδα μας.</a>  
Εδω βρισκονται links απο αυτα που αναφερονται στην εκδοση:

</p>
<h3>Εργαλεία για Προγραμματιστές</h3>
<ul>
<li><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></li>
<li><a href="http://pgfoundry.org/projects/edb-debugger/">PL/pgSQL Debugger</a></li>
</ul>

<h3>Replication and Horizontal Scaling</h3>

<ul>
<li><a href="http://bucardo.org/">Bucardo</a></li>
<li><a href="https://developer.skype.com/SkypeGarage/DbProjects/SkyTools">Skytools</a>, Συμπεριλαμβάνει <a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a> και <a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></li>
<li><a href="http://www.slony.info/">Slony-I</a></li>
<li><a href="http://pgfoundry.org/projects/pgpool/">pgPool</a></li>
<li><a href="http://pgfoundry.org/projects/pgcluster/">pgCluster</a></li>
<li><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></li>
</ul>

<a name="translations"></a><h2>Επίσημες μεταφράσεις αυτού του κειμένου</h2>

<ul>

<li><a href="/about/press/presskit83.html.ar">Αραβικά</a></li>

<li><a href="/about/press/presskit83.html.br">Πορτογαλλικά Βραζιλίας</a></li>

<li><a href="/about/press/presskit83.html.zh_CN">Κινέζικα</a></li>

<li><a href="/about/press/presskit83.html.nl">Ολλανδικά</a></li>

<li><a href="/about/press/presskit83.html.fi">Φιλανδικά</a></li>

<li><a href="/about/press/presskit83.html.fr">Γαλλικά</a></li>

<li><a href="/about/press/presskit83.html.de">Γερμανικά</a></li>

<li><a href="/about/press/presskit83.html.el">Ελληνικά</a></li>

<li><a href="/about/press/presskit83.html.it">Ιταλικά</a></li>

<li><a href="/about/press/presskit83.html.ja">Ιαπωνέζικα</a></li>

<li><a href="/about/press/presskit83.html.pl">Πολωνικά</a></li>

<li><a href="/about/press/presskit83.html.ro">Ρουμάνικα</a></li>

<li><a href="/about/press/presskit83.html.ru">Ρώσικα</a></li>

<li><a href="/about/press/presskit83.html.es">Ισπανικά</a></li>

<li><a href="/about/press/presskit83.html.tr">Τούρκικα</a></li>

</ul>


