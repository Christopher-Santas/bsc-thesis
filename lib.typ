#import "@preview/zero:0.5.0": num, ztable, zi, set-num, set-round, set-unit, set-group
#import "@preview/typsium:0.3.1": ce
#import "@preview/alchemist:0.1.8": *
#import "@preview/lilaq:0.6.0" as lq
#import "@preview/oasis-align:0.3.3": *
#import "@preview/sicons:16.0.0": sicon
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import fletcher.shapes: house, circle, triangle, trapezium
#import "@preview/touying:0.6.3": *
#import themes.simple: *

#let title = [Χημικός Χαρακτηρισμός Αιωρούμενων Ατμοσφαιρικών Σωματιδίων]

#let abstract = [Η παρούσα πτυχιακή εργασία πραγματεύεται τον χημικό χαρακτηρισμό αιωρούμενων ατμοσφαιρικών σωματιδίων, εστιάζοντας στους αναδυόμενους ρύπους από τη φθορά ελαστικών οχημάτων (TRECs), όπως οι κινόνες (PPD-Qs) και οι βενζοτριαζόλες (BTRs). Στο θεωρητικό μέρος, εξετάζονται οι πηγές, η περιβαλλοντική τους μεταφορά και οι τοξικολογικές επιπτώσεις στον άνθρωπο και τα υδάτινα οικοσυστήματα. Στο πειραματικό σκέλος, αναπτύσσεται μεθοδολογία ανάλυσης με Υγρή Χρωματογραφία Υψηλής Απόδοσης συζευγμένη με Φασματομετρία Μαζών (HPLC-QToF/MS), με σκοπό τον ποσοτικό προσδιορισμό των ενώσεων αυτών σε περιβαλλοντικά δείγματα. Βελτιστοποιούνται παράμετροι όπως το ιοντικό δυναμικό και κατασκευάζονται καμπύλες βαθμονόμησης. Η εργασία αναδεικνύει την ανάγκη συστηματικής παρακολούθησης των TRECs, καθώς η παρουσία τους στο αστικό περιβάλλον εγκυμονεί κινδύνους για τη δημόσια υγεία και τα οικοσυστήματα λόγω της ανθεκτικότητας και της βιοσυσσώρευσής τους.]

#let date = "Πέμπτη, 9 Ιουλίου 2026"

#let names = (
  "Χριστόφορος Σάντας",
  "Ιωάννης Στύλιος",
)
#let emails = (
  "sch2200080@uoa.gr",
  "sch2200088@uoa.gr"
)
#let ekpa = "Εθνικό Καποδιστριακό Πανεπιστήμιο Αθηνών"
#let chemdept = "Τμήμα Χημείας"
#let athens = "Αθήνα, Ελλάδα"
#let authors = (
    (
      name: names.at(0),
      department: chemdept,
      organization: ekpa,
      location: athens,
      email: emails.at(0)
    ),
    (
      name: names.at(1),
      department: chemdept,
      organization: ekpa,
      location: athens,
      email: emails.at(1)
    ),
)
#let figure-supplement = [Σχήμα]
#let paper-size = "a4"
#let index-terms = ("Ατμοσφαιρική Χημεία", "Ρύποι από Ελαστικά Οχημάτων", "Σκόνη από οδόστρωμα", "TRECs", "TWPs", "TWCs", "Κινόνες", "Βενζοτριαζόλες")
#let bibliography = bibliography("refs.bib")

#let mum = zi.declare("mum")
#let kg = zi.declare("kg")
#let mL = zi.declare("mL")
#let muL = zi.declare("muL")
#let mg = zi.declare("mg")
#let gr = zi.declare("g")
#let mugmL = zi.declare("mug/mL")
#let ngmL = zi.declare("ng/mL")
#let mgL = zi.declare("mg/L")
#let mLmin = zi.declare("mL/min")
#let mins = zi.declare("min")
#let volt = zi.declare("V")

#let MeOH = ce("MeOH")
#let DCM = "DCM"
#let ACN = "ACN"
#let HPLC = "HPLC-QToF/MS"

