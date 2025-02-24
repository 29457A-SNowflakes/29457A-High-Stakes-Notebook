#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Deciding on Ring Mech",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew, Jonah Fitchew",
  date: datetime(year: 2025, month: 2, day: 2),
)
= Our Ring Mech Criteria
As per described in our ring mech identify page, we want a ring mech which:
- scores rings *consistently*
- scores quickly
- colour sort rings

= Scoring rings consistently and quickly
We are comparing the following 2nd stage designs:
- Hooks Mech
- Hood Mech
- Hook Lift
- Direct Mech
We are comparing the following criteria:
- Consistency (Con)
- Scoring speed (Vel)
- Scoring options#footnote[Number of different elements it can score onto: mogos, alliance and wall stakes. (Max 3 points)] (Sco)
- Weight (Wght)
#components.decision-matrix(
 properties: (
 (name: "Con"),
 (name: "Vel"),
 (name: "Sco"),
 (name: "Wght"),
 ),
 ("\n\n\nHook Mech\n\n\n", 4, 3, 2,5),
 ("\n\n\nHood Mech\n\n\n", 4, 3, 1,3),
 ("\n\n\nHook Lift\n\n\n", 4, 4, 3,1),
 ("\n\n\nDirect Mech\n\n\n", 3, 5, 3,2),
)

== Colour Sorting
We are comparing the following designs:
- Piston Puncher
- Velocity Control
- Redirect
We are comparing the following criteria:
- Consistency (Con)
- Effect on scoring speed (Cycl)
- Interference with other systems (Int)
#components.decision-matrix(
 properties: (
 (name: "Con"),
 (name: "Cycl"),
 (name: "Int"),
 ),
 ("\n\n\nPiston Puncher\n\n\n", 4, 5, 1),
 ("\n\n\nVelocity Control\n\n\n", 3, 4 ,5),
 ("\n\n\nRedirect\n\n\n", 5, 1, 2),
)
#admonition(type: "decision")[
  We have decided that we want to implement a hooks mechanism for our 2nd stage and we are going to implement velocity control based colour sorting.
]