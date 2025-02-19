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
== Changing gearing?

= Exploring colour sort
== Velocity Control 
== Piston Based
