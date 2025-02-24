#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Looking at Drivetrain",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 5),
)
= Drive Analysis
We have decided to keep our drivetrain base the same because we spent a lot of time ensuring it had good build quality. However, we are going to reconsider aspects of our drivetrain.
\
Below are the changes that we have considered and reevaluated in terms of existing systems.
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
== Reconsidering the type of mogo clamp/mech used.
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
  In summary, our current plans in terms of rebuilding is to:
  - Keep the drivebase the same (but redo drive bracing)
  - Keep mogo mech mechanism but change lever class from 1 to 3 and tune clamping angle
  - Keep first stage intake but lower profile
  - Add a wall stakes mech (time permitting)
  - Get colour sorting working (time permitting)
]