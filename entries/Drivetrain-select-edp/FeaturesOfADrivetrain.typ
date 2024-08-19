#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "VEX Robotics Drivetrain Selection",
  type: "decide",
  date: datetime(year: 2024, month: 08, day: 18),
  author: "Jonah Fitchew"
)
#set quote(block: true)
= Drivetrain Selection Process
The process of selecting a drivetrain is a teams first thoughts when considering the needs for a robot in any given VEX season.
The benefits and drawbacks of all types of drivetrain are considered at this point of the design cycle, in the context of the current game of course, many different options are considered as the different parts that VEX provides can be combined in many different ways in order to give each drivetrain a different characteristic as it were. 
== Considerations for any given drivetrain
At the beginning of any season the needs of the three main aspects of a drivetrain are pitted against each other in the context of the needs of the current game, these three main features are: 
- Torque 
- Speed 
- Size 
\ 
#components.decision-matrix(
 properties: (
 (name: "Manouverability"),
 (name: "Stability"),
 (name: "Ease of build"),
 (name: "Size of Wheels"),
 (name: "gear ratio achievable")
 ),
 ("\n\n\nDifferential\n\n\n", 3, 5, 5, 4, 5),
 ("\n\n\nMecanum\n\n\n", 5, 3, 2, 1, 1),
 ("\n\n\nOmni\n\n\n", 4, 4, 2, 4, 3),
)
