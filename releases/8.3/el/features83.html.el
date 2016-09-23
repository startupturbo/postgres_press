<!-- BEGIN page_title_block --> 
PostgreSQL 8.3 Feature List 
<!-- END page_title_block --> 

<h1>PostgreSQL 8.3 Λίστα Χαρακτηριστικών</h1> 

<p> 
Η Λίστα που ακολουθεί καλύπτει τα περισσότερα, αλλά όχι όλα, τα νέα χαρακτηριστικά που περιλαμβανονται στην έκδοση 8.3.  
καθώς προκειται για ένα μεγάλο αριθμό χαρακτηριστικών, οπότε τα ομαδοποιησαμε και τα περιγράψαμε συνοπτικά. 
Για περισσότερες πληροφορίες κοιτάξτε το  PostgreSQL documentation και τα release notes. 

Για μια ακόμα πιο περιεκτική μορφή, κοιτάξτε <a href="/about/featurematrix">feature matrix</a> (Αγγλικά μόνο).</p> 


<h2>Προειδοποίηση για Αναβάθμιση</h2> 


<p>Με σκοπό να κρατήσουμε τα πολύ υψηλά standard του PostgreSQL Project όσο αφορά data integrity και reliability, 
στην έκδοση 8.3 έχουμε αφαιρέσει ορισμένες από της μετατροπές τύπων δεδομένων  ("casts"). 
Αυτή η αλλαγή ίσως προκαλέσει προβλήματα σε μερικούς χρήστες που αναβαθμίζουν παλιότερες εφαρμογές οι οποίες έχουν γραφτεί 
χωρίς ιδιαίτερη προσοχή σε θέματα σύγκρισης τύπων δεδομένων, ειδικότερα από εκδόσεις PostgreSQL οι οποίες είναι αρκετα παλιές. 
Χρήστες που αναβαθμίζουν πολύ παλιές εφαρμογές ή υποψιάζονται οτι έχουν κακογραμμένες εφαρμογές ή stored procedures, θα πρέπει να κάνουν επιπλεον ελέγχους πριν 
αναβαθμίσουν τις εγκαταστάσεις παραγωγής. Δείτε τα <a href="/docs/8.3/static/release-8-3.html">release notes</a> για επιπλεον πληροφορίες.</p> 



<h2>Επιδόσεις</h2> 

<h3>Συνέπεια επιδόσεων</h3> 

<p>Αυτά τα χαρακτηριστικά βελτιώνουν την δυνατότητα της PostgreSQL να διατηρεί σταθερά response times ανεξάρτητως φόρτου:</p> 





<dl> 
<dt>HOT</dt> 
<dd>Heap Only Tuple (HOT) Μειώνει δραματικά τις διαδικασίες συντήρησης της βάσης που προκύπτουν απο συχνά update δεδομένων, 
μειώνοντας την ανάγκη για vacuum και βελτιώνοντας το throughput για μερικές εφαρμογές.</dd> 
<dt>Ασύγχρονο Commit</dt> 
<dd>Επιτρέπει την δυνατότητα στην COMMIT να επιστρέφει τον ελέγχο χωρίς να περιμένει για την φυσική εγγραφή στον δίσκο. 
Αυτό δίνει καλύτερο χρόνο απόκρισης με κόστος μιας πιθανής απώλειας ενός συνόλου από transactions στην περίπτωση που έχουμε αποτυχία συστήματος.</dd> 
<dt>Spread Checkpoints</dt> 
<dd>Checkpoint autotuning: καθυστερεί και κατανέμει checkpoints, μειώνοντας τα αποτελέσματα τον checkpoints στην ταχύτητα απόκρισης.</dd> 
<dt>Just-in-time background writing strategy</dt> 
<dd>Αυτορύθμιση για τον  Background Writer που προυπολογιζει (κατά προσέγγιση) πόσα buffers θα προσπαθήσει να εκκενώσει βασισμένο 
σε στατιστικά σχετικά με την πρόσφατη λειτουργία.</dd> 
</dl> 


<h3>Βελτιώσεις στην ταχύτητα</h3> 

<p>πολλές νέες δυνατότητες βελτιώνουν σημαντικά την ταχύτητα συγκεκριμένων διαδικασιών, συμπεριλαμβανομένων:</p> 




