#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Building our mogo mech",
  type: "build",
  author: "Jonah Fitchew",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 8),
)
= CADing the mogo mech 
As with any part of our robot we first like to start any build process by modelling the part on CAD, the benefits of this is that it provides an exact formulaic instruction to follow that theoretically works in the way we want it to, this allows us to have complex builds with parts in hard to reach places that we can prepare in advance, the reason this is so good is that it decreases rebuilds and failiures, making sure that we maximise our time and don't have to keep taking everything apart because a bearing is out of place
#image("./imgs/MogoCAD1.png")
#image("./imgs/MogoCAD2.png")

here we can see the completed CAD model of our mogo clamp which we will now build out of physical parts, 

= The build process:
As we have now finished with the CAD part of the construction process we can now create a parts list that can be used to build the clamp
- Shaft Collar (6X)
- 0.25in Spacer (4X)
- 0.5in Spacer (6X)
- 0.125in Spacer (4X)
- 2.5in Screw (3X)
- 1.5in Screw (4X)
- Nylock nut (4X)
- Small Piston (2X)
- 1x2x1x7 C channel 
The way this mogo mech works is by using pivots and pistons to keep the goal at a desired angle and so we can carry it round the field. We will now build the clamp and observe results (these finicky mechanisms often require a large amount of trial and error) 
#image("./imgs/MogoBuilt.png")
here we can see the fully built mogo clamp that we will be using to secure the mogos while we score on them around the field 
= why we built like this
\
-	This design utilises a pivoting c channel which is cut just to the length where the power is far enough away from the pivot that it provides as secure and stable clamp using the least power but also small enough that it does not add additional weight or unnecessary parts to our robot that may obstruct future mechanisms, 
-	this c channel is powered by 2 small pistons which we use to find a compromise on power, space and weight,
-- they are the smallest so the least extension. this is not an issue in this case as the clamp does not have to extend far, 
-- they are small so lighter (if marginally) than the other sizes 
-- most importantly they are the smallest so do not have to be mounted at an inconvenient spot on our drivetrain as motors/bearings are often in the way, 
-	this piston movement pushes one way and clamps the other allowing the goal to tilt in the favoured direction, we used a screw joint mounted to the c channel with shaft collars to ensure that the pivot was smooth, allowing it to use as little air as possible 

= Step 1 
in order to build this we first created the piston mount sen in the photo, this required us putting a 2.5in screw through, shaft collars and spacers and each piston in order to secure them together and provide a mounting point for the pistons above the c channel attached to the drivetrain (*the shaft collars provide this as you can screw into them at a right angle*) 
= Step 2
we then constructed the c channel which will be used to clamp the mogo into the angle we desire, as seen on the CAD used spacers to make sure that the c channel is "boxed" and will not deform under heavy use, here we deviated slightly from the CAD  and utilised bearing flats to make sure that the screw is centered when going through the c channel, this decreases friction. 
= Step 3
we then used the same method as attaching the pistons to mount the c channel on the first pivot, with screws coming out horizontally from the c channel we attached them to shaft collars that are attached by a srew running through the c channel.
= Step 4
finally we used the same method (this is a running theme throughout or building as shaft collars are execllent for moving complicated mechanisms) to attach the pistons on a second pivot at the top of the c channel, allowing us to utilise the pushing, clamping power of the pistons on the Mogo.
