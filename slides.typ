#import "lib.typ": *
#import "chapters/skel.typ": *

#let is-handout = false
#show: slides-fmt.with(handout: is-handout)

#let diagram = touying-reducer.with(
  reduce: fletcher.diagram,
  cover: fletcher.hide,
)

== Κατηγορίες ρύπων

#align(center + horizon, diagram(
	node-inset: 15pt,

	blob((0,0), [Ρύποι από οχήματα], tint: orange, name: <main>),
	blob((-1,1), [Εξάτμιση], tint: yellow),
	edge(auto, <main>),
	blob((1,1), [Λοιπά], tint: yellow, name: <rest>),
	edge(auto, <main>),
	blob((0,2), [Ελαστικά], tint: teal),
	edge(auto, <rest>),
	blob((2,2), [Φρένα], tint: yellow),
	edge(auto, <rest>),
))

== Κατηγορίες ουσιών

#let pyramid = diagram(
	spacing: 0pt,

	blob((0,0), [TRECs], tint: teal, shape: triangle.with(angle: 80deg, fit: 0.8), height: 4em),
	blob((0,1), [TWCs], tint: yellow, shape: trapezium.with(angle: 60deg), width: 10.35em, height: 3em),
	blob((0,2), [TWPs], tint: orange, shape: trapezium.with(angle: 60deg), width: 15.55em, height: 3em),
	edge((1,1), (1, -1), "-|>", mark-scale: 100%, stroke: 3pt, label: [Επικινδυνότητα], label-angle: right),
	edge((-1,-1), (-1, 1), "-|>", mark-scale: 100%, stroke: 3pt, label: [Μάζα], label-angle: left),
)

#align(center + horizon, pyramid)

== Συντακτικοί τύποι TRECs

#align(center + horizon, grid(
	columns: (auto, 1fr),
	align: (center + horizon, left + horizon),
	column-gutter: 2em,
	row-gutter: 1em,
	C_6PPD-Q(),S_6PPD-Q,
	C_BTR(),S_BTR,
))

== Συντακτικοί τύποι TRECs (συνέχεια)

#align(center + horizon, scale(50%, reflow: true, grid(
	align: center + horizon,
	columns: 4,
	column-gutter: 45pt,
	row-gutter: 30pt,
	S_1OH-BTR,
	S_4OH-BTR,
	S_TBHB,
	S_6PPD,
	S_4TTR,
	S_5TTR,
	S_56Me-1H-BTR,
	S_CPPD-Q,
	S_5Cl-BTR,
	S_5ABTR,
	S_BTR-COOH,
	S_DPPD-Q
)))

== Τρόποι εισχώρησης και κατανομής

#let toxic1 = diagram(
	node-inset: 15pt,
	
  blob((0,0), [Μικροπλαστικά], tint: yellow, name: <micro>),
  blob((-1,1), [Εισπνοή], tint: teal),
  edge(auto, <micro>),
  edge(<blood>),
  blob((0,1), [Κατάποση], tint: teal),
  edge(auto, <micro>),
  edge(<blood>),
  blob((1,1), [Δερματική\ επαφή], tint: teal),
  edge(auto, <micro>),
  edge(<blood>),
  blob((0, 2), [Κυκλοφορία\ στο αίμα], tint: red, name: <blood>),
)

#align(center + horizon, toxic1)

== Επιπτώσεις των μικροπλαστικών στον άνθρωπο
#slide(self => [
	#let (uncover, only, alternatives-cases) = utils.methods(self)

	#let toxic2(subslide) = diagram(
		node-inset: 15pt,
		// spacing: 4pt,
		// cell-size: (16mm, 20mm),
		// edge-stroke: 1pt,
		// edge-corner-radius: 5pt,
		// mark-scale: 70%,

		blob((0,0), [Μικροπλαστικά\ στον Ανθρώπινο\ Οργανισμό], tint: yellow, name: <human>, shape: circle),
	 //  pause,
		blob((-1,1.5), [Ανοσοβιολογικό\ σύστημα], tint: if subslide == 1 { teal } else { orange }),
		edge(auto, <human>),
	 //  pause,
		blob((-1.25,0), [Νευρικό\ σύστημα], tint: if subslide == 2 { teal } else { orange }),
		edge(auto, <human>),
	 //  pause,
		blob((-1,-1.5), [Αναπνευστικό\ σύστημα], tint: if subslide == 3 { teal } else { orange }),
		edge(auto, <human>),
	 //  pause,
		blob((0,-2.25), [Γαστρεντερικό\ σύστημα], tint: if subslide == 4 { teal } else { orange }),
		edge(auto, <human>),
	 //  pause,
		blob((1,-1.5), [Καρδιαγγειακό\ σύστημα], tint: if subslide == 5 { teal } else { orange }),
		edge(auto, <human>),
	 //  pause,
		blob((1.25,0), [Ενδοκρινικό\ σύστημα], tint: if subslide == 6 { teal } else { orange }),
		edge(auto, <human>),
	 //  pause,
		blob((1,1.5), [Αναπαραγωγικό\ σύστημα], tint: if subslide == 7 { teal } else { orange }),
		edge(auto, <human>),
		// pause,
		node((0,0)),
	)
	#let cases = if is-handout { 9 } else { 8 }
	#alternatives-cases(
		range(cases),
		case => {
			align(center + horizon, toxic2(case))
			for i in range(cases - 2) {
				pause
			}
		}
	)
])
