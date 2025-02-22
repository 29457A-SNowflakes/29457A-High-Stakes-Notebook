#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V2 Brainstorming: Ring Mech",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Jonah Fitchew",
  date: datetime(year: 2024, month: 10, day: 2),
)
= Scoring Consistently
There are a couple of ways, which we could approach scoring rings onto clamped mogos. However, it is *incredbily important* that it does so consistently.

== Utilising hooks
Our current solution involves transitioning from a ramp to picking up rings using a hook conveyor belt system to score rings directly onto the mogos.
#image("./imgs/hooks mech.png",height:250pt)
#components.pro-con(
  pros: [
    - Fast
    - Hooks can score directly onto alliance stakes
  ],
  cons: [
    - Tuning can take time
  ]
)

== Utilising a hood
Another option is to transition to a second stage intake made of flex wheels. This transitions into scoring the ring onto the stake by using a trapdoor mechanism, which aligns a ring into the correct position and applies force so that the ring can be pushed down onto the mogo.
#image("./imgs/hoodmech.png",height:250pt)
#components.pro-con(
  pros: [
    - Fairly fast
    - Works well with redirects
  ],
  cons: [
    - Less consistent in our testing than hooks
  ]
)

== Belt to hook transfer
A third consideration is to use a flex wheel conveyor belt, like in a hood based solution transition to a singular hook, which scores rings onto stakes. This three stage approach can potentially be used to also score rings onto alliance stakes. However, adding an extra transition point may introduce points of failure to this system.
#image("./imgs/hood with hooks.png",height:250pt)
#components.pro-con(
  pros: [
    - Can potentially be used to score onto rings onto wall stakes
  ],
  cons: [
    - Potentially increased points of failure
  ]
)

= Improving Scoring Speed 
== Changing gearing
The main way to change the scoring speed is to change the gearing to give greater rpm. However, doing that comes at the proportional cost of torque, which may be useful to help force stakes onto the rings. Currently, for our bot we use 6T gears and 600rpm.
#grid(columns: 2, gutter: 20pt,
    [#figure(image("./imgs/vexmotors.png", height: 110pt), caption: [Green cartridge motor #link("https://kb.vex.com/hc/en-us/articles/360035591332-V5-Motor-Overview")[(credit)]])],
    [#figure(image("./imgs/gearratios.png", height: 110pt), caption: [Diagram which shows different gear ratios #link("https://manual.eg.poly.edu/index.php/VEX_Building_Guide")[(credit)]])],
  )
#components.pro-con(
  pros: [
    - Decreases cycle time
  ],
  cons: [
    - May reduce consistency
  ]
)
#admonition(type: "note")[
  We will likely have to test and tune to see what rpm and gearing allows for faster scoring, whilst not sacrificing consistency.
]
= Exploring Colour Sort
The final consideration is implementing colour sorting. However, this is less important than having reliable scoring and in addition requires the usage of an optical sensor to detect ring colour.
== Velocity Control
The premise of this type colour sorting is to use the momentum of a ring to either allow it to score as normal or alter its trajectory so that it misses the stake. To skip a ring, when it is at the peak of its arc, the hooks momentarily move in the opposite direction before continuing as normal. This motion causes the rings to spin forwards and up, as opposed to downwards trajectory normally provided by the full arc of the hooks. This momentary stuttering when rejecting a ring increases cycle times slightly but it is worth it for the reward of not accidentally scoring points for the opposing alliance.
#figure([#image("./imgs/velocity control.png", height: 250pt)], caption: [Diagram showing ring and hook path during rejection])
#components.pro-con(
  pros: [
    - Colour sorts rings fairly reliably
    - Easy to implement
  ],
  cons: [
    - Needs optical sensor
    - Slightly increased cycle time
  ]
)
== Piston Based
This type of colour sorting uses a piston to prevent the ring from being pushed downwards onto the stake and also changes the ring trajectory so that it misses. Unlike velocity control, this doesn't affect ring cycling times at all, which is good. However, this implementation requires piston actuations, which means that more PSI is used in a game, but presuming no more than 5 actuations happen per game this should be sufficient. 
#figure([#image("./imgs/piston puncher.png", height: 250pt)], caption: [Diagram showing piston puncher in action])
#admonition(type: "example")[#link("https://youtu.be/Aa6HvUxea9Q?si=eKjjhOrP2_xSk9Jb&t=40")[18522R]'s colour sorter is a good example of this mechanism.]
#components.pro-con(
  pros: [
    - Colour sorts rings very consistently
    - Better cycle time
  ],
  cons: [
    - Needs optical sensor
    - Requires PSI
  ]
)