<dl> 
<dt>Improved Recovery Times</dt> 
<dd>Ο όγκος I/O από το Write Ahead Log  κατά το recovery μειώθηκε στο μισό κατόπιν βελτιώσεων. </dd> 
<dt>Circular Buffer in Tuplestore</dt> 
<dd>Δραματική επιτάχυνση σε small merge join αποφεύγοντας την ανάγκη εγγραφής στον δίσκο.</dd> 
 
<dt>Γρηγορότερες LIKE/ILIKE συγκρίσεις</dt> 
<dd>Βελτιωμένη ταχύτητα σε μερικές ταυτοποιησεις (partial matches), κυρίως όταν τα δεδομένα είναι σε κωδικοσελιδα πολλών bytes</dd> 
<dt>Top-N Sorting</dt> 
<dd>Δραματικά γρηγορότερες αναζητησεις με χρήση LIMIT</dd> 
<dt>Lazy XID Assignment</dt> 
<dd>Επιτρέπει στην PostgreSQL να αποφύγει την ανάθεση transaction IDs για μερικά read-only queries, 
με αποτέλεσμα μια αξιοσημείωτη Αυξηση στο  throughput σε read-mostly ή read-only βάσεις 
</dd> 
<dt>Function Costing</dt> 
<dd>επιτρέπει στους χρήστες να ενημερωσουν τον query planner για τα αναμενόμενα κοστη εκτέλεσης functions καθώς και τον αριθμό 
των επιστρεφόμενων γραμμων, με αποτέλεσμα καλύτερα  query plans. 
</dd> 

</dl> 





<h3>Μεγάλες βάσεις δεδομένων</h3> 

<p>Μερικές νέες βελτιώσεις επιτρέπουν πλέον στους χρήστες να τρέχουν ακόμα μεγαλύτερες βάσεις δεδομένων στην PostgreSQL:</p> 
 
<dl> 
<dt>Synchronized Scans (Σύγχρονες σαρώσεις)</dt> 
<dd>Επιτρέπουν "piggybacking" σαρώσεις μεγάλων σε μέγεθος πινάκων απο πολλαπλούς χρήστες, μειώνοντας έτσι δραματικά το συνολικό μέγεθος I/O που απαιτείτε.</dd> 

<dt>L2 Cache Scan Protection (L2 Προστασία προσωρινά αποθηκευμένων σαρώσεων)</dt> 
<dd>Νέες βελτιώσεις στον κώδικα αποτρέπουν την ανούσια χρήση της CPU απο τις προσωρινά αποθηκευμένες σαρώσεις οι οποίες επιβραδύνουν τα ταυτόχρονα ερωτήματα(queries).</dd> 
 
<dt>Varlena Header Size Reduction ("Var-Varlena")</dt> 

<dd>Shrinks header sizes for most variable size fields.  Can shrink overall database size up to 20%.</dd> 
</dl> 

<h3>Απόδοση στα Windows</h3> 
<p>Οχι, δεν ξεχάσαμε τους χρήστες των Windows. Η έκδοση 8.3 επιτρέπει πλέον στα Windows να γίνουν μια πρώτης τάξεως πλατφόρμα για να τρέχει η PostgreSQL:</p> 
<dl> 
<dt>Υποστήριξη MS Visual C++</dt> 
<dd>Επιτρέπει τον πηγαίο κώδικα της PostgreSQL να μεταγλωττιστεί(compile) χρησιμοποιώντας τον μεταγλωττιστή της Microsoft C++, αντί για το MinGW toolset το οποίο είναι τρίτου κατασκευαστή. Αυτό βελτιώνει την σταθερότητα καθώς και την απόδοση στις πλατφόρμες της Microsoft.</dd> 
<dt>Επανασχεδίαση του κώδικα εκκίνησης στο παρασκήνιο</dt> 
<dd>Μειώθηκε δραστικά η απαιτούμενη χρήση μνήμης απο την διεργασία του postmaster, επιτρέποντας έτσι να τρέχουν στο παρασκήνιο ακόμα περισσότερες διεργασίες στα Windows.</dd> 
</dl> 

<h2>Διαχείριση (Administration)</h2> 
<p>Παρότι η  PostgreSQL ήδη έχει υποσκελίσει κλειστες (proprietary) βάσεις σε θέματα ευκολίας διαχείρισης, υπάρχει πάντα χώρος για βελτιώσεις. 
Προσθέσαμε αρκετά νέα χαρακτηριστικά στην έκδοση 8.3 για να διευκολύνουμε την διαχείριση της βάσης και να δώσουμε περισσότερη πληροφορία στους Διαχειριστές:</p> 

