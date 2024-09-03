#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "VEX Robotics Drivetrain Selection",
  type: "decide",
  date: datetime(year: 2024, month: 08, day: 6),
  author: "Jonah Fitchew, Daniel da Silva"
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
 (name: "Manoeuvrability"),
 (name: "Stability"),
 (name: "Ease of build"),
 (name: "Size of Wheels"),
 (name: "Gear ratio achievable")
 ),
 ("\n\n\nDifferential\n\n\n", 3, 5, 5, 4, 5),
 ("\n\n\nHolonomic\n\n\n", 4, 4, 2, 4, 3),
)
For our current purposes and team requirements, a Differential Drive is the most optimal drive to consider using. This is because of their simplicity; which we feel is valuable this early in the season since most other drives suffer from odd motor placements or other restrictions which make designing around them more complex, the power they provide; which is always helpful for pushing tasks, and their stability means we are less likely to tip over mid match. In addition, we have deemed that the downsides of a Differential Drive are either not substantial or can be compensated for by other parts of the drive. For example the lost manoeuverability can be made up for by incorporating omniwheels into our drivetrain.
\
\
\
=== Choosing Wheel Amount
Choosing the correct amount of wheels is an important consideration when designing the drivetrain. It is an extra way to achieve an optimal balance between torque and agility. The three main considerations for wheel ammount are:
- Traction
- Manoeuvrability
- Complexity
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
From our analysis we decided that an 8 Wheel Drive is our best choice, since it synergises most strongly with a Differential Drive. Combining these two gives us great freedom for gearing, allowing greater control over torque and speed. Additionally, both elements will contribute to a higher power drivetrain. The simplicity of the Differential Drive compensates for the higher complexity of having 8 wheels. Unfortunately, neither of these design elements give us the greatest manoeuverability, which is the greatest problem with our design at this current stage. This can be addressed with the wheels we choose, since having 8 Wheels gives us the most flexibility over combinations of wheel types.
\
\
\
\
\
\
\
\
=== Wheel types
The combination of an 8 Wheel Drive and Differential Drive gives our bot great power, whilst also being relatively simple to build. The main consideration for the combination of wheels, which we choose is that they give our bot greater manoeuverability since that is the main problem with our current solution.
#components.decision-matrix(
 properties: (
 (name: "Manoeuvrability"),
 (name: "Traction")
 ),
 ("\n\n\nAll Traction Wheels\n\n\n", 1, 4),
 ("\n\n\nMixture\n\n\n", 3, 3),
 ("\n\n\nAll Omniwheel\n\n\n", 4, 1),
)
We have decided to go for a combination of 6 Omniwheels and 2 Traction Wheels, positioned third from the front. Having this wheel in this position means we still resist pushing from the sides but allows us to have greater manoeuverability thanks to the 6 omniwheels. Our experience from last season told us that placing the traction wheels there was best for turning and according to #link("https://wiki.purduesigbots.com/hardware/misc.-vex-parts-1/motion/traction-wheels")[purduesigbots] central placements helps reduce unwanted sideways movement. Another consideration was to place the wheels in a diagonal configuration, but experience told us that middle back was ultimately the superior choice.

=== Drive Gearing
The final consideration for our drive train will be the gearing we go for. This is the final way in which we can alter our drive train in order to get its torque and speed within desired parameters. We decided to use blue cartridge motors to give us 600 rpm, which we can gear down to 450rpm, with 3:4 gearing, to further increase torque but still have a good speed. We chose 69.85mm (2.75in) wheels to have greater power, so we don't compromise acceleration from the higher rpm. We didn't go for direct drive since we didn't want 200rpm or 600rpm.