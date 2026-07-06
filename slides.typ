#import "lib.typ": *
#import "chapters/skel.typ": *

#let is-handout = to-bool(sys.inputs.at("handout", default: "false"))
#let is-notes = to-bool(sys.inputs.at("notes", default: "false"))
#show: slides-fmt.with(handout: is-handout, notes: is-notes)

#let diagram = touying-reducer.with(
  reduce: fletcher.diagram,
  cover: fletcher.hide,
)

== Κατηγορίες ρύπων

#align(center + horizon, diagram(
	node-inset: 15pt,

	blob((0,0), [Ρύποι από οχήματα], tint: orange, name: <main>),
	blob((-1,1), [Εξάτμιση], tint: yellow),
	edge(auto, <main>),
	blob((1,1), [Λοιπά], tint: yellow, name: <rest>),
	edge(auto, <main>),
	blob((0,2), [Ελαστικά], tint: teal),
	edge(auto, <rest>),
	blob((2,2), [Φρένα], tint: yellow),
	edge(auto, <rest>),
))

#speaker-note[
	Οι ρύποι που προέρχονται από τα οχήματα δεν είναι μόνο από την εξάτμιση. Άλλωστε, με την άνοδο των ηλεκτρικών οχημάτων, το ζήτημα των ρύπων από εξάτμιση έχει ήδη τεθεί προς λύση. Ωστόσο, όλα τα οχήματα του δρόμου χρησιμοποιούν ελαστικά και φρένα, τα οποία όλο και ένα καταλαμβάνουν μεγαλύτερο ποσοστό ρύπανσης στις μέρες μας. Εμείς ασχοληθήκαμε με τους ρύπους που προέρχονται από τα ελαστικά των οχημάτων.
]

== Κατηγορίες ουσιών

#let pyramid = diagram(
	spacing: 0pt,

	blob((0,0), [TRECs], tint: teal, shape: triangle.with(angle: 80deg, fit: 0.8), height: 4em),
	blob((0,1), [TWCs], tint: yellow, shape: trapezium.with(angle: 60deg), width: 10.35em, height: 3em),
	blob((0,2), [TWPs], tint: orange, shape: trapezium.with(angle: 60deg), width: 15.55em, height: 3em),
	edge((1,1), (1, -1), "-|>", mark-scale: 100%, stroke: 3pt, label: [Επικινδυνότητα], label-angle: right),
	edge((-1,-1), (-1, 1), "-|>", mark-scale: 100%, stroke: 3pt, label: [Μάζα], label-angle: left),
)

#align(center + horizon, pyramid)

#speaker-note[
	Υπάρχουν μερικές κατηγορίες των ουσιών που προέρχονται από την φθορά των ελαστικών.
	Τα TWPs (Tire Wear Particles) είναι τα σωματίδια από την φθορά, τα οποία περιέχουν τα TWCs (Tire Wear Chemicals), που είναι διάφορες χημικές ενώσεις. Από τα TWCs, τα TRECs (Tire Related Emerging Contaminants) είναι οι ενώσεις που θεωρούνται επικίνδυνοι ρύποι και επηρεάζουν τον άνθρωπο και τα οικοσυστήματα.
]

== Συντακτικοί τύποι TRECs

#align(center + horizon, grid(
	columns: (auto, 1fr),
	align: (center + horizon, left + horizon),
	column-gutter: 2em,
	row-gutter: 1em,
	C_6PPD-Q(),S_6PPD-Q,
	C_BTR(),S_BTR,
))

#speaker-note[
	Εδώ βλέπουμε τους συντακτικούς τύπους από τις δύο πιο απλές ενώσεις TRECs, τις οποίες μελετήσαμε, την #C_6PPD-Q() και την #C_BTR().
]

== Συντακτικοί τύποι TRECs (συνέχεια)

