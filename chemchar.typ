#import "lib.typ": *
#import "skel.typ": *

#let character = table(columns: (1fr,) + 6*(auto,),
  table.header(
    [TREC],[Αρκτικόλεξο],[CAS],[Μοριακός Τύπος],[Μοριακό Βάρος],[Εφαρμογές],[Σταθερότητα]
  ),
  [6PPD],[6PPD],[793-24-8],[4],[5],[6],[7],
  [6PPD-quinone],[6PPD-Q],[2754428-18-5],[4],[5],[6],[7],
  [DPPD-quinone],[DPPD-Q],[3421-08-7],[4],[5],[6],[7],
  [CPPD-quinone],[CPPD-Q],[68054-78-4],[4],[5],[6],[7],
  [6PPD-quinone-d5],[6PPD-Q-d5],[2750119-14-1],[4],[5],[6],[7],
  [1-hydroxybenzotriazole],[1-OH-BTR],[2592-95-2],[4],[5],[6],[7],
  [4-methyl-1H-benzotriazole],[4-TTR],[29878-31-7],[4],[5],[6],[7],
  [5-methyl-1H-benzotriazole],[5-TTR],[136-85-6],[4],[5],[6],[7],
  [5-Chlorobenzotriazole1],[5-Cl-BTR],[94-97-3],[4],[5],[6],[7],
  [5,6-dimethyl-1H-benzotriazole],[5,6-Me-1H-BTR],[4184-79-6],[4],[5],[6],[7],
  [Benzotriazole],[BTR],[95-14-7],[4],[5],[6],[7],
  [benzotriazole-5-carboxyl acid],[BTR-COOH],[23814-12-2],[4],[5],[6],[7],
  [5-amino-1H-benzotriazole],[5-ABTR],[3325-11-9],[4],[5],[6],[7],
  [4-hydroxy-benzotriazole],[4-OH-BTR],[26725-51-9],[4],[5],[6],[7],
  [2-(5-tert-Butyl-2-hydroxyphenyl) benzotriazole],[TBHB],[3147-76-0],[4],[5],[6],[7],
  [Benzotriazole-d4],[BTR-d4],[1185072-03-0],[4],[5],[6],[7],
)

#let skeletons = (
  (C_6PPD(), S_6PPD),
  (C_6PPD-Q(), S_6PPD-Q),
  (C_BTR(), S_BTR),
  (C_BTR-COOH(), S_BTR-COOH),
  (C_5ABTR(), S_5ABTR),
  (C_TBHB(), S_TBHB),
  (C_1OH-BTR(), S_1OH-BTR),
  (C_4OH-BTR(), S_4OH-BTR),
  (C_4TTR(), S_4TTR),
  (C_5TTR(), S_5TTR),
  (C_5Cl-BTR(), S_5Cl-BTR),
  (C_56Me-1H-BTR(), S_56Me-1H-BTR),
  (C_DPPD-Q(), S_DPPD-Q),
  (C_CPPD-Q(), S_CPPD-Q),
)

#let skel_table = table(
  columns: (auto, 1fr, auto, 1fr),
  stroke: (x, y) => {
    if y == 0 { (bottom: 1pt) }
    if x == 1 { (right: 1pt) }
  },
  table.header([Ένωση],[Συντακτικός τύπος],[Ένωση],[Συντακτικός τύπος]),
  ..skeletons.flatten()
)

#page(flipped: true, columns: 1)[
= Χαρακτηρισμός Ενώσεων
// Εύρος τιμών (πάλι από Ghanadi)
== Γενικές πληροφορίες
  #figure(
    character,
    caption: [Χημικός χαρακτηρισμός TRECs]
  )
]

#page(columns: 1, margin: (x: 1em))[
  == Συντακτικοί τύποι
  
  #align(center + horizon, skel_table)
]
// TODO MAKE 2 TABLES, 1 WITH THE REST AND 1 WITH ONLY SYNTACTIC

// [#C_6PPD()],
// [#C_DPPD-Q()],
// [#C_CPPD-Q()],
// [#C_6PPD-Q-d5()],
// [#C_1OH-BTR()],
// [#C_4OH-BTR()],
// [#C_4TTR()],
// [#C_5TTR()],
// [#C_5Cl-BTR()],
// [#C_56Me-1H-BTR()],
// [#C_BTR()],
// [#C_BTR-d4()],
// [#C_BTR-COOH()],
// [#C_5ABTR()],
// [#C_TBHB()],

