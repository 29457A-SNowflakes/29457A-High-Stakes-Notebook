#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Designing V3 of the robot",
  type: "build",
  author: "Aubert Seysses",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 11, day: 20),
)

== Recap of all issues with curent robot: 
- Center of mass is too high (tips a bit under rapid acceleration)
- Robot is too heavy 
- Intake ramp was bent manually therefore the curve is suboptimal 
- Mogo mech was weak
= Design
== Drivetrain 
We decided to keep the base drivetrain because we are very comfortable with the speed and acceleration we get from our current gear ratios. The drive's size is 30x30 holes plus the length of the intake funnels. We want to cut down the robot size slightly since a smaller bot is more manoueverable and it gives us more room to expand in our chosen direction. We are going to cut the excess 2 holes of metal we have on the front of the robot. This will reduce the space available for the intake but not reduce it enough to be a problem.

To better accomodate the first stage intake, we have opted to get rid of the front brace. After carfully weighing the pros and cons, we decided that brace was largely redundant due to the 2 other braces on the bot. Additionally it reduces the mass of the robot, which leads to better acceleration given that $"acceleration / ms"^(-2) = "resultant force / N"/"mass / kg"$. Since our drivetrain's pushing force is limited by the motor's power output, the lighter our bot is the better its acceleration will be. We also plan to use 2 odometry pods for accurate horizontal and vertical positioning, which allow our autons to be more consistent.

//screen shot of drive cad 1-2 angles 
== First Stage Intake and Transition 
=== Ramp:
For the ramp we decided to go with pieces of laser cut Delrin rather than the heat bent polycarbonate plate, which we used last time. The greatest advantage of this method is that laser cutting is more precise, which means that ring alignment is more consistent. Additionally, the curvature of the laser cut pieces matches the ring better making for a smoother and more efficient intake process.
=== First Stage and Intake Rollers
We made the first stage on a level plane as this gave more consistent traction while intaking the rings. We also used Delrin to brace the whole thing.
 
=== Gear Reversal 
We elected to have both the first and second stage intake be powered by the same motor, which means that we can allocate one motor to the wall stakes mech. The only problem with this approach is that the intake rollers and hooks have to spin in opposite directions. We also faced this problem in V2 of the robot. A geared chain reversal was a simple and effective way we used to solve this issue.
//diagram of chain reversal and rotation directions 
===
A chain reversal presents 2 main problems: friction and tensioning. Typically, when dealing with the meshing of 6 tooth sprockets and gears you connect them using low strength shaft, which are very bad for friction. We solved this problem by using a creative combination of inserts to couple a gear and a sprocket together as shown below:
//cad of coupling the things
===
This allows us to use screw joints, which produce far less friction than the low strength shaft joint.
The chain needs to be under a bit of tension in order to work properly otherwise the chain will simply skip. This normally isn't a problem although there are times that the intake needs to be able to lift up in order to grab the top ring on a 2 high stack during autons. Therefore the chain needs to be under tension while in 2 positions.

Most people solve this problem by using a tensioner: a piece of metal on a screwjoint with spacers to reduce friction. It is rubber banded outwards, to provide tension and remove slack. Bicycles have a similar mechanism used to keep the chain under tension no matter which gear that the bike is in. We chose a different solution as tensioners can fail which could potentially *ruin our ability to score*. Our solution was to have the chain go to and from the intake roller while spining about the joint about which the first stage intake is mounted this meant that the 2 sprockets remain equidistant regardless of the angle and this design is less likely to fail.
#figure([#image("./imgs/Bike.jpg", height: 100pt)], caption: [#link("https://en.wikipedia.org/wiki/Tensioner")[Example of tensioner on bike]])
//#image("", height: 210pt)//
 // screen shot of th whole area i just discribed 
 
== Second Stage Intake
The second stage intake remains largely unchanged, being made of many chain links with hooks to carry the rings to the top of the conveyor. It is run on 24 tooth sprockets, as this gives the preferred chain speed. Futhermore, we put flex wheels at the top of conveyor, this helps score rings onto the mogo since flex wheels provide a lot of traction. The frame is slightly altered in the details but overall remains the same: central pillar now made of 1 x 1 instead of 2x C-Chan because it is not weight bearing therefore 1 x 1 is strong enough for this purpose and much lighter than C-Channel. 
//picture of second stage intake cad
== Mogo Mech 
For the mogo mech we reverted to a 1st class lever, while the previous lever was more compact, the trade off in required PSI was not worth it, as it drastically limited the number of actuations available to us during a match. It also meant that when accelerating the mogo would tip backwards slightly, which made ring scoring very inconsistent. This mogo clamp was designed with the flaws of the last one in mind. As a result the design has a big emphasis on taking advantage of leverage so it uses very little PSI, whilst still providing a secure grip. We are very proud of our new system, which was designed by our team leader Daniel Dew, who also created the CAD version of it as seen below: 
//diagram or picture of CAD to anotated to explain forces
==== 
The mogo clamp has 2 sets of prongs: a first set of prongs inset further into the robot - these have very good leverage and so help us to use less PSI. A second set of prongs serve simply to secure the mogo. These prongs apply on pressure on the mogo and instead act more like a seat belt or hard stop and prevent the mogo from misaligning. 
== Wall Stakes Mech 
The wall stakes mech was designed with extreme precision as we wanted a wall stakes mech that was able to rotate through its full arc without going out of size limits. This is important to us because it allows us to score on the alliance stakes (very useful for autons) and also allows us to tip mogos over. The reduction in sizing prevents the possibility that we get disqualified because of a hard stop failure.  
//CAD of lb
== Doinker 
The doinker was unchanged with the exception of geting new plastic able to push all the rings rather than the top 3. As we found that there was a design flaw since it restricted our ability to clear positive corners and place mogos there. 
//cad of doinker + new plastic
//big picture of whole robot all together