#align(center + horizon, scale(50%, reflow: true, grid(
	align: center + horizon,
	columns: 4,
	column-gutter: 45pt,
	row-gutter: 30pt,
	S_1OH-BTR,
	S_4OH-BTR,
	S_TBHB,
	S_6PPD,
	S_4TTR,
	S_5TTR,
	S_56Me-1H-BTR,
	S_CPPD-Q,
	S_5Cl-BTR,
	S_5ABTR,
	S_BTR-COOH,
	S_DPPD-Q
)))

#speaker-note[
	Και εδώ βλέπουμε τους συντακτικούς τύπους των υπόλοιπων ενώσεων που μελετήσαμε στα πλαίσια της εργασίας αυτής, συνολικά ασχοληθήκαμε με 14 ενώσεις. Οι ενώσεις αυτές είναι παρόμοιες με τις προηγούμενες δύο, απλά έχουν διαφορετικές λειτουργικές ομάδες.
]

== Πηγές και Καταβόθρες

#align(center + horizon, image("assets/environment.jpg", height: 85%))

#speaker-note(setting: x => text(22pt, x))[
	Αυτό το σχήμα απεικονίζει τον κύκλο ζωής των TWPs και των TRECs. Πολύ σημαντικό είναι να διακρίνουμε εδώ ανάμεσα στην φυσική μετακίνηση των TWPs και την χημική συμπεριφορά των TRECs. Ενώ πάνω από το 90% αυτών των σωματιδων είναι μη-πτητικές, οι χημικές ενώσεις εντός αυτών των σωματιδων έχουν διαφορετική συμπεριφορά, καθώς παρουσιάζουν υψηλή διαλυτότητα και μπορούν να διαρρεύσουν γρήγορα στα υπόγεια ύδατα και στις επιφανειακές απορροές. Όπως παρατηρούμε εδώ, ενώ οι μονάδες επεξεργασίας αποχετεύσεων είναι σχετικά αποτελεσματικές στην δέσμευση των μεγαλύτερων σωματιδων, συχνά αδυνατούν να συγκρατήσουν τα μικρότερα σωματίδια ή τις διαλυμένες χημικές ενώσεις. Αυτό οδηγεί στην εισαγωγή αυτών των ουσιών στα υδάτινα οικοσυστήματα. Επιπλέον, παρόλο που μόνο το 10% των TWPs εισέρχεται στην ατμόσφαιρα, ορισμένα από τα TRECs είναι ημιπτητικά, οπότε δεν πρόκειται μόνο για ένα ζήτημα "δρόμου", αλλά για μια πολυδιάστατη περιβαλλοντική πρόκληση που επηρεάζει την ατμόσφαιρα, το έδαφος και τα ύδατα.
]

== Επιπτώσεις των TWPs και των TRECs

#align(center + horizon, diagram(
	node-inset: 15pt,

	blob((-1,0), [TWPs], tint: orange, name: <twps>),
	edge(),
	blob((1,0), [TRECs], tint: yellow, name: <trecs>),
	blob((-1,1), [Μικροπλαστικά], tint: yellow),
	edge(auto, <twps>),
	edge(),
	blob((-1,2), [Τοξικότητα για\ τον άνθρωπο], tint: teal),
	edge(auto, <trecs>),
	blob((1,2), [Οικοτοξικότητα], tint: teal),
	edge(auto, <twps>),
	edge(auto, <trecs>),
))

#speaker-note[
	Τα TWPs μπορούν ως ένα βαθμό να θεωρηθούν και μικροπλαστικά, καθώς έχουν πολλά κοινά χαρακτηριστικά μεταξύ τους, όπως ότι είναι και τα δύο ενώσεις μεγάλου μοριακού βάρους που προέρχονται από πολυμερή. Έτσι, η τοξικότητα των TWPs είναι παρόμοια με αυτή των μικροπλαστικών, και χρησιμοποιήθηκε για την αξιολόγηση της τοξικότητας για τον άνθρωπο, καθώς τα TRECs δεν έχουν επαρκή δεδομένα για τις περισσότερες επιπτώσεις στον ανθρώπινο οργανισμό. Η βιβλιογραφία έχει αποδείξει αρκετές φορές την οικοτοξικότητα των TWPs και των TRECs, ειδικά όσον αφορά τα ψάρια.
]

