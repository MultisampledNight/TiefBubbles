#import "../lib.typ": bubbles

#set page(margin: (x: 5cm, y: 5cm))

= TiefBubbles

When text messages must shine.

#align(center, line(length: 80%))

#bubbles(
  mode: "alternating",
  [Hey],
  [Hello],
  [Wassup],
  [Nothing],
  [Same],
  [Why are you texting me?],
  [Why not],
  [Lol],
  [AsDf],
)

#pagebreak()

#bubbles(
  mode: "named",
  primary-participant: "Adria",
  show-name: true,
  ("Adria", [Hey]),
  ("Adria", [How are you guys]),
  ("Stephen", [Horrible. I have been reading Lorem Ipsum for 2 hours now]),
  ("Adria", [Oh? What does it say?]),
  ("Johannes", [Lol]),
  ("Stephen", [Roughly #lorem(50)]),
  ("Adria", [That's curious!]),
  ("Stephen", [Is it?]),
  ("Adria", [No.]),
)

#pagebreak()

#bubbles(
  mode: "named",
  primary-participant: "Adria",
  swap-sides: true,
  show-name: true,
  ("Adria", [Hey]),
  ("Adria", [How are you guys]),
  ("Stephen", [Horrible. I have been reading Lorem Ipsum for 2 hours now]),
  ("Adria", [Oh? What does it say?]),
  ("Johannes", [Lol]),
  ("Stephen", [Roughly #lorem(50)]),
  ("Adria", [That's curious!]),
  ("Stephen", [Is it?]),
  ("Adria", [No.]),
)

#pagebreak()

#set page(margin: (x: 5cm, y: 5mm))

#bubbles(
  mode: "named",
  primary-participant: "Adria",
  name-style: (size: 20pt, fill: green),
  box-style: (fill: green.lighten(40%).desaturate(60%)),
  swap-sides: true,
  show-name: true,
  ("Adria", [Hey]),
  ("Adria", [How are you guys]),
  ("Stephen", [Horrible. I have been reading Lorem Ipsum for 2 hours now]),
  ("Adria", [Oh? What does it say?]),
  ("Johannes", [Lol]),
  ("Stephen", [Roughly #lorem(50)]),
  ("Adria", [That's curious!]),
  ("Stephen", [Is it?]),
  ("Adria", [No.]),
  ("Adria", [Hey]),
  ("Adria", [How are you guys]),
  ("Stephen", [Horrible. I have been reading Lorem Ipsum for 2 hours now]),
  ("Adria", [Oh? What does it say?]),
  ("Johannes", [Lol]),
  ("Stephen", [Roughly #lorem(50)]),
  ("Adria", [That's curious!]),
  ("Stephen", [Is it?]),
  ("Adria", [No.]),
)

#pagebreak()

#bubbles(
  mode: "named",
  primary-participant: "Sascha",
  show-name: true,
  (name: "Sascha", avatar: square(), content: [beep boop]),
  (name: "Rumiko", avatar: circle(), content: [boop beep!!]),
  (name: "Artyom", avatar: polygon.regular(vertices: 3), content: [uuuuh. meow?])
)