<dl> 
<dt>CSV Log Output</dt> 
<dd>Logs σε αρχεία που δυναται να φορτωθούν στην βάση, προσφεροντας την δυνατότητα για εύκολη δημιουργία ad-hoc εργαλείων ελεγχου και ανάλυσης επιδόσεων.</dd> 

<dt>Υποστήριξη SSPI και GSSAPI</dt> 
<dd>Η μέθοδος εντατικοποιημένους Kerberos της PostgreSQL πλέον υποστηριζει τα βιομηχανικα-στανταρ APIs: SSPI σε Windows και GSSAPI σε Unix και Linux 
διευκολύνοντας την ενσωμάτωση σε μεγάλα εταιρικα δικτυα. </dd> 

<dt>Per Function GUC Settings (Παραμετροποίηση GUC ανα συναρτηση)</dt> 
<dd>επιτρέπει σε συναρτήσεις να έχουν παραμέτρους GUC ενσωματωμενες κατα την δημιουργία. 
Allows for functions to have GUC settings embedded at function creation time. 
ιδιαιτερα χρησιμο σε περιπτώσεις όπως ο ορισμός του search path  σε μια συναρτηση κατα την δημιουργία.</dd> 


<dt>Multiple Autovacuum Workers</dt> 
<dd>Δίνει την δυνατοτητα για παραλληλισμο του PostgreSQL maintenance daemon μεσω config αρχειων, κανοντας το autovacuum εφικτο σε εφαρμογες με εκατονταδεσ πινακες</dd> 

<dt>pg_standby</dt> 
<dd>ένα εργαλείο διαχείρισης που κάνει την παραμετροποίηση  Warm Standby servers πολύ πιο εύκολη.</dd> 

<dt>ORDER BY Nulls First/Last</dt> 
<dd>Επιτρέπει την δημιουργία index που τα NULL θα εμφανιζονται ειτε στην αρχη ειτε στο τελος της ταξινομισης</dd> 

<h2>Developers</h2> 

<h3>Ανάπτυξη εφαρμογων</h3> 

<p>Πολλες βελτιώσεις βοηθούν την PostgreSQL να προσεγγισει τις κορυφαιες κλειστες (proprietary) βάσεις σε υποστήριξη 
πολύπλοκων, πολλων επίπεδων εφαρμογών, συμπεριλαμβανομένων :</p> 

<dl> 
<dt>Full Text Search</dt> 
<dd>Το TSearch2, το εργαλείο μας για αναζήτηση μέσα σε κείμενο (full text search), συμπεριλήφθηκε μέσα στον κώδικα της βάσης και επιπλεον 
έχει ενα καθαρότερο API. Αυτό κάνει το TSearch2 ευκολότερο στην χρήση και την επέκταση σε νέες γλώσσες, λεξικά, και weighting systems (συστήματα απόδοσης βάρους).</dd> 


<dt>Plan Invalidation</dt> 
<dd>Επιτρέπει την αποσυρση κασαρισμενων πλανων (plans) με χρηση κλισης απο εφαρμογη και αυτοματη καταστροφη πλανων οταν οι πινακες γινουν update.</dd> 

<dt>Updatable Cursors</dt> 
<dd>οι Cursors πλεον υποστηριζουν WHERE CURRENT OF, κανοντας της βασισμένες σε cursor εφαρμογές πιο ευέλικτες.</dd> 
</dl> 

<h3>Νέοι τύποι δεδομένων (Data Types)</h3> 

<dl> 
<dt>Υποστήριξη XML</dt> 
<dd> 
Ο νέος τύπος XML υποστηριζει το specification ANSI SQL:2003, SQL/XML, 
συμπεριλαμβανομενων ελεγχων  well-formedness,type-safe operations SQL/XML publishing και XPath queries. 
η έκδοση 8.3 επιπλεον περιλαμβάνει επιπλεον συναρτησεις για εξαγωγη δεδομενων XML.</dd> 



<dt>UUID</dt> 
<dd>Αυτός ο νέος 128 bit τύπος είναι συμβατός με τους πιο διαδεδομένους GUID και UUID αλγορίθμους, υποστηρίζοντας κατανεμημένη (distributed) σχεδίαση εφαρμογών.</dd> 