== Τρόποι εισχώρησης και κατανομής μικροπλαστικών

#let toxic1 = diagram(
	node-inset: 15pt,
	
  blob((0,0), [Μικροπλαστικά], tint: yellow, name: <micro>),
  blob((-1,1), [Εισπνοή], tint: teal),
  edge(auto, <micro>),
  edge(<blood>),
  blob((0,1), [Κατάποση], tint: teal),
  edge(auto, <micro>),
  edge(<blood>),
  blob((1,1), [Δερματική\ επαφή], tint: teal),
  edge(auto, <micro>),
  edge(<blood>),
  blob((0, 2), [Κυκλοφορία\ στο αίμα], tint: red, name: <blood>),
)

#speaker-note[
	Τα μικροπλαστικά εισέρχονται στον ανθρώπινο οργανισμό με διάφορους τρόπους, με την εισπνοή, με την κατάποση και με την δερματική επαφή. Από όλους τους τρόπους, τα μικροπλαστικά τελικά καταλήγουν στην κυκλοφορία του αίματος, όπου καταφέρνουν να φτάσουν σε όλο το σώμα. Τα μικροπλαστικά αυτά προκαλούν διάφορες διαταραχές στον ανθρώπινο οργανισμό.
]

#align(center + horizon, toxic1)

== Επιπτώσεις των μικροπλαστικών στον άνθρωπο
#slide(self => {
	let (uncover, only, alternatives-cases) = utils.methods(self)

	let toxic2(subslide) = diagram(
		node-inset: 15pt,
		spacing: 4pt,
		cell-size: (16mm, 20mm),

		blob((0,0), [Μικροπλαστικά\ στον Ανθρώπινο\ Οργανισμό], tint: orange, name: <human>, shape: circle),
		blob((-1,1.5), [Ανοσοβιολογικό\ σύστημα], tint: if subslide == 1 { teal } else { yellow }),
		edge(auto, <human>),
		blob((-1.25,0), [Νευρικό\ σύστημα], tint: if subslide == 2 { teal } else if subslide < 2 { orange } else { yellow }),
		edge(auto, <human>),
		blob((-1,-1.5), [Αναπνευστικό\ σύστημα], tint: if subslide == 3 { teal } else if subslide < 3 { orange } else { yellow }),
		edge(auto, <human>),
		blob((0,-2.25), [Γαστρεντερικό\ σύστημα], tint: if subslide == 4 { teal } else if subslide < 4 { orange } else { yellow }),
		edge(auto, <human>),
		blob((1,-1.5), [Καρδιαγγειακό\ σύστημα], tint: if subslide == 5 { teal } else if subslide < 5 { orange } else { yellow }),
		edge(auto, <human>),
		blob((1.25,0), [Ενδοκρινικό\ σύστημα], tint: if subslide == 6 { teal } else if subslide < 6 { orange } else { yellow }),
		edge(auto, <human>),
		blob((1,1.5), [Αναπαραγωγικό\ σύστημα], tint: if subslide == 7 { teal } else if subslide < 7 { orange } else { yellow }),
		edge(auto, <human>),
		node((0,0)),
	)

	let speakernotes = (
		[Στο ανοσοβιολογικό σύστημα παρατηρείται ανισορροπία ανοσοποιητικής ομοιόστασης και εξασθενημένη ανοσολογική απόκριση.],
		[Στο νευρικό σύστημα προκαλείται νευρολογική βλάβη, ενώ φαίνεται να επηρεάζει τη μάθηση.],
		[Στο αναπνευστικό σύστημα παρουσιάζεται μειωμένη πνευμονική λειτουργία, φλεγμονή και ίνωση.],
		[Στο γαστρεντερικό σύστημα παρατηρείται εντερική δυσβίωση, εντερική διαταραχή και μεταβολική διαταραχή.],
		[Στο καρδιαγγειακό σύστημα προκαλείται τραυματισμός, δυσλειτουργία και διαταραχή πήξης.],
		[Στο ενδοκρινικό σύστημα παρουσιάζεται ενδοκρινική διαταραχή και τοξικότητα ανάπτυξης.],
		[Στο αναπαραγωγικό σύστημα εμφανίζονται δομικές και λειτουργικές ανωμαλίες που επηρεάζουν τους απογόνους.],
	)

	let cases = if is-handout { 8 } else { 7 }
	alternatives-cases(
		range(cases + 1),
		case => {
			align(center + horizon, toxic2(case))
			for i in range(cases + 1) {
				speaker-note(subslide: i, speakernotes.at(i - 1))
			}
			for i in range(cases - 1) {
				pause
			}
		}
	)
})

