#import "lib.typ": *
#import "chapters/toxic.typ": diagram1, blob

#show: slides-fmt

#let diagram = touying-reducer.with(
  reduce: fletcher.diagram,
  cover: fletcher.hide,
)

== First Slide

Hello, Touying!

#pause

Hello, Typst!

== Τρόποι εισχώρησης και κατανομής

#align(center + horizon, diagram1)

== Επιπτώσεις των μικροπλαστικών στον άνθρωπο

#let diagram2 = diagram(
	spacing: 8pt,
	cell-size: (16mm, 20mm),
	edge-stroke: 1pt,
	edge-corner-radius: 5pt,
	mark-scale: 70%,

	blob((0,0), [*Μικροπλαστικά\ στον Ανθρώπινο\ Οργανισμό*], tint: yellow, name: <human>, shape: circle),
  pause,
	blob((0,-2.25), [*Γαστρεντερικό\ σύστημα*], tint: orange),
	edge(auto, <human>),
  pause,
	blob((1.25,0), [*Ενδοκρινικό\ σύστημα*], tint: orange),
	edge(auto, <human>),
  pause,
	blob((-1.25,0), [*Νευρικό\ σύστημα*], tint: orange),
	edge(auto, <human>),
  pause,
	blob((1,-1.5), [*Καρδιαγγειακό\ σύστημα*], tint: orange),
	edge(auto, <human>),
  pause,
	blob((-1,-1.5), [*Αναπνευστικό\ σύστημα*], tint: orange),
	edge(auto, <human>),
  pause,
	blob((-1,1.5), [*Ανοσοβιολογικό\ σύστημα*], tint: orange),
	edge(auto, <human>),
  pause,
	blob((1,1.5), [*Αναπαραγωγικό\ σύστημα*], tint: orange),
	edge(auto, <human>),
)

#align(center + horizon, diagram2)