#let C_6PPD(long: false) = if long [Ν-(1,3-διμεθυλοβουτυλ)-Ν′-φαινυλο-π-φαινυλενοδιαμίνη] else [6PPD]
#let C_6PPD-Q(long: false) = if long [Ν-(1,3-διμεθυλοβουτυλ)-Ν′-φαινυλο-π-φαινυλενοδιαμίνη-κινόνη] else [6PPD-Q]
#let C_DPPD-Q(long: false) = if long [2,5-διανιλινοκυκλοεξα-2,5-διενο-1,4-διόνη] else [DPPD-Q]
#let C_CPPD-Q(long: false) = if long [2-ανιλινο-5-(κυκλοεξυλαμινο)κυκλοεξα-2,5-διενο-1,4-διόνη] else [CPPD-Q]
#let C_6PPD-Q-d5(long: false) = if long [2-(4-μεθυλπενταν-2-υλαμινο)-5-(2,3,4,5,6-πενταδευτεριοανιλινο)κυκλοεξα-2,5-διενο-1,4-διόνη] else [6PPD-Q-d5]
#let C_BTR(long: false) = if long [Βενζοτριαζόλη] else [BTR]
#let C_4TTR(long: false) = if long [4-μεθυλο-1H-βενζοτριαζόλη] else [4-TTR]
#let C_5TTR(long: false) = if long [5-μεθυλο-1H-βενζοτριαζόλη] else [5-TTR]
#let C_56Me-1H-BTR(long: false) = if long [5,6-διμεθυλο-2H-βενζοτριαζόλη] else [5,6-Me-1H-BTR]
#let C_5Cl-BTR(long: false) = if long [5-χλωρο-2H-βενζοτριαζόλη] else [5-Cl-BTR]
#let C_BTR-COOH(long: false) = if long [2H-βενζοτριαζόλη-5-καρβοξυλικό οξύ] else [BTR-COOH]
#let C_5ABTR(long: false) = if long [2H-βενζοτριαζόλη-5-αμίνη] else [5-ABTR]
#let C_1OH-BTR(long: false) = if long [1-υδροξυβενζοτριαζόλη] else [1-OH-BTR]
#let C_4OH-BTR(long: false) = if long [2H-βενζοτριαζολ-4-όλη] else [4-OH-BTR]
#let C_TBHB(long: false) = if long [2-(1H-βενζοτριαζολ-2-υλο)-4-(tert-βουτυλο)φαινόλη] else [TBHB]
#let C_BTR-d4(long: false) = if long [4,5,6,7-τετραδευτέριο-1H-βενζοτριαζόλη] else [BTR-d4]
#let C_BP-d10(long: false) = if long [δις(2,3,4,5,6-πενταδευτεριοφαινυλο)μεθανόνη] else [BP-d10]

#let C_ALL(long: false) = (
  C_6PPD(long: long),
  C_6PPD-Q(long: long),
  C_DPPD-Q(long: long),
  C_CPPD-Q(long: long),
  C_BTR(long: long),
  C_4TTR(long: long),
  C_5TTR(long: long),
  C_56Me-1H-BTR(long: long),
  C_5Cl-BTR(long: long),
  C_BTR-COOH(long: long),
  C_5ABTR(long: long),
  C_1OH-BTR(long: long),
  C_4OH-BTR(long: long),
  C_TBHB(long: long),
)

#let blob(pos, label, tint: white, ..args) = node(
	pos, align(center + horizon, label),
	fill: tint.lighten(60%),
	stroke: 1pt + tint.darken(20%),
	corner-radius: 5pt,
	..args,
)

#let to-bool(str) = if str == "true" { true } else if str == "false" { false }