== Επιπτώσεις #C_6PPD() στον άνθρωπο

#align(center + horizon, diagram(
	node-inset: 15pt,

	blob((0,0), [#C_6PPD-Q() στον\ Άνρθωπο], tint: orange, name: <6ppd>),
	blob((-1,1), [Μεταβολικές\ Διαταραχές], tint: yellow),
	edge(auto, <6ppd>),
	blob((0,1), [Υπατικές\ Επιβαρύνσεις], tint: yellow),
	edge(auto, <6ppd>),
	blob((1,1), [Καρκίνος\ Παχέος Εντέρου], tint: yellow),
	edge(auto, <6ppd>),
))

#speaker-note[
	Η #C_6PPD-Q() προκαλεί μεταβολικές διαταραχές, αυξημένο κίνδυνο ηπατικών επιβαρύνσεων και πιθανές συσχετίσεις με νοσήματα όπως ο καρκίνος του παχέος εντέρου.
]

== Επιπτώσεις TWPs και TRECs στα οικοσυστήματα

#align(center + horizon, diagram(
	node-inset: 15pt,

	blob((-0.5,0), [TWPs], tint: orange, name: <twps>),
	edge(),
	blob((1,0), [TRECs], tint: orange, name: <trecs>),

	blob((-1,1), [Βιοσυσσώρευση], tint: yellow),
	edge(auto, <twps>),
	blob((0,1), [Αναστολή\ Ανάπτυξης], tint: yellow),
	edge(auto, <twps>),

	blob((1,1), [Χημική\ Επίδραση], tint: yellow),
	edge(auto, <trecs>),
))

#speaker-note[
Τα TWPs προκαλούν κυρίως φυσικές επιδράσεις. Τα TWPs αλληλεπιδρούν με άλλους ρύπους και οδηγούν στην βιοσυσσώρευση, ενώ έχει αποδειχθεί ότι προκαλούν διαταραχές στην ανάπτυξη. Τα TRECs εμφανίζουν κυρίως χημική τοξικότητα και επηρεάζουν πιο άμεσα τους οργανισμούς.
]

== Επιπτώσεις #C_6PPD() στα ψάρια

#align(center + horizon, diagram(
	node-inset: 15pt,
	spacing: (110pt, 85pt),

	blob((0,0), [#C_6PPD()\ στα Ψάρια], tint: orange, name: <6ppd>),

	blob((-1.2,1), [Μαζικοί\ Θάνατοι], tint: yellow),
	edge(auto, <6ppd>),
	blob((-0.4,1), [Νευροτοξικές\ Επιδράσεις], tint: yellow),
	edge(auto, <6ppd>),
	blob((0.4,1), [Καρδιοτοξικές\ Επιδράσεις], tint: yellow),
	edge(auto, <6ppd>),
	blob((1.2,1), [Συμπεριφορικές\ Διαταραχές], tint: yellow),
	edge(auto, <6ppd>),
))

