<!-- BEGIN page_title_block -->
PostgreSQL 8.4 Press Kit
<!-- END page_title_block -->

<h1>Δελτίο Τύπου για την PostgreSQL 8.4</h1>

<h2>Περιεχόμενα</h2>

<p>
 &nbsp; <a href="#original_release">Κείμενο Αρχικής Έκδοσης</a><br />
 &nbsp; <a href="#additional_features">Λίστα Χαρακτηριστικών</a><br />
 &nbsp; <a href="#download">Τοποθεσίες Λήψης</a><br />
 &nbsp; <a href="#docs">Τεκμηρίωση</a><br />
 &nbsp; <a href="#license">Άδεια χρήσης</a><br />
 &nbsp; <a href="#contact">Επικοινωνία</a><br />
 &nbsp; <a href="#quoted_companies">Πλήρες Κείμενο Ρήσεων και Εταιρικά Στοιχεία</a><br />
 &nbsp; <a href="#companies">Εταιρική Υποστήριξη</a><br />
 &nbsp; <a href="#translations">Επίσημες μεταφράσεις  Δελτίου τύπου</a><br />
</p>

<a name="original_release"></a><h2>Πρωτότυπο Δελτίο Τύπου</h2>

<p><b>1 Ιουλίου 2009</b> Η Ομάδα Παγκόσμιας Ανάπτυξης PostgreSQL κυκλοφόρησε την έκδοση 8.4, συνεχίζοντας την ταχεία ανάπτυξη της πιο προηγμένης βάσης δεδομένων ανοιχτού κώδικα στον κόσμο. Αυτή η έκδοση περιέχει πληθώρα βελτιώσεων οι οποίες καθιστούν τη διαχείριση, τη διατύπωση ερωτημάτων και τον προγραμματισμό της PostgreSQL πιο εύκολο από κάθε άλλη φορά. Με 293 νέα ή βελτιωμένα χαρακτηριστικά στην έκδοση 8.4, υπάρχουν ακόμη περισσότεροι λόγοι να επιλέξετε την PostgreSQL για το επόμενό σας έργο.</p>

<p>Οι περισσότερες αλλαγές στην PostgreSQL 8.4 αφορούν νέα ή βελτιωμένα εργαλεία και εντολές διαχείρισης και παρακολούθησης. Κάθε χρήστης έχει τα δικά του αγαπημένα χαρακτηριστικά τα οποία καθιστούν την καθημερινή του εργασία με την PostgreSQL πιο εύκολη και πιο παραγωγική.</p>

<p><i>"Χρησιμοποιούμε την PostgreSQL εδώ και επτά χρόνια, και πραγματικά ανυπομονούμε να δούμε πολλά από τα χαρακτηριστικά της 8.4, ιδιαίτερα τα δικαιώματα σε επίπεδο στήλης, τις τοπικές ρυθμίσεις (locale) ανά βάση δεδομένων,  partial matches για GIN indexes και user defined exceptions"</i> λέει ο Jeffrey Webster, CTO της ZooLoo.com. <i>"Η PostgreSQL μας έχει δώσει τη δυνατότητα να αναπτυχθούμε χωρίς να θυσιάσουμε την ακεραιότητα των δεδομένων."</i></p>

<p>Κάποιες από τις πιο δημοφιλείς βελτιώσεις είναι οι ακόλουθες:</p>
<ul>
<li><b>Parallel Database Restore</b>, που επιταχύνει την επαναφορά από backup μέχρι 8 φορές</li>
<li><b>Per-Column Permissions</b>, που επιτρέπουν μεγαλύτερο επί μέρους έλεγχο των ευαίσθητων δεδομένων</li>
<li><b>Υποστήριξη Per-database Collation</b>, που καθιστά την PostgreSQL πιο λειτουργική σε πολύγλωσσα περιβάλλοντα</li>
<li><b>Εύκολη Αναβάθμιση (In-place)</b> μέσω του pg_migrator beta, που δίνει τη δυνατότητα για αναβάθμιση από την 8.3 στην 8.4 
σε σύντομο χρονο (μικρο downtme)</li>
<li><b>Νέα Εργαλεία Παρακολούθησης Ερωτημάτων</b>, που προσφέρουν στους διαχειριστές  καλύτερη επίβλεψη των query διαδικασίων </li>
</ul>

