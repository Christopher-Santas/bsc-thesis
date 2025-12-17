#import "lib.typ": ieee_custom
#import "@preview/zero:0.5.0": num, ztable, zi, set-num, set-round, set-unit



#let kg = zi.declare("kg")

#show: ieee_custom.with(
  title: [Χημικός Χαρακτηρισμός Αερολυμάτων
από Ελαστικά Οχημάτων],
  abstract: [
    The process of scientific writing is often tangled up with the intricacies of typesetting, leading to frustration and wasted time for researchers. In this paper, we introduce Typst, a new typesetting system designed specifically for scientific writing. Typst untangles the typesetting process, allowing researchers to compose papers faster. In a series of experiments we demonstrate that Typst offers several advantages, including faster document creation, simplified syntax, and increased ease-of-use.
  ],
  authors: (
    (
      name: "Χριστόφορος Σάντας",
      department: [Τμήμα Χημείας],
      organization: [Εθνικό Καποδιστριακό Πανεπιστήμιο Αθηνών],
      location: [Αθήνα, Ελλάδα],
      email: "sch2200080@uoa.gr"
    ),
    (
      name: "Ιωάννης Στύλιος",
      department: [Τμήμα Χημείας],
      organization: [Εθνικό Καποδιστριακό Πανεπιστήμιο Αθηνών],
      location: [Αθήνα, Ελλάδα],
      email: "sch2200088@uoa.gr"
    ),
  ),
  index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Fig.],
)

= Εισαγωγή
Στην εποχή μας, ένα από τα σημαντικότερα και συνεχώς αναπτυσσόμενα περιβαλλοντικά προβλήματα είναι η ρύπανση της ατμόσφαιρας.
Αυτό το μείζον ζήτημα αποκτά ακόμα μεγαλύτερη σημασία αν αναλογιστούμε ότι επηρεάζει τον καθένα μας προσωπικά.
Συγκεκριμένα, έχει επίδραση τόσο στην ποιότητα όσο και στο προσδόκιμο της ανθρώπινης ζωής.
// Ακόμα δυσχεραίνει τη διατήρηση των ισορροπιών των εγγύς βιοτόπων.
Η λειτουργία της κοινωνίας είναι άρρηκτα συνδεδεμένη με την ποιότητα του ατμοσφαιρικού αέρα, ειδικά σε αστικές περιοχές.
Η ατμοσφαιρική ρύπανση σε αστικές ζώνες προκαλείται από διάφορους παράγοντες.
Μια από τις πιο σημαντικές πηγές της είναι τα οχήματα.
Οι ρύποι των οχημάτων είναι πολυπληθείς και διαφορετικοί μεταξύ τους.
Αναλυτικότερα, μπορούν να διακριθούν σε επιμέρους κατηγορίες ανάλογα με την προέλευση τους.
Οι ρύποι αυτοί μπορούν να διακριθούν σε:
#set enum(numbering: "α)")
+ ρύπους από εξάτμιση
+ λοιποί ρύποι (NEEs, κυρίως από ελαστικά και φρένα @Harrison2021)

Εκπομπές από εξάτμιση συνιστούν το μονοξείδιο του άνθρακα, οι υδρογονάνθρακες,
τα αζωτοξείδια, τα αιωρούμενα σωματίδια, @Harrison2021 αλλά και οι πτητικές οργανικές ενώσεις (VOCs). @Shen2025 Οι λοιποί ρύποι (NEEs) αποτελούνται κυρίως από αιωρούμενα σωματίδια. @Harrison2021 Οι πτητικές οργανικές ενώσεις μπορούν να οξειδωθούν σε ενώσεις με χαμηλότερη τάση ατμών και να προσροφηθούν στα αιωρούμενα σωματίδια, δημιουργώντας δευτερογενή οργανικά αερολύματα (SOA). Η μέτρηση των SOA αποτελεί δείκτη ποιότητας της ατμόσφαιρας, αφού μπορούν να προκαλέσουν κλιματική αλλαγή, σχηματισμό αιθαλομίχλης και προβλήματα στην υγεία. @Shen2025