#speaker-note[
	Η #C_6PPD-Q() προκαλεί μαζικούς θανάτους ψαριών, ακόμα και σε χαμηλές συγκεντρώσεις, σε ορισμένα σολομοειδή.
	Επίσης παρατηρούνται διάφορες Νευροτοξικές και Καρδιοτοξικές επιδράσεις, αλλά και συμπεριφορικές διαταραχές, οι οποίες οφείλονται σε μηχανισμούς όπως οξειδωτικό στρες, μιτοχονδριακή δυσλειτουργία και νευροφλεγμονώδεις αποκρίσεις.
]

== Οργανολογία

#align(center + horizon, grid(
	columns: (auto, 1fr),
	image("assets/hplc.jpg", height: 85%),
	[
		#HPLC:

		- Ροή: $mLmin(0.200)$

		- Όγκος έγχυσης: $muL(5)$

		- Θερμοκρασία: $45.0 degree C$
	],
))

#speaker-note[
	Για την μέθοδο, χρησιμοποιήθηκε υγρός χρωματογράφος υψηλής απόδοσης με φασματόμετρο μαζών τετραπολικού ανιχνευτή χρόνου πτήσης, ο οποίος είναι κατάλληλος για ενώσεις μεγάλου μοριακού βάρους και προσφέρει υψηλή διακριτική ικανότητα.
	Η ροή του διαλύτη είναι σταθερή στα $0.2 "mL/min"$, ο όγκος έγχυσης στα $5 "μL"$ και η θερμοκρασία σταθερή στους $25 degree C$.
]

== Δειγματοληψία

#align(center + horizon, diagram(
	node-inset: 15pt,
	spacing: 45pt,

	blob((0,0), [Συλλογή σκόνης από δρόμο σε\ περίοδο ξηρασίας ($> mg(100)$)], tint: orange),
	edge(),
	blob((0,1), [Μεταφορά σκόνης δρόμου σε\ τρυβλίο αεροστεγώς κλειστό], tint: yellow),
	edge(),
	blob((0,2), [Αποθήκευση στο ψυγείο ($2 dash.fig #h(0pt) 6 degree C$)], tint: teal),
))

#speaker-note[
	Στα πλαίσια της εργασίας έγινε συλλογή δειγμάτων σκόνης από τον δρόμο σε διάφορες περιοχές της αθήνας. Τουλάχιστον $mg(100)$ σκόνης μεταφέρθηκαν σε αεροστεγώς κλειστό τρυβλίο στο εργαστήριο και αποθηκεύτηκαν στο ψυγείο μέχρι να αναλυθούν.
]

== Χάρτης δειγματοληψίας

#align(center + horizon, image("python/map1.png", height: 85%))

#speaker-note[
	Σε αυτό τον χάρτη φαίνονται τα σημεία που έγινε η δειγματοληψία, σε διάφορες περιοχές από κεντρικές εως προάστια.
]

== FIA

#align(center + horizon, diagram(
	node-inset: 15pt,

	blob((0,0), [$mugmL(5)$ από\ κάθε ένωση], tint: orange),
	edge(),
	blob((1,0), [$ ce("H2O")/ce("CH3CN") = 1/1 $], tint: orange),
	edge(),
	blob((2,0), [Πρώτη φάση:\ εύρος $volt(300)$\ βήμα $volt(100)$], tint: yellow),
	edge(),
	blob((2,1), [Δεύτερη φάση:\ εύρος $volt(100)$\ βήμα $volt(25)$], tint: yellow),
	edge(),
	blob((1,1), [Βέλτιστη τάση\ PPDs: $volt(90)$], tint: teal),
	edge(),
	blob((0,1), [Βέλτιστη τάση\ BTRs: $volt(350)$], tint: teal),
))

