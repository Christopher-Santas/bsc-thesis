#import "../lib.typ": *

= Αποτελέσματα
TODO: Πίνακες και διαγράμματα από αποτελέσματα δειγμάτων

#let bars_diag = {
  show: lq.show_(
    lq.tick-label.with(kind: "x"),
    it => box(
      width: 0pt,
      align(center, rotate(-90deg, reflow: true, it))
    ),
  )

  lq.diagram(
    width: 100%,
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


#page(columns: 1, margin: (top: 70pt))[
  #figure(bars_diag, caption: [Συγκεντρώσεις όλων των αναλυτών σε όλα τα δείγματα])
  #align(center+horizon, figure(image("../python/map2.png"), caption: [Χάρτης με χρωματική διαβάθμιση συγκεντρώσεων TRECs]))
]