Τα τελευταία χρόνια, η χρήση καταλυτών και φίλτρων έχουν περιορίσει σημαντικά τις εκπομπές από την εξάτμιση, ειδικά στα οχήματα που χρησιμοποιούν ως καύσιμο diesel. Αυτό έχει ως αποτέλεσμα την αναλογική αύξηση των NEEs σε σχέση με αυτών από εξάτμιση, τοποθετώντας τους πρώτους σε πρωταγωνιστικό ρόλο. @Harrison2021

Μεγαλύτερη έμφαση έχει δοθεί στους ρύπους που προέρχονται από τα ελαστικά των οχημάτων, αφού αυτοί καταλαμβάνουν πάνω από $50%$ των NEEs. Οι ρύποι αυτοί είναι τα σωματίδια που προκύπτουν από την φθορά των ελαστικών (TWPs) λόγω τριβής με το οδόστρωμα. Κατά την διάρκεια της ζωής ενός ελαστικού, $10"-"20%$ της μάζας του ελευθερώνεται στο περιβάλλον μέσω της φθοράς του λόγω τριβής. Χαρακτηριστικά, έξι εκατομμύρια τόνοι από TWPs απελευθερώνονται παγκοσμίως κάθε χρόνο, οι οποίοι αντιστοιχούν σε $kg(~0.8)$ ανά άτομο ανά χρόνο. Παρόλα αυτά, η συμμετοχή των TWPs στα αναπνεύσιμα αιωρούμενα σωματίδια (PM2.5) δεν είναι πλήρως αντιληπτή και απαιτείται περεταίρω μελετή. Τα αναπνεύσιμα αιωρούμενα σωματίδια στις αστικές περιοχές είναι ένα από τα πιο επικίνδυνα φαινόμενα για την παγκόσμια υγεία και δυσχεραίνουν την ζωή των ανθρώπων οδηγώντας συχνά σε καρκίνους στο αναπνευστικό, καρδιοπάθειες και διαταραχές του νευρικού συστήματος. @Tian2024

Στα διάφορα TWPs έχει εντοπιστεί ότι περιέχεται ποικιλία χημικών ενώσεων από φθορά ελαστικών (TWCs). Μερικές από αυτές είναι οι βενζοθειόλες, π-φαινυλενοδιαμίνες (PPDs), 1,3-διφαινυλογουανιδίνες, εξα-(μεθοξυμεθυλ)μελαμίνες και οι βενζοτριαζόλες. Από τα TWCs, η πιο επιβλαβής για την ανθρώπινη υγεία είναι οι PPDs έπειτα από εκτεταμένη έρευνα.

= Methods <sec:methods>
#lorem(45)

$ a + b = gamma $ <eq:gamma>

#lorem(80)

#figure(
  placement: none,
  circle(radius: 15pt),
  caption: [A circle representing the Sun.]
) <fig:sun>

In @fig:sun you can see a common representation of the Sun, which is a star that is located at the center of the solar system.

#lorem(120)

#figure(
  caption: [The Planets of the Solar System and Their Average Distance from the Sun],
  placement: top,
  table(
    // Table styling is not mandated by the IEEE. Feel free to adjust these
    // settings and potentially move them into a set rule.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0  { rgb("#efefef") },

    table.header[Planet][Distance (million km)],
    [Mercury], [57.9],
    [Venus], [108.2],
    [Earth], [149.6],
    [Mars], [227.9],
    [Jupiter], [778.6],
    [Saturn], [1,433.5],
    [Uranus], [2,872.5],
    [Neptune], [4,495.1],
  )
) <tab:planets>

In @tab:planets, you see the planets of the solar system and their average distance from the Sun.
The distances were calculated with @eq:gamma that we presented in @sec:methods.

#lorem(240)

#lorem(240)