#speaker-note[
	Αρχικά, τοποθετήσαμε την κάθε ένωση μόνη της στο ToF σε συγκέντρωση $5 "μg/mL"$ χωρίς να περάσει από τη στήλη. Η κινητή φάση για την έγχυση του δείγματος σε συνεχή ροή είναι νερό ακετονιτρίλιο ένα προς ένα. Αναμένουμε να δούμε το χαρακτηριστικό ιόν σε διάφορες τάσεις. Δοκιμάζουμε σε πρώτη φάση σε εύρος τάσεων από $100" V"$ εως $400" V"$ με βήμα $100" V"$. Μόλις βρούμε την τάση με τις μέγιστες παρατηρήσεις, σε δεύτερη φάση δοκιμάζουμε σε εύρος τάσεων $100" V"$ γύρω από αυτή με βήμα $100" V"$. Έτσι, καταφέρνουμε να προσδιορίσουμε το βέλτιστο ιοντικό δυναμικό για την κάθε ένωση βρίσκοντας την τάση με τις περισσότερες παρατηρήσεις. Η βέλτιστη τάση είναι $90" V"$ για τα PPDs και $350" V"$ για τα BTRs.
]

== Βαθμονόμηση και Όριο Ανίχνευσης

#ztable(
  columns: (auto, 1fr, 1fr),
	inset: 0.4em,
  table.header([Σημείο], [$C_"ένωσης" [ngmL()]$], [$C_"εσωτ." [ngmL()]$]),
  [1],[1],[10],
  [2],[5],[10],
  [3],[10],[10],
  [4],[25],[10],
  [5],[50],[10],
  [6],[100],[10],
)

$ "LOD" = (3.3 times "SD")/"Slope" $

#speaker-note[
	Κατασκευάζονται κατάλληλα διαλύματα των ενώσεων στα 6 σημεία που βλέπουμε. Σε όλα τα σημεία το εσωτερικό πρότυπο, δηλαδή η βενζοφαινόνη-d10, έχει συγκέντρωση $10 "ng/mL"$. Με γραμμική παλινδρόμηση υπολογίζονται οι καμπύλες αναφοράς της κάθε ένωσης.
	Για τον εντοπισμό του ορίου ανίχνευσης εκτελούνται έξι μετρήσεις στο κατώτατο σημείο της καμπύλης βαθμονόμησης. Χρησιμοποιώντας την τυπική απόκλιση των τριών μετρήσεων και την κλίση της καμπύλης αναφοράς, υπολογίζεται το LOD με τον τύπο που απεικονίζεται.
]

== Ανάκτηση