<p>Η Έκδοση 8.4 καθιστά την ανάλυση δεδομένων πιο εύκολη μέσω των προηγμένων χαρακτηριστικών ANSI SQL2003 για <bwindowing functions</b>, <b>common table expressions</b> και <b>recursive joins</b>. <i>"Αυτές οι δομές των query βελτιώνουν την εκφραστικότητα της διαλέκτου PostgreSQL της SQL ουσιωδώς, επιτρέποντας στους χρήστες να διατυπώνουν ενδιαφέρουσες ερωτήσεις στο πλαίσιο ενός μόνο query, κάτι που πριν δεν ήταν δυνατό να γίνει,"</i> εξηγεί ο Sailesh Krishnamurthy, Ιδρυτής της Truviso.  Βελτιώσεις στις stored procedures, όπως οι <b>default παράμετροι</b> και οι <b>variadic παράμετροι</b>, καθιστούν τον προγραμματισμό πιο απλό και πιο συμπαγη.</p>

<p>Η νέα έκδοση βελτιωνει και την απόδοση των εφαρμογών, όπως σχολιάζει ο Kevin Grittner, Διαχειριστής Βάσεων Δεδομένων της Wisconsin Courts System, <i>"Η PostgreSQL συνεχίζει να βελτιώνει την απόδοσή της με κάθε σημαντική έκδοση. Η έκδοση 8.4 προσθέτει αρκετές βελτιστοποιήσεις, όπως semi-joins και anti-joins, που προσφέρουν ιδιαίτερη βελτίωση στο χρόνο εκτέλεσης κάποιων από τα πιο απαιτητικά μας query."</i></p>

<p>Αυτά τα χαρακτηριστικά σημαίνουν ότι η PostgreSQL 8.4 θα εξυπηρετήσει περισσότερους χρήστες από ποτέ, όπως το project OpenStreetMap. <i>"Όταν σχεδιάζαμε τη νέα έκδοση του OpenStreetMap API, έγινε σαφές ότι χρειαζόμασταν μια βάση δεδομένων παγκοσμίου επιπέδου, η οποία όχι μόνο να διαθέτει τα σωστά χαρακτηριστικά, αλλά να μπορεί να λειτουργεί καλά στην κλίμακα που χρειαζόμαστε. Παρόλο που υπάρχουν πολλές διαθέσιμες βάσεις δεδομένων ανοιχτού κώδικα, η PostgreSQL ήταν η προφανής επιλογή,"</i> αναφέρει ο Tom Hughes, διαχειριστής συστήματος του OpenStreetMap.</p>


<h2>Εκτενέστερη ανάλυση της Έκδοσης</h2>

<a name="additional_features"></a><h2>Λίστα Χαρακτηριστικών</h2>
<p>
Η Έκδοση 8.4 διαθέτει περισσότερα νέα χαρακτηριστικά από ποτέ. Δημιουργήσαμε επιπλέον σελίδες για να τα αναφέρουμε:
</p>
<ul>
<li><a href="/about/press/features84">Πλήρης λίστα χαρακτηριστικών (μόνο στα Αγγλικά)</a></li>
<li><a href="/about/featurematrix">Πίνακας χαρακτηριστικών (μόνο στα Αγγλικά)</a></li>
<li><a href="/docs/8.4/static/release-8-4.html">Release Notes</a></li>
</ul>
<a name="download"></a><h2>Downloads</h2>
<ul>
<li><a href="/download">Downloads page</a>, με συνδέσμους προς προγράμματα εγκατάστασης και εργαλεία.</li>
<li><a href="/ftp/source/v8.4.0">Πηγαίος Κώδικας</a></li>
<li><a href="/download/windows">Προγράμματα εγκατάστασης για Windows</a></li>
<li><a href="/download/linux">Προγράμματα εγκατάστασης για Linux</a> και αποθετήρια πακέτων</li>
<li><a href="/download/solaris">Πακέτα Solaris</a></li>
<li><a href="/download/macosx">Προγράμματα εγκατάστασης για Mac OSX</a></li>
<li><a href="/download/freebsd">Πακέτα FreeBSD</a></li>
<li><a href="http://pgfoundry.org/projects/pg-migrator/">pg_migrator Project</a></li>
<li><a href="http://www.pgfoundry.org">Προαιρετικά Εξαρτήματα και Πρόσθετα</a></li>
<li><a href="http://www.postgresql.org/download/product-categories">Σχετικό και Εμπορικό Λογισμικό</a></li>
</ul>

