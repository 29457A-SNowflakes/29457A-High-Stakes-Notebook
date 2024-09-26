#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Planning Autonomous: JWS",
  type: "brainstorm",
  date: datetime(year: 2024, month: 08, day: 01),
  author: "Daniel Dew",
  witness: "Thomas Robb"
)
= Goals for Autonomous
While we have considered in depth the sensors we want to use for autonomous -- knowing where the robot is is only half the battle. Planning and implementing autonomous can be an extremely difficult task, even with perfect sensor usage.
\
The first step to a effective auton is establishing clear and understandable goals, these can be split into 2 main parts: securing ABP#footnote([Autonomous Bonus Point]), and securing AWPs#footnote([Autonomous Win Point(s)]).
== ABP
=== Overview
To secure the ABP, an alliance must score more points during the 15s autonomous period than the other team, while not breaking _any_ rules @manual. This is a particularly difficult challenge as there are so many ways to score in VEX; fortunately, our design narrows our possibilities to the (relatively) simple task of scoring rings on mogos.
=== Our ABP Goals
Ideally, to ensure the ABP, we should attempt to *score at least 3 rings* on mogos, securing a total of 6 points (3 for rings, 2 for top ring). This is especially achievable as there are at least 3 rings within (relatively) easy reach of the starting line.
== AWP
=== Overview & Our AWP Goals
AWP is a more defined goal, although considerably harder to achieve; this is becasue the manual specifies the goals to achieve -- for AWP (at regionals) we need to:
+ At least 3 rings scored
+ A minimum of _2_ stakes with at least _1_ ring scored on them
+ Neither alliance contacting/breaking the plane of the starting line
+ At least 1 robot contacting the ladder (at the end)
@manual

= Planning Route
I chose to first draw out a plan for what we would like our autonomous routine to acheive and how; they are heavily inspired by the any spectactular autons that already exist and have been showcased at MOA or Lobstah Bowl.
#align(center)[
 #grid(columns: 2, gutter: 20pt, [
  #figure(image("./support-plan.png", height: 200pt), caption: [The sketched plan for a 'support' (ABP Securing) auton])
 ],
 [
  #figure(image("./rush-plan.png", height: 200pt), caption: [The sketched plan for the AWP 'rush' (grabs far mogo) auton])
 ]) 
]
Using these plans, I can get a sense of what sort of movements will be required.