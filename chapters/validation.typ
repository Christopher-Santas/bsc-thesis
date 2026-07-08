#import "../lib.typ": *

#let samples_points = ("s2","s3","s4","s5p","s5r","s6","s7","s10","s11","s14","s16","s18")

#let samples_data = (
  // (([$#C_BTR()$],), (0,0,0,0,0,0,0,0,0,0,0,0)),
  (([$#C_4TTR()$],[$#C_5TTR()$],), (0,467.60723753417147,24.73329346802441,104.00939846578817,7964.1532793095557,227.75084437641135,35.761081537146865,88.542161787560758,18.192507744373643,27.656244848432518,2.1184295985381891,15.071612071716624)),
  // (([$#C_5ABTR()$],), (0,0,0,0,0,0,0,0,0,0,0,0)),
  // (([$#C_4OH-BTR()$],[$#C_1OH-BTR()$],), (0,0,0,0,0,0,0,0,0,0,0,0)),
  (([$#C_56Me-1H-BTR()$],), (0,0,0,0,0,0,0,0,0,0,1.7234367046999732,0)),
  // (([$#C_5Cl-BTR()$],), (0,0,0,0,0,0,0,0,0,0,0,0)),
  (([$#C_TBHB()$],), (2.665757854392905,0,3.441555921974718,6.7401487534899642,5.1162618883923896,6.6324349804026212,5.7818808178230796,4.7946351168994044,0,0,0,1.476278169928434)),
  (([$#C_6PPD()$],), (0,0,104.8672786197078,12.890835560323385,0,0,0,0,0,0,15.269296724660176,0)),
  (([$#C_DPPD-Q()$],), (0,0,0,0,0,3.1983727572362972,0,0,0,0,0,0)),
  (([$#C_CPPD-Q()$],), (0,0,0,0,0,0,0,16.166713541841034,0,0,0,0)),
  (([$#C_6PPD-Q()$],), (78.942095784152485,36.585553501855919,103.6691435618916,168.52695927242192,227.50122860424477,71.68105996294436,85.538089448607593,652.52719252436759,0,45.257402793682893,97.623537235415824,61.271783561854114)),
)

#let samples_points_compare = ("s3", "s5", "s7", "s14", "s18")

#let samples_data_indoor = (
  (([$#C_4TTR()$],[$#C_5TTR()$],), (305.74827139248634,0,0,25093.712574850299,0)),
  (([$#C_56Me-1H-BTR()$],), (0,0,0,1900.1633097441481,0)),
  (([$#C_TBHB()$],), (25.090580281204975,0,0,338.86771910724002,0)),
  (([$#C_6PPD()$],), (0,36.798195490157759,0,0,0)),
  (([$#C_DPPD-Q()$],), (0,27.582812626443555,0,313.20087098530217,0)),
  (([$#C_6PPD-Q()$],), (0,59.438366871431839,51.26063183475091,1051.986935220468,43.416350155874873)),
)

#let samples_data_outdoor = (samples_data.slice(0,5) + samples_data.slice(6)).map(((comp, conc)) => (comp, (conc.at(1), conc.at(4), conc.at(6), conc.at(9), conc.at(11))))

#let samples_data_compare = samples_data_indoor.zip(samples_data_outdoor).map(((ind, outd)) => {
  assert(ind.at(0) == outd.at(0), message: "Check your sample data, something is off")
  (ind.at(0), ind.at(1), outd.at(1))
})

#let mybar(ticks, comp, conc, conc2: none) = {
  show: lq.show_(
    lq.tick-label.with(kind: "x"),
    it => box(
      width: 0pt,
      align(right, rotate(-45deg, reflow: true, it))
    ),
  )

  show lq.selector(lq.legend): set grid(columns: 4)

  lq.diagram(
    width: 100%,
    height: if conc2 != none { 25% } else { 20% },
    margin: (x: 2%),

    xlabel: [Κωδικός δείγματος],
    ylabel: [#grid(columns: 2, gutter: 0.25em, comp.at(0), grid.cell(rowspan: comp.len(), $[ngmL()]$), ..comp.slice(1))],
  
    legend: if conc2 != none { (position: center + bottom, dy: -100%) },
  
    xaxis: (
      ticks: ticks.enumerate(),
      subticks: none,
    ),

    lq.bar(
      range(ticks.len()),
      width: if conc2 != none { 0.4 } else { 80% },
      offset: if conc2 != none { -0.2 },
      label: if conc2 != none { [Indoor] },
      conc
    ),

    if conc2 != none {
      lq.bar(
        range(ticks.len()),
        width: 0.4,
        offset: 0.2,
        label: [Outdoor],
        conc2
      )
    }
  )
}

#let barplots = samples_data.map(((comp, conc)) =>
  figure(mybar(samples_points, comp, conc), caption: [Συγκέντρωση #comp.join(" & ") σε όλα τα δείγματα])
)

#let barplots2 = samples_data_compare.map(((comp, conc, conc2)) =>
  figure(mybar(samples_points_compare, comp, conc, conc2: conc2), caption: [Σύγκριση συγκεντρώσεων εσωτερικού και εξωτερικού χώρου στα κοινά δείγματα])
)

#let boxplot1 = {
  show: lq.show_(
    lq.tick-label.with(kind: "x"),
    it => box(
      width: 0pt,
      align(right, rotate(-45deg, reflow: true, it))
    ),
  )

  lq.diagram(
    width: 100%,
    height: 40%,
    legend: (position: left + top),

    ylabel: [$log("C" thin [#ngmL()])$],

    xaxis: (
      ticks: samples_data.map(((comp, _)) => grid(gutter: 0.25em, ..comp)).enumerate(start: 1),
      subticks: none,
    ),

    yaxis: (
      scale: "log",
    ),

    lq.boxplot(
      stroke: blue.darken(25%),
      fill: blue.transparentize(50%),
      // outliers: none,
      ..samples_data.map(((_, conc)) => conc.map(y => if y == 0 { 1 } else { y }))
    )
  )
}

#let PPDs = samples_data.slice(4).map(((_, conc)) => conc.map(y => if y == 0 { 1 } else { y })).flatten()

#let BTRs = samples_data.slice(0, 4).map(((_, conc)) => conc.map(y => if y == 0 { 1 } else { y })).flatten()

#let boxplot2 = {
  lq.diagram(
    width: 100%,
    height: 40%,
    margin: (x: 50%),
    legend: (position: left + top),

    ylabel: [$log("C" thin [#ngmL()])$],

    xaxis: (
      ticks: ("PPDs", "BTRs").enumerate(start: 1),
      subticks: none,
    ),

    yaxis: (
      scale: "log",
    ),

    lq.boxplot(
      stroke: blue.darken(25%),
      fill: blue.transparentize(50%),
      width: 25%,
      PPDs,
      BTRs,
    )
  )
}

= Αποτελέσματα

Δεν εντοπίστηκαν σε κανένα δείγμα οι ενώσεις #C_BTR(), #C_5ABTR(), #C_1OH-BTR(), #C_4OH-BTR() και #C_5Cl-BTR().

#grid(
  inset: (x: 10pt, y: 10pt),
  ..barplots,
)

Από άλλη αντίστοιχη πτυχιακή εργασία, αλλά με δείγματα από τα κλιματιστικά από τις ίδιες περιοχές, μας δόθηκαν τα τελικά αποτελέσματα προς σύγκριση με αυτά των δειγμάτων του δρόμου.

#grid(
  inset: (x: 10pt, y: 10pt),
  ..barplots2,
)

#page(columns: 1, margin: (top: 70pt))[
  #align(center + horizon, {
    figure(boxplot1, caption: [Συγκεντρώσεις όλων των αναλυτών σε όλα τα δείγματα])
    v(1em)
    figure(boxplot2, caption: [Συγκεντρώσεις PPDs και BTRs σε όλα τα δείγματα])
  })
  #align(center+horizon, figure(image("../python/map2.png"), caption: [Χάρτης με χρωματική διαβάθμιση συγκεντρώσεων TRECs]))
]
