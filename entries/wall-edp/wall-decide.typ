#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Deciding on a High Stakes Mech",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 25),
)

= The most consistent wins
Overall we want the mechanism that has the most reliable scoring ability in a variety of circumstances but also we want a mechanism that is fast overall. However, other factors may drastically affect the viability of a solution.
We will compare each of these qualities:
- Complexity
- Speed
- Actuation potential
- Intake inteference

#components.decision-matrix(
 properties: (
 (name: "Complexity"),
 (name: "Speed"),
 (name: "Actuation potential"),
 (name: "Intake inteference")
 ),
 ("\n\n\nPassive Redirect\n\n\n", 2, 3, 4, 1),
 ("\n\n\nPiston Redirect\n\n\n", 0, 4, 3, 4),
 ("\n\n\nLady Brown\n\n\n", 4, 5, 5, 5),
 ("\n\n\nLady Brown\n\n\n", 3, 5, 5, 4),
)