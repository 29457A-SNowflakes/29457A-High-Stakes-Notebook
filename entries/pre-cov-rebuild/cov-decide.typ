#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Deciding on Improvements for V2",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 5),
)

= The interest of time
In order to compete as effectively as we can we want to improve our overall performance as much as possible. The three constiuent parts that affect this broadly fall under one or more of these 3 categories:
- robot design
- autonomous routines
- driver skill.
\
Ultimately, effective time management of these three aspects is vital for robotic success within the world of VEX. It is also important to note that we can not overcommit ourselves to VEX or work inconsistently on this project in order not to overburden the team and cause social and academic burnout.
\
\
Additionally, we must consider the order in which we implement changes noting that rebuilding tasks can generally not be done in parallel with driver practice or autonomous. Also building should be done before programming because its important that for as much time as possible we have a functional robot within the scope of the game's meta because that allows for more practice time and also more time to tune auton and secondly it is taken as a given that any changes in terms of drivers practice or autonomous routine will be renderred useless because of the many micro adjustments in a rebuild.
\
\
That all being said we are most likely to approach the time before the upcoming competition by firstly recadding/building then improving autonomous and getting in drivers practice simultaneously. Below we shall discuss what we have planned to change in terms of our robot's design based on performance in the most recent competition (as of time of writing), which was the JWS regional.
\
\
= Robot Analysis
Before we can make any changes we need to decide what needs to be changed. We have concluded that there's nothing wrong with our drive base since we took a lot of care into getting that right the first time and we found that our drive worked well for us in matches. However, in order to make room for the changes, which we want to do to the bot we will almost certainly need to redo the drive bracing.\
\
 One of the things which is being reworked is the mogo mech: we are going for the same dual piston design architecture but with a vertical layout rather than a pivot based design. This will *drastically* change the angle at which the mogo is clamped.\
 \
 However, this ties into the changes we are planning to make to our intake and ring mech. We are planning to retain our current first stage design but we want to lower the profile of the mech. We are also considering implementing a wall stakes mechanism in our second iteration.
\
Below are the changes that we have considered and reevaluated in terms of existing systems.
\
\
\
== Differential vs Holonomic
#components.decision-matrix(
 properties: (
 (name: "Manoeuvrability"),
 (name: "Stability"),
 (name: "Complexity"),
 (name: "Wheel Size"),
 (name: "Gear ratio achievable")
 ),
 ("\n\n\nDifferential\n\n\n", 3, 5, 5, 4, 5),
 ("\n\n\nHolonomic\n\n\n", 4, 4, 2, 4, 2),
)
\
== Looking again at the number of wheel's used
#components.decision-matrix(
 properties: (
 (name: "Manoeuvrability"),
 (name: "Traction"),
 (name: "Complexity"),
 (name: "Gear ratio achievable")
 ),
 ("\n\n\n4 Wheels\n\n\n", 5, 2, 5, 3),
 ("\n\n\n6 Wheels\n\n\n", 4, 3, 4, 3),
 ("\n\n\n8 Wheels\n\n\n", 3, 5, 3, 5),
)
\
== Reconsidering the types of wheels which we use.
#components.decision-matrix(
 properties: (
 (name: "Manoeuvrability"),
 (name: "Traction")
 ),
 ("\n\n\nAll Traction Wheels\n\n\n", 1, 4),
 ("\n\n\nMixture\n\n\n", 3, 3),
 ("\n\n\nAll Omniwheel\n\n\n", 4, 1),
)
\
== Reconsidering the type of mogo mech used.
#components.decision-matrix(
 properties: (
 (name: "Grip"),
 (name: "Actuation amount"),
 (name: "Build ease"),
 (name: "Handling"),
 (name: "Activation speed"),
 (name: "Mogo clamping ability"),
 (name: "Weight")
 ),
 ("\n\n\nPiston\n\n\n", 5, 3, 4, 5, 4, 4, 4),
 ("\n\n\nMotor\n\n\n", 3, 4, 3, 4, 3, 3, 3),
 ("\n\n\nPlough\n\n\n", 1, 5, 5, 1, 5, 0, 5),
)
== Reconsidering our second stage intake
#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Speed"),
 (name: "Weight"),
 (name: "Wall Stakes Ability"),
 ),
 ("\n\n\nHood Mech\n\n\n", 4, 3, 3, 3),
 ("\n\n\nHook Mech\n\n\n", 4, 4, 4, 5),
)

#admonition(type:"decision")[
  Our current plans in terms of rebuilding is to:
  - Keep the drivebase the same (but redo drive bracing)
  - Keep mogo mech mechanism but change lever class from 1 to 3 and tune clamping angle
  - Keep first stage intake but lower profile
  - Redo ring mech angle 
  - Add a wall stakes mech (time permitting)
  - Get colour sorting working (time permitting)
]