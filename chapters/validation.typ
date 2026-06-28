#import "../lib.typ": *

= Αποτελέσματα
TODO: Πίνακες και διαγράμματα από αποτελέσματα δειγμάτων

#let bars_diag = {
  let xs = range(14)
  let ys = (1.35, 3, 2.1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
  let yerr = (0.2, 0.3, 0.5, 0.4, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1)

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
      ticks: C_ALL().enumerate(),
      subticks: none,
    ),

    lq.bar(xs, ys, width: 0.75),
  
    lq.plot(
      xs.map(x => x), ys, 
      yerr: yerr,
      color: black,
      stroke: none 
    ),
  )
}

#figure(bars_diag, caption: [Συγκεντρώσεις όλων των αναλυτών σε όλα τα δείγματα])
