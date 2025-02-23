#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V2 Decide: Ring Mech",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 1),
)
= Scoring Rings Effectively
The three design solutions, which we will be comparing are:
- Using a hooks mechanism
- Using a hood mechanism
- Using a cross between the two
We will be comparing the following aspects:
- Consistency
- Speed
- Build Complexity
- Range of Scoring Capabilities#footnote[The number of different elements it can score on: mogos, alliance and wall stakes. (Max 3 points)]

#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Speed"),
 (name: "Build Complexity"),
 (name: "Scoring Capabilities"),
 ),
 ("\n\n\nHooks\n\n\n", 4, 4, 4, 2),
 ("\n\n\nHood\n\n\n", 4, 3, 3, 1),
 ("\n\n\nHood to Hood Mech\n\n\n", 2, 2, 3, 3),
)
= Improving Scoring Speed
As mentioned in brainstorm, we decided the best way to improve scoring speed is to tune the hooks mechanism, reduce its frcition and potentially adjust gearing until the bot scores consistently and quickly. Our goal will be to fill a goal in under 8 seconds.

= Colour Sorting
If we enough time, we want to add colour sorting to our bot as it has many advantages in both autonomous routines and driver control. However, colour sorting is a stretch goal and won't be particularly useful if our scoring is slow or inconsistent anyway.
We shall be comparing the following designs:
- Velocity Control
- Piston Design
We shall be comparing the following aspects:
- Affect on cycle time #footnote[This is a binary score, 0 for yes and 1 for no effect]
- Possible actuations
- Implementation complexity
- Consistency

#components.decision-matrix(
 properties: (
 (name: "Cycle time"),
 (name: "Actuations"),
 (name: "Implementation"),
 (name: "Consistency"),
 ),
 ("\n\n\nVelocity control\n\n\n", 1, 5, 4, 3),
 ("\n\n\nPiston based\n\n\n", 0, 3, 3, 5),
)

#admonition(type: "decision")[
  We have decided that we are going to go with a hooks mech but we think that we are going to adjust the angle of the mech to be less steep. We are going to tune it and test different gearings to see which best fits our robots design constraints. If we have enough time we will add velocity control based colour sorting to our V2 bot.
]