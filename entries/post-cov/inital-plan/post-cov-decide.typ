#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Rebuild decisions",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 11, day: 23),
)

= Deciding on fixes
== Deciding on the mogo
For this design change we are considering:
- Clamp ability
- Build complexity
- Ease of implementation

#components.decision-matrix(
 properties: (
 (name: "Clamp ability"),
 (name: "Build complexity"),
 (name: "Ease of implementation")
 ),
 ("\n\n\n1st Class\n\n\n", 4, 3, 3),
 ("\n\n\n3rd Class\n\n\n", 3, 4, 4),
)

== Weight and stability
For this redesign, we are considering:
- stability net increase
- viability
and additionally we will consider any side effects each of these solutions provide.

#components.decision-matrix(
  properties:(
    (name: "Affect on stability"),
    (name: "Viability")
  ),
 ("\n\n\nShifting/Removing Weight\n\n\n", 3, 4),
 ("\n\n\nWidening base/Overhang reduction\n\n\n", 2, 1),
 ("\n\n\nAdding weight\n\n\n", 3, 4),
)

Removing excess weight will increase our motor performance and reduce friction coefficient but will reduce our momentum and mean we are easier to push around. Adding weight on the bottom, has the inverse effect to this but overdoing this could make us unviably heavy. Shifting weight down requires conscious effort during CAD and build phase. Widening our drive base would be impractical as it means we have to completely restart our drive and redo the friction on our drive, which is time we do not wish to spend. In terms of overhangs, our bot doesn't have any permanent overhangs and the temporary ones such as the wall stakes mech or the doinker are insignificant in terms of % mass.

== Deciding on intake improvements
We have decided that we are going to try as many things possible to improve the intake - in terms of its core problem but also just general upgrades. This consists of the changes proposed in the brainstorm section: different flex wheel configurations, chain position and use of chain reverser, plus a focus on weight saving. However, much of the improvements will come from tuning and tinkering once fully built.

= Deciding on improvements
== Two bar or direct mech
Here's a relative comparison of both a two bar mech and a direct mech, based on the following criteria:
- speed
- compactness
- weight
#components.decision-matrix(
  properties:(
    (name: "Scoring speed"),
    (name: "Compactness"),
    (name: "Weight"),
  ),
 ("\n\n\nTwo bar mech \n\n\n", 3, 4, 2),
 ("\n\n\nDirect mech\n\n\n", 3, 5, 2)
)

#admonition(type:"decision")[
  In conclusion, our proposed redesign will focus on improving the mogo clamp, improve stability by shifting down weight and trimming off excess weight and will put a special focus on improving the intake via tuning. In terms of wall stakes mechs between a direct mech and the already established two bar mech, as a team we believe that the direct mech has a lot of potential and since we have enough time to work with it and fully figure it out. An additional bonus is that is a lot more compact than existing two bars. However, we know that two bar mechs are a consistent and safe fallback.
]