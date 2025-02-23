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

== Wheel size and amount
We are considering changing the number of wheels on our drive and their size.\
We currently have 8 2.75" in wheels but are considering changing that in favour of 6 3.25" wheels.
The following considerations are as follows:
- Top Speed (Vel)
- Acceleration (Acc)
#components.decision-matrix(
 properties: (
 (name: "Vel"),
 (name: "Acc"),
 ),
 ("\n\n\nSmaller Wheels\n\n\n", 2, 3),
 ("\n\n\nLarger Wheels\n\n\n", 4, 3),
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

== Gearing
There are two major decisions in terms of gearing.
=== Changing drive RPM
The first of these is if we should switch from 450rpm to 400rpm, this decision will take into account our choice to change wheel size as well.
We are comparing the following aspects of the design:
- Top Speed (Vel)
- Acceleration (Acc)
- Interference with other systems (Int)

#components.decision-matrix(
 properties: (
 (name: "Vel"),
 (name: "Acc"),
 (name: "Int"),
 ),
 ("\n\n\nKeeping 450\n\n\n", 4, 3, 1),
 ("\n\n\nSwitching to 400\n\n\n", 3, 4, 5),
)

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