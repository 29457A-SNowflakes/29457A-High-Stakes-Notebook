#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Deciding on Drivetrain Aspects",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew, Jonah Fitchew",
  date: datetime(year: 2025, month: 2, day: 1),
)
= Our Drive Criteria
As setout in identify we want a drive, which meets the following criteria:
- Must have optimised acceleration and speed
- Must provide good traction
- Should offer good manoeuvrability
- Shouldn't interfere substantially with other systems (such as mogo mech)

== Deciding on Configuration 
We are considering:
- H-Drive
- X-Drive
- Differential Drive
We are comparing the following aspects:
- Top Speed (Vel)
- Acceleration (Acc)
- Traction (Tra)
- Manoeuvrability (Man)
- Interference with other systems (Int)
#components.decision-matrix(
 properties: (
 (name: "Vel"),
 (name: "Acc"),
 (name: "Tra"),
 (name: "Man"),
 (name: "Int")
 ),
 ("\n\n\nH-Drive\n\n\n", 4, 3, 4, 4,3),
 ("\n\n\nX-Drive\n\n\n", 3, 3, 2, 5, 2),
 ("\n\n\nDifferential\n\n\n", 4, 4, 5, 3, 5),
)

== Usage of traction wheels
We are considering having a full omni drive or having some traction wheels positioned centrally.
We are comparing each design in the following criteria:
- Traction (Tra)
- Manoeuvrability (Man)

#components.decision-matrix(
 properties: (
 (name: "Tra"),
 (name: "Man")
 ),
 ("\n\n\nFull Omniwheel\n\n\n", 4, 5),
 ("\n\n\nCentral traction wheels\n\n\n", 5, 3),
)

== Gear positions
We are considering switching from a wheel outside layout to a wheel inside layout.
For this design decision we are comparing:
- Turning circle (Rot)
- Base of Support (Stab)
#components.decision-matrix(
 properties: (
 (name: "Rot"),
 (name: "Stab"),
 ),
 ("\n\n\nWheels Outside\n\n\n", 3, 4),
 ("\n\n\nWheels Inside\n\n\n", 5, 3),
)

== Deciding on Drive Gearing
We are comparing:
- Current Layout (450rpm on 2.75in)
- 400rpm on 3.25in
- 300rpm on 4in 
- 600rpm on 2.75in
- 300rpm on 3.25in

== Implementing Motor Stacking
We are deciding if want to implement motor stacking or not.
We are comparing the following aspects of this choice.
- Interference with other systems (Int)
- Build Complexity (Comp)

#components.decision-matrix(
 properties: (
 (name: "Int"),
 (name: "Comp"),
 ),
 ("\n\n\nFlat Motors\n\n\n", 2, 3),
 ("\n\n\nMotor Stacking\n\n\n", 4, 2),
)

#admonition(type: "decision")[
  Our new drivetrain will be a fully omniwheel differential drive with 6 3.75" wheels. The gearing on the drive will be 400rpm and the gears on the wheel pods will face outwards for a sharper turning circle. We also plan to stack the back two drive motors.
]