<a name="docs"></a><h2>Τεκμηρίωση</h2>

<p>Μαζί με την PostgreSQL εγκαθίσταται και τεκμηρίωση HTML, καθώς και σελίδες man, αλλά παρέχεται και η δυνατότητα περιήγησης, αναζήτησης και σχολιασμού στην εκτεταμένη μας, διαδραστική <a href="/docs/8.4/interactive">online τεκμηρίωση</a>.</p>

<a name="license"></a><h2>Άδεια χρήσης</h2>
<p>
Η PostgreSQL χρησιμοποιεί την <a href="/about/licence">άδεια χρήσης BSD</a>, η οποία προϋποθέτει μόνο τη διατήρηση των στοιχείων πνευματικών δεδομένων και άδειας χρήσης του πηγαίου κώδικα που αφορά. Αυτή η <a href="http://www.opensource.org/licenses/bsd-license.php">πιστοποιημένη με OSI άδεια χρήσης</a> αξιολογείται ευρέως ως ευέλικτη και φιλική προς τις επιχειρήσεις, καθώς δεν περιορίζει τη χρήση της PostgreSQL με εμπορικές και αποκλειστικές εφαρμογές. Μαζί με την υποστήριξη πολλών εταιριών και τη δημόσια ιδιοκτησία του κώδικα, η άδεια χρήσης BSD καθιστά την PostgreSQL πολύ δημοφιλή και οι προμηθευτές θέλουν να ενσωματώσουν μια βάση δεδομένων στο δικό τους προϊόν χωρίς να φοβούνται τις χρεώσεις, τον αποκλεισμό προμηθευτών ή τις αλλαγές στους όρους της Άδειας χρήσης.
</p>

<a name="contact"></a><h2>Επικοινωνία</h2>

<p><a href="http://www.postgresql.org">Αρχική σελίδα PostgreSQL</a></p>




<p>Πληροφορίες:<br />
Κωστας Μαϊστρέλης<br />
Τοπικός εκπρόσωπος επικοινωνίας της PostgreSQL<br />
Κινητό: +306946071060<br />
<a href="mailto:el@postgresql.org">el@postgresql.org</a></p>


<p>Για επικοινωνία σε άλλες περιοχές, δείτε <a href="/about/press/contact">τη λίστα μας με τις διεθνείς επαφές.</a></p>


<a name="quoted_companies"></a><h2>Ρήσεις και Εταιρικά Στοιχεία</h2>

<p><i>"Χρησιμοποιούμε την PostgreSQL εδώ και επτά χρόνια, και πραγματικά ανυπομονούμε να δούμε πολλά από τα χαρακτηριστικά της 8.4, ιδιαίτερα τα δικαιώματα σε επίπεδο στήλης, τις τοπικές ρυθμίσεις (locale) ανά βάση δεδομένων,  partial matches για GIN indexes και user defined exceptions"</i> λέει ο Jeffrey Webster, CTO της ZooLoo.com. <i>"Η PostgreSQL μας έχει δώσει τη δυνατότητα να αναπτυχθούμε χωρίς να θυσιάσουμε την ακεραιότητα των δεδομένων."</i>
<br />
Επικοινωνία: <a href="mailto:melissa@zooloo.com">Melissa</a> ή επισκεφθείτε τη σελίδα <a href="http://www.zooloo.com/">ZooLoo.com</a></p>



