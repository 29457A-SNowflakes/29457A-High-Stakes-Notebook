#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "V2 Decide: First Stage Intake",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 1),
)

= Intaking Rings Efficiently
The three design solutions, which we will be comparing are:
- Keeping flex wheels
- Utilising rubber bands
- Using traction wheels
We will be comparing the following aspects:
- Consistency
- Traction
- Speed
- Build Complexity

#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Traction"),
 (name: "Speed"),
 (name: "Build Complexity")
 ),
 ("\n\n\nFlex wheels\n\n\n", 4, 4, 3, 3),
 ("\n\n\nRubber bands\n\n\n", 3, 3, 3, 4),
 ("\n\n\nTraction wheels\n\n\n", 2, 2, 2, 3),
)

= Prevent Intake from Lifting
In general, we want the intake to lift up a bit but not too much as that will limit its ability to intake rings to the next stage.
We shall compare the following designs:
- using hardstops
- banding intake down
- banding intake up
- removing pivot

The considerations for selection are:
- consistency
- intake speed
- friction
- practicality

#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Intake speed"),
 (name: "Friction"),
 (name: "Practicality")
 ),
 ("\n\n\nUsing hardstops\n\n\n", 4, 4, 3, 3),
 ("\n\n\nBanding intake up\n\n\n", 3, 3, 3, 4),
 ("\n\n\nBanding intake down\n\n\n", 2, 2, 2, 3),
 ("\n\n\nRemoving pivot\n\n\n", 1, 2, 2, 3),
)

= Considering the ramp
Our three design considerations are:
- Redoing angle on current ramp
- No ramp
- Different ramp design

We are judging these designs on:
- Consistency
- Floor contact
- Complexity

#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Floor contact"),
 (name: "Complexity")
 ),
 ("\n\n\nRedoing ramp angle\n\n\n", 4, 4, 3),
 ("\n\n\nNo ramp\n\n\n", 0, 5, 3),
 ("\n\n\nDifferent ramp\n\n\n", 2, 2, 3)
)

#components.admonition(type: "decision")[
  For our first stage intake for V2, we are going to keep our flex wheels, we are going to use hardstops to adjust the angle and redo the ramp angle so it doesn't touch the floor. 
]