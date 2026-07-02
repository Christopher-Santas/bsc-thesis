#import "../lib.typ": *

= Αποτελέσματα
TODO: Πίνακες και διαγράμματα από αποτελέσματα δειγμάτων

#let bars1 = {
  show: lq.show_(
    lq.tick-label.with(kind: "x"),
    it => box(
      width: 0pt,
      align(center, rotate(-90deg, reflow: true, it))
    ),
  )

  lq.diagram(
    width: 100%,
    height: 40%,
    legend: (position: left + top),

    ylabel: [C $[#ngmL()]$],

    xaxis: (
      ticks: C_ALL().enumerate(start: 1),
      subticks: none,
    ),

    lq.boxplot(
      stroke: blue.darken(25%),
      fill: blue.transparentize(50%),
      (1, 2, 3, 4, 5, 6, 7, 8, 9, 21, 19),
      range(1, 30),
      (1, 28, 25, 30),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
      (1, 2, 3, 4, 5, 6, 32),
    )
  )
}

#let bars2 = {
  lq.diagram(
    width: 100%,
    height: 40%,
    margin: (x: 50%),
    legend: (position: left + top),

    ylabel: [C $[#ngmL()]$],

    xaxis: (
      ticks: ("PPDs", "BTRs").enumerate(start: 1),
      subticks: none,
    ),

    lq.boxplot(
      stroke: blue.darken(25%),
      fill: blue.transparentize(50%),
      width: 25%,
      (1, 2, 3, 4, 5, 6, 7, 8, 9, 21, 19),
      range(1, 30),
    )
  )
}

#page(columns: 1, margin: (top: 70pt))[
  #align(center + horizon, {
    figure(bars1, caption: [Συγκεντρώσεις όλων των αναλυτών σε όλα τα δείγματα])
    v(1em)
    figure(bars2, caption: [Συγκεντρώσεις PPDs και BTRs σε όλα τα δείγματα])
  })
  #align(center+horizon, figure(image("../python/map2.png"), caption: [Χάρτης με χρωματική διαβάθμιση συγκεντρώσεων TRECs]))
]
