#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Deciding on a Mogo Mech",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 21),
)

= Deciding on our first stage intake
Ultimately a reliable design that can *consistently* and *accurately* intake and put rings onto stakes and mogos is our top priority when choosing a design for our first stage intake. A design that requires fewer motors and is fast also holds signifigant weighting in our decision. Ultimately, for each design we are going to be comparing:
- Consistency
- Traction
- Speed
- Motor requirements
- Build complexity
#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Traction"),
 (name: "Speed"),
 (name: "Motor Requirements"),
 (name: "Build Complexity")
 ),
 ("\n\n\nRubber Bands/Non-slip mat\n\n\n", 3, 3, 3, 3, 5),
 ("\n\n\nFlex Wheels\n\n\n", 5, 5, 4, 4, 2),
 ("\n\n\nWrist Mechanism\n\n\n", 1, 2, 1, 1, 1),
 ("\n\n\nIntake Rollers\n\n\n", 3, 3, 3, 3, 4),
)
#admonition(type:"decision")[
  From our analysis and our preconstrained requirements (outlined in the brainstorm section of the ring first stage intake), a flex wheel intake is by far the best choice for an us to implement because it is has excellent traction and grip, its ability to perform the task is consistent, it only needs one motor and we can position the flex wheels in different configurations to control points of contact when intaking the ring.
]