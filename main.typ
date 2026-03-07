#import "lib.typ": *

#let intro = include "intro.typ"
#let sourcesink = include "sourcesink.typ"
#let chemchar = include "chemchar.typ"
#let organology = include "organology.typ"
#let sampling = include "sampling.typ"
#let method = include "method.typ"
#let validation = include "validation.typ"
#let conclusion = include "conclusion.typ"

#show: ieee_custom.with(
  title: [Χημικός Χαρακτηρισμός Αερολυμάτων
από Ελαστικά Οχημάτων],
  abstract: [
    TODO
  ],
  authors: (
    (
      name: "Χριστόφορος Σάντας",
      department: chemdept,
      organization: ekpa,
      location: athens,
      email: "sch2200080@uoa.gr"
    ),
    (
      name: "Ιωάννης Στύλιος",
      department: chemdept,
      organization: ekpa,
      location: athens,
      email: "sch2200088@uoa.gr"
    ),
  ),
  index-terms: ("Χημεία Περιβάλλοντος", "Ρύποι από Ελαστικά Οχημάτων", "Σκόνη από οδόστρωμα", "TRECs", "TWPs", "TWCs", "Κινόνες", "Βενζοτριαζόλες"),
  bibliography: bibliography("refs.bib"),
)

#intro
#sourcesink
#chemchar

// TODO: Μάλλον για εισαγωγή:
// Τα TWPs είναι τα φυσικά σωματίδια, ενώ τα TRECs είναι οι χημικές ουσίες που αυτά απελευθερώνουν. Τα πρώτα δρουν κυρίως μηχανικά και ως φορείς ρύπων, ενώ τα δεύτερα ασκούν άμεση χημική τοξικότητα.

#organology
#sampling
#method
#validation
#conclusion









