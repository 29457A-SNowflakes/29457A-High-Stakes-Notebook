#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Building the Intake for V1",
  type: "build",
  author: "Jonah Fitchew",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 21),
)
= CADing the Intake:
As with all other elements of our robot our intake started life as a digital model on the screen so that we could think through how it will work in person, but as we identified that the ring would have to go through a 2 stage process we decided to split this CAD into two parts. First focusing on the intial rollers that bring the ring into our robot, the process for CADing this involved slightly more skill than the other elements of the robot due to the necessity that the angles of slope and flex wheel height is correct.
#image("./imgs/IntakeFirstStageCAD.png")
Here we can see the detailed CAD model of the initial first stage of our intake, which gives us a detailed plan for how to construct the physical mechanism. As seen above, this design looks much like the designs of previous seasons, in particular Tipping Point, due to similarities in how game elements respond to manipulation from year to year.

= Constructing the Intake:
As with all elements of our robot there are clear steps to be followed to build our intake and these are shown here:
== Parts list:
- 1 x 2 x 15 C-Channel (x3)
- 1 x 2 x 15 L-Channel 
- 0.5in Spacers (x12)
- 0.25in Spacers (x12)
- 1.5in Screws (x14)
- 2in Flex Wheels (x4)
- 8in High Strength Shaft
- Motor with blue cartridge
- High Strength Spacers (x15)
- High Strength Pillow Bearing (x2)

== Step 1
Construct the C-Channel frame for the intake to be built within, we used the same method as the drivetrain "squaring" to makes sure all C-Channels are parallel or perpendicular to each other and all bracing will work as intended. We also utilised boxing, which uses spacers on every screwlink on the frame to ensure stability and make sure the C-Channel does not bend.

== Step 2:
We then added the bearings and more bracing to the front of the intake as a "ram bar" because in match situations often the robot is subjected to a large amount of force and abuse at the front, this bracing enables us to not break halfway through a game. The bearings allow for lower friction which means the intake can work more desireably.
== Step 3:
Finally we added the flex wheels and the motor to the rest of the frame, we used a 6T sprocket and chain to link the motor to the axle that the flex wheels are on on a 1:1 ratio, to make sure the intake is running at a suitably fast speed to pick up rings at the desired rate.
= Why we built like this:
== C-Channels
We used a C-Channel frame because this frame is lightweight and rigid allowing for weight savings without the cost of a flimsy mechanism, we also have a lot on hand so extra purchases were not necessary.
== High Strength Shafts
We used High Strength Shafts since they are incredibly rigid and help mitigate bending, which could cause friction. Flex wheels already have an insert to convert their hexagonal centre to one that fits on a high strength shaft. Using low strength shafts means that we would have to add a further insert, which could be the source of more friction.
== Flex Wheels
We went with flex wheels because we had them on hand from last season, which *minimises costs*. Also as rings are made of a similar material to triballs we felt that the grip flex wheels provide would yield optimal performance since they worked well in last year's game. Additionally they are also fairly low profile and lightweight.
