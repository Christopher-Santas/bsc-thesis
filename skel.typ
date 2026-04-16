#import "lib.typ": *

#let myatomsep = 2em
#let mystroke = 1pt
#let myangle = 30deg
#let myskel = skeletize.with(config: (
  angle-increment: myangle,
  atom-sep: myatomsep,
  single: (stroke: mystroke),
  double: (stroke: mystroke)
))

#let S_6PPD = myskel({
  cycle(6, {
    double()
    single()
    branch({
      single()
      fragment("NH", vertical: true)
      single(angle: 1)
      cycle(6, {
        double()
        single()
        double()
        branch({
          single()
          fragment("HN", vertical: true)
          single(angle: -1)
          branch({
            single(angle: -3)
          })
          single()
          single(angle: -1)
          branch({
            single(angle: -3)
          })
          single()
        })
        single()
        double()
        single()
      })
    })
    double()
    single()
    double()
    single()
  })
})

#let S_6PPD-Q = myskel({
  cycle(6, {
    double()
    single()
    branch({
      single()
      fragment("NH", vertical: true)
      single(angle: 1)
      cycle(6, {
        double()
        branch({
          double()
          fragment("O")
        })
        single()
        double()
        branch({
          single()
          fragment("HN", vertical: true)
          single(angle: -1)
          branch({
            single(angle: -3)
          })
          single()
          single(angle: -1)
          branch({
            single(angle: -3)
          })
          single()
        })
        single()
        branch({
          double()
          fragment("O")
        })
        double()
        single()
      })
    })
    double()
    single()
    double()
    single()
  })
})

#let S_DPPD-Q = myskel({
  cycle(6, {
    double()
    single()
    branch({
      single()
      fragment("NH", vertical: true)
      single(angle: 1)
      cycle(6, {
        double()
        branch({
          double()
          fragment("O")
        })
        single()
        double()
        branch({
          single()
          fragment("HN", vertical: true)
          single(angle: -1)
          cycle(6, {
            single()
            double()
            single()
            double()
            single()
            double()
          })
        })
        single()
        branch({
          double()
          fragment("O")
        })
        double()
        single()
      })
    })
    double()
    single()
    double()
    single()
  })
})

#let S_CPPD-Q = myskel({
  cycle(6, {
    double()
    single()
    branch({
      single()
      fragment("NH", vertical: true)
      single(angle: 1)
      cycle(6, {
        double()
        branch({
          double()
          fragment("O")
        })
        single()
        double()
        branch({
          single()
          fragment("HN", vertical: true)
          single(angle: -1)
          cycle(6, {
            single()
            single()
            single()
            single()
            single()
            single()
          })
        })
        single()
        branch({
          double()
          fragment("O")
        })
        double()
        single()
      })
    })
    double()
    single()
    double()
    single()
  })
})

#let S_1OH-BTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      single()
      fragment("N")
      double()
      fragment("N")
      single()
      fragment("N")
      branch({
        single()
        fragment("OH")
      })
      single()
    })
    double()
    single()
    double()
    single()
  })
})

#let S_4OH-BTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    branch({
      single()
      fragment("OH")
    })
    double()
    single()
  })
})

#let S_4TTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    branch({
      single()
    })
    double()
    single()
  })
})

#let S_5TTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    branch({
      single()
    })
    single()
  })
})

#let S_5Cl-BTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    branch({
      single()
      fragment("Cl")
    })
    single()
  })
})

#let S_56Me-1H-BTR = myskel({
  cycle(6, {
    branch({
      single()
    })
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    branch({
      single()
    })
    single()
  })
})

#let S_BTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    single()
  })
})

#let S_BTR-COOH = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    branch({
      single()
      branch({
        single(angle: 7)
        fragment("HO")
      })
      double(angle: 3)
      fragment("O")
    })
    single()
  })
})

#let S_5ABTR = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("NH")
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    branch({
      single()
      fragment("H_2 N")
    })
    single()
  })
})

#let S_TBHB = myskel({
  cycle(6, {
    double()
    single()
    cycle(5, {
      double()
      fragment("N")
      single()
      fragment("N")
      branch({
        single()
        cycle(6, {
          single()
          double()
          branch({
            single()
            branch({
              single(angle: -1.5)
            })
            branch({
              single(angle: 0.5)
            })
            branch({
              single(angle: 7.5)
            })
          })
          single()
          double()
          single()
          branch({
            single()
            fragment("HO")
          })
          double()
        })
      })
      single()
      fragment("N")
      double()
    })
    single()
    single()
    double()
    single()
  })
})