#align(center + horizon, diagram(
	node-inset: 15pt,
	spacing: 30pt,

	blob((0,0), [Μίγμα ενώσεων\ $ngmL(100)$ καθεμία], tint: orange, name: <mix>),
	blob((-1,1), [Low Spike\ #ngmL(5)], tint: yellow),
	edge(auto, <mix>),
	edge(auto, <rep>),
	blob((1,1), [High Spike\ #ngmL(50)], tint: yellow),
	edge(auto, <mix>),
	edge(auto, <rep>),
	blob((0,2), [3 Επαναλήψεις\ $%"R" in [80, 120]$], tint: teal, name: <rep>),
))

#speaker-note[
	Σε κωνική φιάλη με καθαρό φίλτρο, εισέρχεται με ένεση από διακριβωμένη σύριγγα μίγμα όλων των ενώσεων, όπου κάθε ένωση έχει συγκέντρωση $100 "ng/mL"$. Ύστερα, αραιώνουμε σε κατάλληλες συγκεντρώσεις για κάθε spike και ακολουθείται κανονικά η διαδικασία της προκατεργασίας δειγμάτων με τρεις επαναλήψεις. Αποδεκτές τιμές ανάκτησης $80 dash.fig #h(0pt) 120%$.
]

== Προκατεργασία

#slide(self => {
	let (uncover, only, alternatives-cases) = utils.methods(self)

	let prep(subslide) = diagram(
		node-inset: 15pt,
		spacing: (30pt, 45pt),

		blob((0,0), [$~ #h(0pt) mg(100)$\ κοσκινισμένης\ σκόνης], tint: if subslide == 1 { teal } else { yellow }),
		edge(),
		blob((1,0), [Κωνική φιάλη\ $ng(50)$ #C_6PPD-Q-d5()\ $ng(50)$ #C_BTR-d4()], tint: if subslide == 2 { teal } else if subslide < 2 { orange } else { yellow }),
		edge(),
		blob((2,0), [$mL(30)$ Εκχύλιση\ $2 times mL(10) #DCM$\ $1 times mL(10) #ACN$], tint: if subslide == 3 { teal } else if subslide < 3 { orange } else { yellow }),
		edge(),
		blob((2,1), [Φιλτράρισμα\ $mum(0.45)$], tint: if subslide == 4 { teal } else if subslide < 4 { orange } else { yellow }),
		edge(),
		blob((1,1), [Συμπύκνωση\ Φιλτράρισμα\ $mum(0.22)$], tint: if subslide == 5 { teal } else if subslide < 5 { orange } else { yellow }),
		edge(),
		blob((0,1), [Ξήρανση σε άζωτο\ Ανασύσταση με #ACN\ $ng(5)$ #C_BP-d10()], tint: if subslide == 6 { teal } else if subslide < 6 { orange } else { yellow })
	)

	let speakernotes = (
		[Κοσκινίζουμε την σκόνη δείγματος και ζυγίζουμε από αυτή #mg(100).],
		[Αυτή τοποθετείται πάνω σε καθαρό φίλτρο μέσα σε κωνική φιάλη. Προσθέτουμε στην κωνική φιάλη #muL(10) διαλύματος #C_6PPD-Q-d5() και #C_BTR-d4() συγκέντρωσης #mugmL(5) το καθένα.],
		[Εκχυλίζουμε δύο φορές σε υπερήχους με #mL(10) #DCM κάθε φορά, και άλλη μία φορά με #mL(10) #ACN, συλλέγοντας συνολικά #mL(30) εκχυλίσματος.],
		[To εκχύλισμα φιλτράρεται στα #mum(0.45) και εισέρχεται σε σφαιρική φιάλη.],
		[Συμπυκνώνουμε το περιεχόμενο της σφαιρικής φιάλης χρησιμοποιώντας περιστροφικό εξατμιστή μέχρι περίπου #mL(0.5), και το παραλαμβάνουμε με πλαστική σύριγγα, μεταφέροντας το σε φιαλίδιο των #mL(6). Ξεπλένουμε την σφαιρική δύο φορές με #mL(1.0) #DCM, μεταφέροντας επίσης στο φιαλίδιο. Το περιεχόμενο του φιαλιδίου φιλτράρεται στα #mum(0.22).],
		[Το περιεχόμενο της φιάλης συμπυκνώνεται υπό ρεύμα αζώτου μέχρι ξηρού. Η ανασύσταση γίνεται με #muL(100) διαλύματος #ACN με #C_BP-d10() συγκέντρωσης #ngmL(50). Ακολουθεί ανάλυση στο #HPLC.],
	)

	let cases = if is-handout { 7 } else { 6 }
	alternatives-cases(
		range(cases + 1),
		case => {
			align(center + horizon, prep(case))
			for i in range(cases + 1) {
				speaker-note(subslide: i, speakernotes.at(i - 1))
			}
			for i in range(cases - 1) {
				pause
			}
		}
	)
})

== Αποτελέσματα

#let bars2 = {
  lq.diagram(
    width: 100%,
    height: 85%,
    margin: (x: 50%),
    legend: (position: left + top),

    ylabel: [C $[#ngmL()]$],

    xaxis: (
      ticks: ("PPDs", "BTRs").enumerate(start: 1),
      subticks: none,
    ),

    lq.boxplot(
      stroke: 2pt + blue.darken(25%),
      fill: blue.transparentize(50%),
      width: 25%,
			median: 2pt + orange,
      (1, 2, 3, 4, 5, 6, 7, 8, 9, 21, 19),
      range(1, 30),
    )
  )
}

#align(center + horizon, bars2)

#speaker-note[
	Σε αυτό το θηκόγραμμα παρουσιάζονται οι συγκεντρώσεις των PPDs και των BTRs.
	TODO εάν παρατηρείται κάποια τάση.
]

== Χάρτης αποτελεσμάτων

#align(center + horizon, image("python/map2.png", height: 85%))

#speaker-note[
	Εδώ βλέπουμε ένα χάρτη με διαβαθμισμένα σημεία ως προς το άθροισμα των συγκεντρώσεων των ρύπων.
	TODO εάν παρατηρείται κάποια τάση.
]

== Προτάσεις αποκατάστασης

#slide(self => {
	let (uncover, only, alternatives-cases) = utils.methods(self)

	let remedy(subslide) = diagram(
		node-inset: 15pt,
		spacing: (2em, 30pt),

		blob((-1,0), [Δημοσιονομική\ Προσέγγιση], tint: if subslide == 1 { teal } else { orange }, name: <o1>),
		blob((1,0), [Επιστημονική\ Προσέγγιση], tint: if subslide == 2 { teal } else { orange }, name: <o2>),

		blob((-1,1), [Περιορισμός Εκπομπών\ Εργοστασίων Γόμας], tint: yellow),
		edge(auto, <o1>),
		blob((-1,2), [Ενίσχυση Μέσων\ Σταθερής Τροχιάς], tint: yellow),
		edge(auto, <o1>),
		
		blob((1,1), [Διερεύνηση Γόμας\ Φιλικής στο Περιβάλλον], tint: yellow),
		edge(auto, <o2>),
		blob((1,2), [Διερεύνηση Τρόπων\ Δέσμευσης των TRECs], tint: yellow),
		edge(auto, <o2>),
	)

	let speakernotes = (
		[Υπάρχουν δύο προσεγγίσεις στην μετρίαση των επιπτώσεων. Από την μία, υπάρχει η δημοσιονομική προσέγγιση, δηλαδή η εφαρμογή δημοσιονομικών πολιτικών για την μείωση του φαινομένου. Οι δύο δημοσιονομικές πολιτικές με την μεγαλύτερη επίδραση είναι  ο περιορισμός των εκπομπών από εργοστάσια παραγωγής ελαστικών, και η ενίσχυση μέσων σταθερής τροχιάς, όπως τρένα, τραμ και μετρό.],
		[Η άλλη προσέγγιση είναι η επιστημονική, δηλαδή η εύρεση τρόπων μετρίασης του προβλήματος χωρίς ουσιαστικές αλλαγές στον τρόπο ζωής.Δύο αποτελεσματικές ιδέες είναι η εύρεση ελαστικού πιο φιλικού στο περιβάλλον, δηλαδή να παράγει λιγότερα TWPs και TRECs, και η διερεύνηση τρόπων δέσμευσης των TRECs σε περιοχές έντονης κυκλοφορίας οχημάτων.],
	)

	let cases = if is-handout { 3 } else { 2 }
	alternatives-cases(
		range(cases + 1),
		case => {
			align(center + horizon, remedy(case))
			for i in range(cases + 1) {
				speaker-note(subslide: i, speakernotes.at(i - 1))
			}
			for i in range(cases - 1) {
				pause
			}
		}
	)
})

= Ευχαριστούμε για την προσοχή σας!

#speaker-note[
	Σας ευχαριστούμε για την προσοχή σας!
]