<p><i>"Η PostgreSQL συνεχίζει να βελτιώνει την απόδοση σε κάθε σημαντική έκδοση,"</i> 
είπε ο Kevin Grittner, Διαχειριστής Βάσεων Δεδομένων, Consolidated Court Automation Programs, Wisconsin Court System. 
<i>"Στην Έκδοση 8.4 έχουν προστεθεί αρκετές βελτιστοποιήσεις, όπως semi-joins και anti-joins, που προσφέρουν εξαιρετική βελτίωση στο χρόνο εκτέλεσης κάποιων από τα πιο απαιτητικά μας query."</i><br />
Επικοινωνία: <a href="mailto:Kevin.Grittner@wicourts.gov">Kevin Grittner</a> ή επισκεφθείτε τη σελίδα <a href="http://www.wicourts.gov/">Wisconsin Court System</a> </p>

<p><i>"Αυτές οι δομές ερωτημάτων βελτιώνουν την εκφραστικότητα της διαλέκτου PostgreSQL της SQL ουσιωδώς, επιτρέποντας στους χρήστες να διατυπώνουν ενδιαφέρουσες ερωτήσεις στο πλαίσιο ενός μόνο query, κάτι που πριν δεν ήταν δυνατό να γίνει,"</i> εξηγεί ο Sailesh Krishnamurthy, Ιδρυτής και VP Techology της Truviso.<br />
Επικοινωνία: <a href="mailto:info@truviso.com">Info e-mail</a> ή επισκεφθείτε τη σελίδα <a href="http://www.truviso.com">Truviso</a>.</p>



<p><i>"Όταν σχεδιάζαμε τη νέα έκδοση του OpenStreetMap API, έγινε σαφές ότι χρειαζόμασταν μια βάση δεδομένων παγκοσμίου επιπέδου, η οποία όχι μόνο να διαθέτει τα σωστά χαρακτηριστικά, αλλά και να μπορεί να λειτουργεί καλά στην κλίμακα που χρειαζόμαστε.
Η PostgreSQL μάς επιτρέπει να διατηρουμε τη συνοχή της βάσης δεδομένων χρησιμοποιώντας oreign keys και transactional updates   παρέχοντας παράλληλα στους διαχειριστές συστημάτων μας τα εργαλεία που χρειάζονται για να εργαστούν με τη μεγεθους 850Gb βάση δεδομένων μας, επιτυγχάνοντας continuing development στη δομη των πινάκων μας και των λειτουργικών μας διαστάσεων όπως είναι η συνεχής λήψη στιγμιοτύπων της βάσης δεδομένων. Παρόλο που υπάρχουν πολλές διαθέσιμες βάσεις δεδομένων ανοιχτού κώδικα, η PostgreSQL ήταν η προφανής επιλογή,"</i>
είπε ο Tom Hughes, διαχειριστής συστήματος του OpenStreetMap.<br />
Επικοινωνία: <a href="mailto:webmaster@openstreetmap.org">Tom Hughes</a> ή επισκεφθείτε τη σελίδα <a href="http://www.openstreetmap.org">OpenStreetMap</a>.</p>

<a name="companies"></a><h2>Εταιρική Υποστήριξη</h2>

<p>Η PostgreSQL απολαμβάνει την υποστήριξη πολλών εταιριών, οι οποίες επιχορηγούν τους προγραμματιστές, προσφέρουν πόρους φιλοξενίας και παρέχουν οικονομική υποστήριξη. Οι μεγαλύτεροι και μακροβιότεροι χορηγοί μας καταγράφονται στη <a href="/about/sponsors">σελίδα χορηγών ανάπτυξης.</a></p>

<p>Υπάρχει επίσης μια μεγάλη κοινότητα <a href="/support/professional_support">εταιριών που προσφέρουν Υποστήριξη στην PostgreSQL</a>, από μεμονωμένους συμβούλους μέχρι πολυεθνικές εταιρίες.</p>

<p><a href="/about/donate">Δωρεές</a> γίνονται ευχαρίστως δεκτές.</p>

<a name="Translations"></a><h2>Επίσημες Μεταφράσεις αυτού του Δελτίου Τύπου</h2>

<p>Επίσημες μεταφράσεις αυτού του εγγράφου υπάρχουν στην <a href="/about/press">ιστοσελίδα postgresql.org.</a></p>


