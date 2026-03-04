#import "lib.typ": *

#let intro = include "intro.typ"

#show: ieee_custom.with(
  title: [Χημικός Χαρακτηρισμός Αερολυμάτων
από Ελαστικά Οχημάτων],
  abstract: [
    The process of scientific writing is often tangled up with the intricacies of typesetting, leading to frustration and wasted time for researchers. In this paper, we introduce Typst, a new typesetting system designed specifically for scientific writing. Typst untangles the typesetting process, allowing researchers to compose papers faster. In a series of experiments we demonstrate that Typst offers several advantages, including faster document creation, simplified syntax, and increased ease-of-use.
  ],
  authors: (
    (
      name: "Χριστόφορος Σάντας",
      department: [Τμήμα Χημείας],
      organization: [Εθνικό Καποδιστριακό Πανεπιστήμιο Αθηνών],
      location: [Αθήνα, Ελλάδα],
      email: "sch2200080@uoa.gr"
    ),
    (
      name: "Ιωάννης Στύλιος",
      department: [Τμήμα Χημείας],
      organization: [Εθνικό Καποδιστριακό Πανεπιστήμιο Αθηνών],
      location: [Αθήνα, Ελλάδα],
      email: "sch2200088@uoa.gr"
    ),
  ),
  index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Fig.],
)

#intro

= Πηγές - Καταβόθρες
#image("environment.jpg")
Από Ghanadi

= Χαρακτηρισμός Ενώσεων
Εύρος τιμών (πάλι από Ghanadi @Ghanadi2025)

#page(flipped: true, columns: 1)[
  #table(columns: (1fr,) + 7*(auto,),
    table.header(
      [TREC],[Αρκτικόλεξο],[CAS],[Μοριακός Τύπος], [Συντακτικός τύπος],[Μοριακό Βάρος],[Εφαρμογές],[Σταθερότητα]
    ),
    [6PPD],[6PPD],[793-24-8],[4],[5],[6],[7],[8],
    [6PPD-quinone],[6PPD-Q],[2754428-18-5],[4],[5],[6],[7],[8],
    [DPPD-quinone],[DPPD-Q],[3421-08-7],[4],[5],[6],[7],[8],
    [CPPD-quinone],[CPPD-Q],[68054-78-4],[4],[5],[6],[7],[8],
    [6PPD-quinone-d5],[6PPD-Q-d5],[2750119-14-1],[4],[5],[6],[7],[8],
    [1-hydroxybenzotriazole],[1-OH-BTR],[2592-95-2],[4],[5],[6],[7],[8],
    [4-methyl-1H-benzotriazole],[4-Me-1-H-BTR],[29878-31-7],[4],[5],[6],[7],[8],
    [5-Chlorobenzotriazole1],[5-Cl-BTR],[94-97-3],[4],[5],[6],[7],[8],
    [5,6-dimethyl-1H-benzotriazole],[5,6-Me-1-H-BTR],[4184-79-6],[4],[5],[6],[7],[8],
    [Benzotriazole],[BTR],[95-14-7],[4],[5],[6],[7],[8],
    [benzotriazole-5-carboxyl acid],[BTR COOH],[23814-12-2],[4],[5],[6],[7],[8],
    [5 amino 1H benzotriazole],[5 ABTR],[3325-11-9],[4],[5],[6],[7],[8],
    [4-hydroxy-benzotriazole],[4-OH-BTR],[26725-51-9],[4],[5],[6],[7],[8],
    [2-(5-tert-Butyl-2-hydroxyphenyl) benzotriazole],[TBHB],[3147-76-0],[4],[5],[6],[7],[8],
    [Benzotriazole-d4],[BTR-d4],[1185072-03-0],[4],[5],[6],[7],[8],
  )
]

= Οργανολογία
Γιατί επιλέγουμε LC
Γιατί προτιμούμε MS/MS
HPLC-MS/MS

= Δειγματοληψία
Από τα τελευταία

= Αρχή Μεθόδου
Κόβουμε το φίλτρο στη μέση και τοποθετούμε το ένα μισό σε κωνική φιάλη. Προσθέτουμε στην κωνική φιάλη τα εσωτερικά πρότυπα, δηλαδή τις 6PPD-Q-d5 και BTR-d4. Εκχυλίζουμε τρεις φορές σε υπερήχους με #mL(30) #MeOH κάθε φορά, συλλέγοντας συνολικά #mL(90) εκχυλίσματος σε σφαιρική φιάλη. Συμπυκνώνουμε το περιεχόμενο της σφαιρικής φιάλης χρησιμοποιώντας περιστροφικό εξατμιστή μέχρι περίπου #mL(4), και προσθέτουμε #mL(10) #Hex. Επανασυμπυκνώνουμε μέχρι τα #mL(3) και επαναπροσθέτουμε #mL(5) #Hex. Τελικά συμπυκνώνουμε μέχρι τα #mL(2). Παράλληλα, κατασκευάζουμε χρωματογραφική στήλη με μικρή ποσότητα υαλοβάμβακα, #gr(1) silica και #gr(1) άνυδρο #ce("Na2SO4"). Ακολούθως, εισάγουμε #mL(10) #Hex για την ενεργοποίηση της στήλης και έπειτα προσθέτουμε το περιεχόμενο της σφαιρικής φιάλης. Εκπλένουμε την σφαιρική φιάλη δύο φορές με μικρή ποσότητα εξανίου, ώστε να παραλάβουμε ποσοτικά όλο το δείγμα. Προετοιμάζουμε την κινητή φάση και προσθέτουμε #mL(10) από αυτή στη στήλη. Παραλαμβάνουμε ολόκληρο το κλάσμα και το συμπυκνώνουμε υπό ρεύμα αζώτου μέχρι ξηρού. Κάνουμε ανασύσταση σε μικρό φιαλίδιο προσθέτοντας #MeOH μέχρι τελικού όγκου #mL(1). Το φιαλίδιο μεταφέρεται στο HPLC-MS/MS προς ανάλυση.

= Επικύρωση
Νούμερα, διαγράμματα, αποτελέσματα

= Συμπέρασμα
Σχολιασμός αποτελεσμάτων

= Methods <sec:methods>
#lorem(45)

$ a + b = gamma $ <eq:gamma>

#lorem(80)

#figure(
  placement: none,
  circle(radius: 15pt),
  caption: [A circle representing the Sun.]
) <fig:sun>

In @fig:sun you can see a common representation of the Sun, which is a star that is located at the center of the solar system.

#lorem(120)

#figure(
  caption: [The Planets of the Solar System and Their Average Distance from the Sun],
  placement: top,
  table(
    // Table styling is not mandated by the IEEE. Feel free to adjust these
    // settings and potentially move them into a set rule.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0  { rgb("#efefef") },

    table.header[Planet][Distance (million km)],
    [Mercury], [57.9],
    [Venus], [108.2],
    [Earth], [149.6],
    [Mars], [227.9],
    [Jupiter], [778.6],
    [Saturn], [1,433.5],
    [Uranus], [2,872.5],
    [Neptune], [4,495.1],
  )
) <tab:planets>

In @tab:planets, you see the planets of the solar system and their average distance from the Sun.
The distances were calculated with @eq:gamma that we presented in @sec:methods.

#lorem(240)

#lorem(240)