<dt>Arrays of Compound Types</dt> 
<dd>Τα Arrays (δομή δεδομενων πίνακα) πλεον μπορούν να δημιουργούνε με χρηση compound types (τύποι που επιστρέφουν πολλες στήλες (columns) σε ενα τύπο, όπως ενα 
table type ή custom type ).</dd> 

<dt>ENUM</dt> 
<dd>Η PostgreSQL τώρα υποστηριζει στήλες (columns) ENUM με μια ορισμένης σειράς λίστα απο εναλλακτικες. 
Αυτό επιτρέπει την ευκολότερη μεταφορά εφαρμογων απο   MySQL σε PostgreSQL.</dd> 
</dl> 

<h3>Stored Procedures</h3> 

<p>Δυο νέα χαρακτηριστικα επεκτεινουν τις δυνατοτητες της PL/pgSQL, την πιο δημοφιλη γλωσσα για tored procedure της PostgreSQL: </p> 


<dl> 
<dt>Table Function Support</dt> 
<dd>Η PL/pgSQL, πλεον υποστηριζει μια απλοποιημένη σύνταξη για συναρτησεις που επιστρέφουν rows.</dd> 

<dt>Scrollable Cursors in PL/pgSQL</dt> 
<dd>H PL/pgSQL πλεον υποστηρίζει scrollable cursors, επιτρέποντας σε PL/pgSQL procedures  να εκτελούν πολυπλοκoυς χειρiσμους σε rows.</dd> 
</dl> 

<h2>Accessories</h2> 

<p> 
Πολλα σημαντικα εργαλεια δεν διανεμονται μαζι με την PostgreSQL με σκοπο να διατηρηθει η κεντρικη διανομη μικρη και ευκολα συντηρησιμη. 
αυτά τα εργαλεία είναι μέρος απο μια συλλογή απο αρκετές εκατοντάδες components τα οποία υποστηριζουν replication, high availability, language interfaces, 
application integration και πειραματικές τεχνολογίες αιχμής,  τα περισσότερα είναι διαθέσιμα απο το <a href="http://www.pgfoundry.org">pgFoundry</a>.  
Τα ακόλουθα εργαλεία της PostgreSQL έχουν εκδοθεί για την version 8.3, η έχουν ωριμάσει κατά την διάρκεια της αναπτυξης της 8.3, 
συμπεριλαμβανόμενων μερικών συστημάτων για replication, που έχουν τροποποιηθεί ώστε να χρησιμοποιούν τα νέα replication hooks του 8.3 backend:</p> 




<dl> 
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PgBouncer">pgBouncer</a></dt> 
<dd>This multi-threaded connection pooler allows a single PostgreSQL database server to support up to 100,000 application server connections.</dd> 
<dt><a href="https://developer.skype.com/SkypeGarage/DbProjects/PlProxy">PL/Proxy</a></dt> 
<dd>A distributed, horizontally scaled table interface for PostgreSQL.</dd> 
<dt><a href="http://pgsnmpd.projects.postgresql.org/">pgSNMP</a></dt> 
<dd>A standards-compliant SNMP interface for PostgreSQL, simplifying integration with large server monitoring networks.</dd> 
<dt><a href="http://code.google.com/p/sepgsql/downloads/list">SEpgsql</a></dt> 
<dd>A security extension based on SELinux model and policy which allows applying a unified SELinux policy to both the OS and DBMS.</dd> 
<dt><a href="http://pgfoundry.org/projects/edb-debugger/">PL/pgSQL Debugger</a></dt> 
<dd>A new graphical interface which supports interactive debugging and step-through execution of PL/pgSQL procedures.</dd> 
<dt><a href="http://pgfoundry.org/projects/pgpool/">pgPool-II</a></dt> 
<dd>Building on the success of pgPool, the new replicated query agent for PostgreSQL adds data partitioning.</dd> 
<dt><a href="http://bucardo.org/">Bucardo</a></dt> 
<dd>PostgreSQL's first multi-master asynchronous replication system is now available.</dd> 
<dt><a href="http://www.postgresql.at/english/pr_cybercluster_e.html">CyberCluster</a></dt> 
<dd>This newly open-sourced project integrates and improves several existing PostgreSQL clustering tools, such as pgCluster and pgPool. </dd> 
<dt><a href="http://www.slony.info/">Slony-I</a></dt> 
<dd>Version 2.0 of Slony-I, our most popular replication system, now uses the new replication hooks in PostgreSQL 8.3.</dd> 
</dl> 
