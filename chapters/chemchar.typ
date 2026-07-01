#import "../lib.typ": *
#import "skel.typ": *

#set-group(threshold: 3)

#let character = ztable(
  columns: (1fr,) + (auto,auto,auto,auto,auto),
  format: 4*(none,) + (auto, auto),
  table.header(
    [TREC],[Αρκτικόλεξο],[CAS],[Μοριακός Τύπος],[Μοριακό Βάρος],[Διαλ/τα σε Νερό\ [$#mgL()$]]
  ),
  C_6PPD(long: true),C_6PPD(),[793-24-8],[#ce("C18H24N2")],[268.4],[2.841],
  C_6PPD-Q(long: true),C_6PPD-Q(),[2754428-18-5],[#ce("C18H22N2O2")],[209.38],[64.01],
  C_DPPD-Q(long: true),C_DPPD-Q(),[3421-08-7],[#ce("C18H14N2O2")],[290.32],[25.61],
  C_CPPD-Q(long: true),C_CPPD-Q(),[68054-78-4],[#ce("C18H20N2O2")],[296.36],[94.79],
  C_6PPD-Q-d5(long: true),C_6PPD-Q-d5(),[2750119-14-1],[#ce("C18H17D5N2O2")],[303.41],[---],
  C_BTR(long: true),C_BTR(),[95-14-7],[#ce("C6H5N3")],[119.13],[5957],
  C_4TTR(long: true),C_4TTR(),[29878-31-7],[#ce("C7H7N3")],[133.15],[3069],
  C_5TTR(long: true),C_5TTR(),[136-85-6],[#ce("C7H7N3")],[133.15],[3069],
  C_56Me-1H-BTR(long: true),C_56Me-1H-BTR(),[4184-79-6],[#ce("C8H9N3")],[147.18],[914.2],
  C_5Cl-BTR(long: true),C_5Cl-BTR(),[94-97-3],[#ce("C6H4ClN3")],[153.57],[2077],
  C_BTR-COOH(long: true),C_BTR-COOH(),[23814-12-2],[#ce("C7H5N3O2")],[163.13],[91800],
  C_5ABTR(long: true),C_5ABTR(),[3325-11-9],[#ce("C6H6N4")],[134.14],[54200],
  C_1OH-BTR(long: true),C_1OH-BTR(),[2592-95-2],[#ce("C6H5N3O")],[135.12],[22580],
  C_4OH-BTR(long: true),C_4OH-BTR(),[26725-51-9],[#ce("C6H5N3O")],[135.12],[86400],
  C_TBHB(long: true),C_TBHB(),[3147-76-0],[#ce("C16H17N3O")],[267.33],[---],
  C_BTR-d4(long: true),C_BTR-d4(),[1185072-03-0],[#ce("C6HD4N3")],[123.15],[---],
  C_BP-d4(long: true),C_BP-d4(),[22583-75-1],[#ce("C13D10O")],[192.28],[137],
)

#let skeletons = (
  (C_6PPD(), S_6PPD),
  (C_6PPD-Q(), S_6PPD-Q),
  (C_DPPD-Q(), S_DPPD-Q),
  (C_CPPD-Q(), S_CPPD-Q),
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

  Όλες οι πρότυπες ενώσεις έχουν προμηθευτεί από Toronto TODO
]

#page(columns: 1, margin: (x: 1em, top: 70pt))[
  == Συντακτικοί τύποι
  
  #figure(skel_table, caption: [Συντακτικοί τύποι TRECs])
]

