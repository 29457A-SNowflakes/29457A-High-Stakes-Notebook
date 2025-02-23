#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Brainstorming Ring Mechs",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Aubert Seysses, Daniel Dew",
  date: datetime(year: 2025, month: 2, day: 2),
)
= Scoring Consistently
The first and most important criteria is that our bot can score rings consistently for this we shall look at the different types of second stage, which we could use.

== Utilising hooks
Our current solutions uses hooks on a ramp, which scoops up rings up off the ramp and directly forces them downwards onto mogos or alliance stakes.
#image("./imgs/hooks mech.png",height:250pt)
#components.pro-con(
  pros: [
    - Lends itself to a variety of colour sorting techniques
    - Hooks can score directly onto alliance stakes
  ],
  cons: [
    - Tuning can take time
  ]
)

== Utilising a hood
Another option is to transition to a second stage intake made of flex wheels. A trapdoor mechanism forces rings down onto stakes.
#image("./imgs/hoodmech.png",height:250pt)
#components.pro-con(
  pros: [
    - Works better with redirecting mechanisms
    - Quite quick
  ],
  cons: [
    - Less consistent in our testing than hooks
  ]
)

== 2654E Style Mechanism
Whilst similar in many ways to a hooks mech, the premise of this mechanism is that the conveyor can lift upwards in order to score onto wallstakes. Unlike a two bar, this mech is slightly worse at rush autons, which are important in elimination matches.
#image("./imgs/hood with hooks.png",height:250pt)
#components.pro-con(
  pros: [
    - Can be used to score onto both wallstakes and mogos
  ],
  cons: [
    - Heavier than normal hooks mech
    - Requires driver to commit to scoring to either ring onto stakes or a goal immediately
    - Slightly worse at rushes
    - Can't score onto other bot's possessed mogos
    - Can't descore wall stakes
  ]
)

== Direct Mech
1028A's 2nd stage/wallstake mech shares some similarities to Echo's mech. The core difference is that it has rings passing through a bucket mechanism, which utilises a 1-Way lock, allowing rings to pass through normally in order to be scored onto mogos. However, if you want to score onto wallstakes using this bot, the hooks reverse and the bucket lifts and quickly folds out to an ideal wall stake scoring position.
#components.pro-con(
  pros: [
    - Can be used to score onto both wallstakes and mogos
    - Scores extremely quickly
  ],
  cons: [
    - Slightly worse at rushes
    - Can't score onto other bot's possessed mogos
    - Can't descore wall stakes
  ]
)

= Colour Sorting
Our second requirement for our ring mech is that it can consistently filter off incorrect rings.
== Piston Based
This ring sorting works by physically blocking the ring from scoring onto mogos.
#figure([#image("./imgs/piston puncher.png", height: 250pt)], caption: [Diagram showing piston puncher in action])
#admonition(type: "example")[#link("https://youtu.be/Aa6HvUxea9Q?si=eKjjhOrP2_xSk9Jb&t=40")[18522R]'s colour sorter is an example of this.]
#components.pro-con(
  pros: [
    - Colour sorts rings very consistently
    - No effect on cycle time
  ],
  cons: [
    - Requires PSI
    - Running tubing to the pneumatic tanks is quite difficult
  ]
)
== Velocity Control
This colour sorting works by reversing the hooks briefly, whilst at the top of the hook arc.
#figure([#image("./imgs/velocity control.png", height: 250pt)], caption: [Diagram showing ring and hook path during rejection])
#components.pro-con(
  pros: [
    - Colour sorts rings fairly reliably
    - Easy to implement
  ],
  cons: [
    - Marignally increased cycle time
  ]
)
== Redirect mech
This ring sorting works by reversing the intake, which redirects the ring onto a conveyor allowing the ring to fall off the robot.
#figure([#image("./imgs/piston puncher.png", height: 250pt)], caption: [Diagram showing piston puncher in action])
#components.pro-con(
  pros: [
    - Almost 100% consistent sorting
    - Can be done on both hood and hook style mechs
  ],
  cons: [
    - Slowest
  ]
)