// This function gets your whole document as its `body` and formats
// it as an article in the style of the IEEE.
#let fmt(cols: 2, body) = {
  // Set document metadata.
  set document(title: title, author: authors.map(author => author.name))

  // Set language to Greek
  set text(lang: "el")
  
  // Set the body font.
  // As of 2024-08, the IEEE LaTeX template uses wider interword spacing
  // - See e.g. the definition \def\@IEEEinterspaceratioM{0.35} in IEEEtran.cls
  // set text(font: "TeX Gyre Termes", size: 10pt, spacing: .35em)
  set text(size: 11pt, spacing: .35em)

  // Enums numbering
  set enum(numbering: "1)α)i)")

  // Tables & figures
  show figure: set block(spacing: 15.5pt)
  show figure: set place(clearance: 15.5pt)
  // show figure.where(kind: table): set figure.caption(position: top, separator: [\ ])
  // show figure.where(kind: table): set text(size: 8pt)
  // show figure.where(kind: table): set figure(numbering: "I")
  show figure.where(kind: image): set figure(supplement: figure-supplement, numbering: "1")
  show figure.caption: set text(size: 8pt)
  show figure.caption: set align(start)
  show figure: set block(breakable: true)
  // show figure.caption.where(kind: table): set align(center)
  
  // Adapt supplement in caption independently from supplement used for
  // references.
  set figure.caption(separator: [. ])
  show figure: fig => {
    let prefix = (
      if fig.kind == table [Πίνακας]
      else if fig.kind == image [Σχήμα]
      else [#fig.supplement]
    )
    let numbers = numbering(fig.numbering, ..fig.counter.at(fig.location()))
    // Wrap figure captions in block to prevent the creation of paragraphs. In
    // particular, this means `par.first-line-indent` does not apply.
    // See https://github.com/typst/templates/pull/73#discussion_r2112947947.
    show figure.caption: it => block[*#prefix~#numbers#it.separator*#it.body]
    show figure.caption.where(kind: table): smallcaps
    fig
  }

  // Code blocks
  show raw: set text(
    font: "TeX Gyre Cursor",
    ligatures: false,
    size: 1em / 0.8,
    spacing: 100%,
  )

  // Configure the page and multi-column properties.
  set columns(gutter: 12pt)
  set page(
    columns: cols,
    paper: paper-size,
    // The margins depend on the paper size.
    margin: if cols == 1 { auto } else if paper-size == "a4" {
      (x: 41.5pt, top: 80.51pt, bottom: 89.51pt)
    } else {
      (
        x: (50pt / 216mm) * 100%,
        top: (55pt / 279mm) * 100%,
        bottom: (64pt / 279mm) * 100%,
      )
    },
    // background: rotate(-45deg,
    //   text(138pt, fill: rgb("cccccc"))[
    //     *DRAFT*
    //   ]
    // ),
    // Bad attempt at fixing broken footer height
    // footer-descent: 0%+3em,
  )

  // Configure equation numbering and spacing.
  set math.equation(numbering: "(1)")
  show math.equation: set block(spacing: 0.65em)

  // Configure appearance of equation references
  show ref: it => {
    if it.element != none and it.element.func() == math.equation {
      // Override equation references.
      link(it.element.location(), numbering(
        it.element.numbering,
        ..counter(math.equation).at(it.element.location())
      ))
    } else {
      // Other references as usual.
      it
    }
  }

  // Configure lists.
  set enum(indent: 10pt, body-indent: 9pt)
  set list(indent: 10pt, body-indent: 9pt)

  // Configure headings.
  set heading(numbering: "I.Α.α)")
  show heading: it => {
    // Find out the final number of the heading counter.
    let levels = counter(heading).get()
    let deepest = if levels != () {
      levels.last()
    } else {
      1
    }

    set text(10pt, weight: 400)
    if it.level == 1 {
      // First-level headings are centered smallcaps.
      // We don't want to number the acknowledgment section.
      let is-ack = it.body in ([Acknowledgment], [Acknowledgement], [Acknowledgments], [Acknowledgements])
      set align(center)
      set text(if is-ack { 10pt } else { 11pt })
      show: block.with(above: 15pt, below: 13.75pt, sticky: true)
      show: smallcaps
      if it.numbering != none and not is-ack {
        numbering("I.", deepest)
        h(7pt, weak: true)
      }
      it.body
    } else if it.level == 2 {
      // Second-level headings are run-ins.
      set text(style: "italic")
      show: block.with(spacing: 10pt, sticky: true)
      if it.numbering != none {
        numbering("Α.", deepest)
        h(7pt, weak: true)
      }
      it.body
    } else [
      // Third level headings are run-ins too, but different.
      #if it.level == 3 {
        numbering("α)", deepest)
        [ ]
      }
      _#(it.body):_
    ]
  }

  // Style bibliography.
  show std.bibliography: set text(10pt)
  show std.bibliography: set block(spacing: 0.5em)
  set std.bibliography(title: [Βιβλιογραφία], style: "ieee")

  // Display the paper's title and authors at the top of the page,
  // spanning all columns (hence floating at the scope of the
  // columns' parent, which is the page).
  place(
    top,
    float: true,
    scope: "parent",
    clearance: 30pt,
    {
      grid(
        align: center + horizon,
        row-gutter: 2em,
        image("assets/nkua_1.svg", width: 3cm),
        text(18pt)[ΕΘΝΙΚΟ ΚΑΙ ΚΑΠΟΔΙΣΤΡΙΑΚΟ ΠΑΝΕΠΙΣΤΗΜΙΟ ΑΘΗΝΩΝ],
        text(14pt)[ΣΧΟΛΗ ΘΕΤΙΚΩΝ ΕΠΙΣΤΗΜΩΝ],
        text(14pt)[ΤΜΗΜΑ ΧΗΜΕΙΑΣ],
        text(14pt)[ΠΡΟΠΤΥΧΙΑΚΟ ΠΡΟΓΡΑΜΜΑ ΣΠΟΥΔΩΝ]
      )

      v(1fr)

      show std.title: set align(center)
      show std.title: set par(leading: 0.5em)
      show std.title: set text(size: 24pt, weight: "regular")
      show std.title: set block(below: 8.35mm)
      std.title()

      v(4em)

      // Display the authors list.
      set par(leading: 0.6em)
      for i in range(calc.ceil(authors.len() / 3)) {
        let end = calc.min((i + 1) * 3, authors.len())
        let is-last = authors.len() == end
        let slice = authors.slice(i * 3, end)
        grid(
          columns: slice.len() * (1fr,),
          gutter: 14pt,
          ..slice.map(author => align(center, {
            text(size: 14pt, weight: "semibold", author.name)
            if "department" in author [
              \ #emph(author.department)
            ]
            if "organization" in author [
              \ #emph(author.organization)
            ]
            if "location" in author [
              \ #author.location
            ]
            if "email" in author {
              if type(author.email) == str [
                \ #link("mailto:" + author.email)
              ] else [
                \ #author.email
              ]
            }
          }))
        )

        if not is-last {
          v(16pt, weak: true)
        }
      }

      v(1fr)
      align(center, emph(date))
    }
  )

  set page(footer: align(center, context { counter(page).display((page, total) => [#page από #total], both: true) }))
  page(columns: 1, outline())

  set par(justify: true, first-line-indent: (amount: 1em, all: true), spacing: if cols == 1 { 1.2em } else { 0.5em }, leading: if cols == 1 { 0.65em } else { 0.5em })

  // Display abstract and index terms.
  if abstract != none {
    set par(spacing: 0.45em, leading: 0.45em)
    set text(9pt, weight: 700, spacing: 150%)

    [_Περίληψη_---#h(weak: true, 0pt)#abstract]

    if index-terms != () {
      parbreak()
      [_Λέξεις κλειδιά_---#h(weak: true, 0pt)#index-terms.join[, ]]
    }
    v(2pt)
  }

  show table.cell.where(y: 0): strong
  set table(
    align: center + horizon,
    fill: (_, y) => if calc.even(y) { rgb("EAF2F5") },
    stroke: (_, y) => if y == 0 { (bottom: 1pt) }
  )

  // Display the paper's contents.
  body

  // Display bibliography.
  outline(title: "Σχήματα", target: figure.where(kind: image))
  outline(title: "Πίνακες", target: figure.where(kind: table))
  bibliography

  v(1em)
  align(center,
    link("https://typst.app/",
      box(stroke: 1pt + gray, inset: 5pt, radius: 5pt,
        grid(columns: 2, gutter: 5pt, align: center + horizon,
          rect(
            inset: 8pt,
            radius: 8pt,
            // stroke: 4pt + gradient.linear(green, blue),
            fill: rgb("239DAD"),
            // text(size: 48pt, weight: "black", fill: blue, [$"S"_"L"$])
            sicon(size: 2em, icon-color: "white"),
          ),
          [#text(weight: "bold", size: 16pt)[Made with Typst]\ #text(9pt)[_The new foundation for documents_]]
        )
      )
    )
  )
}

#let slides-fmt(handout: false, notes: false, body) = {
  show: simple-theme.with(
    aspect-ratio: "16-10",
    config-common(
      handout: handout,
      show-notes-on-second-screen: if notes { right } else { none },
    ),
  )

  set text(lang: "el")

  
  [
    = #title
    Ρύποι από ελαστικά οχημάτων
  ]

  speaker-note[
    Γεια σας! Είμαι ο ΤΑΔΕ και από εδώ είναι ο ΤΑΔΕ. Μαζί φτιάξαμε την πτυχιακή μας με τίτλο "Χημικός Χαρακτηρισμός Αιωρούμενων Ατμοσφαιρικών Σωματιδίων", η οποία ασχολείται με τον χαρακτηρισμό και την ποσοτικοποίηση των ρύπων από την φθορά ελαστικών σε δείγματα σκόνης δρόμου.
  ]

  grid(
    columns: 2*(1fr,),
    gutter: 12pt,
    ..names,
  )

  grid(
    columns: (auto, 1fr),
    align: center + horizon,
    image("assets/nkua_1.svg", width: 4em),
    [#v(1fr) #ekpa\ #chemdept\ Προπτυχιακό Πρόγραμμα Σπουδών\ #v(1fr) #athens\ #emph(date)],
  )

  body
}
