#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Building our Mogo Mech",
  type: "build",
  author: "Jonah Fitchew",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 16),
)
= CADing The Mogo Mech 
As with any part of our robot we first like to start any build process by modelling the parts on CAD. The benefits of this is that it provides an exact formulaic instruction to follow that theoretically works in the way we want it to. This allows us to ensure that a complicated build will work before comitting any time or money to the idea.
#align(center)[
  #grid(columns: 2, gutter: 20pt,
    [#figure(image("./imgs/MogoCAD1.png", height: 120pt, width: 120pt), caption: [Completed Mogo CAD side view])],
    [#figure(image("./imgs/MogoCAD2.png", height: 120pt, width: 120pt), caption: [ Completed Mogo CAD])],
  )
]

Here we can see the completed CAD model of our mogo clamp which we will now build out of physical parts, 

= The build process:
As we have now finished with the CAD part of the construction process we can now create a parts list that can be used to build the clamp
- Shaft collar (6x)
- 0.25in Spacer (4x)
- 0.5in Spacer (6x)
- 0.125in Spacer (4x)
- 2.5in Screw (3x)
- 1.5in Screw (4x)
- Nylock nut (4x)
- Small piston (2x)
- 1x2x1x7 C-Channel 
The way this mogo mech works is by using pivots and pistons to keep the goal at a desired angle and position relative to our robot, so we can carry it round the field. We will now build the clamp and observe results: testing mechanisms is a crucial step as it is almost impossible to get an untested mechanism to work first try.

= Why we built like this:
== Pivot
This design utilises a pivoting C-Channel which is cut just to the length where the power is far enough away from the pivot that it provides as secure and stable clamp using the least power but also small enough that it does not add additional weight or unnecessary parts to our robot that may obstruct future mechanisms 
== Pistons
The C-Channel is powered by 2 small pistons, which we used as a compromise between power, space and weight. Small pistons provide the least extensio, which is not an issue in this case as the clamp does not have to extend far. Since they are smaller they are marginally lighter than the other sizes. However, the greatest benefit of using a small piston, is they take up the least volume on the bot and so do not have to be mounted at an inconvenient spot on our drivetrain meaning we can prioritise the placement of motors and bearings.
== Efficiency
This piston movement pushes one way and clamps the other allowing the goal to tilt in the favoured direction, we used a screw joint mounted to the C-Channel with shaft collars to ensure that the pivot was smooth, allowing it to use as little air as possible.
= Builing the Bot
For all our builds, we try follow the building principles, which we outlined in *Maintaining Building Practises*.
== Step 1 //jonah move the photos to below the relevant step please I can't visualise this
In order to build this we first created the piston mount seen in the photo, this required us putting a 2.5in screw through shaft collars and spacers and each piston in order to secure them together and provide a mounting point for the pistons above the C-Channel attached to the drivetrain (*the shaft collars provide this as you can screw into them at a right angle*) 
== Step 2
We then constructed the C-Channel, which will be used to clamp the mogo into the angle we desire. As seen on the CAD we used spacers to make sure that the C-Channel is boxed, which is part of building best practises, and will not deform under heavy use. Here we deviated slightly from the CAD and utilised bearing flats because originally the screw wasn't centered when going through the C-Channel, which would have increased friction which is bad. 
== Step 3
We then used the same method as attaching the pistons to mount the C-Channel on the first pivot, with screws coming out horizontally from the C-Channel we attached them to shaft collars that are attached by a srew running through the C-Channel.
== Step 4
Finally we used the same method to attach the pistons on a second pivot at the top of the C-Channel, allowing us to utilise the pushing, clamping power of the pistons on the Mogo.

#align(center)[
  #grid(columns: 2, gutter: 20pt,
    [#figure(image("./imgs/MogoMechBuilt.jpg", height: 150pt, width: 120pt), caption: [Here is the mogo clamp that we built using the instructions and parts listed here ])],
    [#figure(image("./imgs/MogoMechBuiltExtended.jpg", height: 150pt, width: 120pt), caption: [Here is it extended as it would be with a mogo inside])],
  )
]
