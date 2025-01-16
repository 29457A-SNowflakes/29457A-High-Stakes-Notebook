#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Designing V3 of the robot",
  type: "build",
  author: "Aubert Seysses",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 11, day: 20),
)

== Recap all issues with curent robot 
- Center of mass it to high (tipps a bit under rapid accerleration)
- Robot is to heavy 
- Intake ramp was bent manualy a therfore the curve is suboptimal 
- Mogo mech was week.
= Design
== Drive Train 
We decided to keep the drive train. We are verry comfortable with the speed and accerlerationwe get from ithowever we do want to shrink it by 2 wholes. We have been woking on a 30 x 30 wholes drive + length of intake funnels. However a smaller bot is alway more maneverable for this reason we are going to cut the slight exess metal we have on the front of the robot. This will reduce the space available for the intake however it will not do so drasticaly. To acomodate the first stage intake better we have opted to get rid of the front brace. After carfully waying the pros and cons we oppted to remove it as it was largley redundent due to the already present other 2 brace. Aditionaly it reduces the weight of the robot witch leads to better accerleration. Force / mass = accerleration the the force is limeted by the motor output of the drive therfore the lighter the bot the better the accerleration. We also acomodated 2 Odom pods for better positioning and more consitant autons.

//screen shot of drive cad 1-2 angles 
== First Stage Intake and transition 
=== Ramp:
For the ramp we desided to go with to peaces of lazer cut delrin rather than the pollycarbontae plate heated and bent. we did this becaus eyou can eliminat the human error that comes with manualy bending pollycarbontae additionaly in acomodates the curvature of the ring beter making for a smoother and better intake prosses.
=== First Stage and Intake Rollers
//frist stage level yap 
=== Gear Reversal 
We elected to have both the frist and Second stage intake be powered by the same motor in order to be able to dedicate one motor to the wall stakes mech. The only problem with this is one we allso faced in V2 of the robot the intake rollers and hooks have got to spin in opisit direction in order to work in V2 a geared chain reversal was a simple and effective way of solving the problem if not verry well exicuted on V2.
//diagram of chain reversal and rotation directions 
===
 A chain reversal presents 2 main problem friction and tentioning. Tipicaly when dealing with the meshing of 6 tooth sprokets and gears the only way to do it is using low strength shaft witch make for verry pore friction. we solved this problem by using a creative combination of inserst to couble a gear and a sproket together as shown bellow.
 //cad of coupling the things
 ===
 This alowes us to use screw joints witch produce far far less friction than the lowstrength shaft joint.
 Chain needs to be under a bit of tention in order to work properly other wise the chan will simply skip now this would'nt be a problem exept that the intake need the ability to lift to be able to pic up the top ring on a stak 2 high during autons thrphor the chan need to be able to be under tention in 2 positions most people solve this problem by using a tetioner a pece of plastic over witchthe chain runs it is lighly ruber bander outwards to that the it moves to keep the chain under tention in both position biciles have a similar mechanisme used to keep the chain under tention nomater the gear the bike is in. We chose a diffrent solution as tentioners are falable itch could potentialy ruin are ability to score any points in a round. our soloustion wast to have the chan go to and form the intake roler while spining about the joint about withc the frist tage inake is mounted this meand that the 2 sprokets remain equadistant nomater the angle and is much less falabl. 
 // screen shot of th whole area i just discribed 
 
== Second Stage Intake
The secound stage intake remains largley unchanged simply many chain links with hooks to carry the rings there it is run on 24 tooth sprokets as this gives the prefered chain speed. Futhermor we put flex weels in order to give the hooks a more optimal ark. The frame is slighly altered in the details but over all remains the same: central pillar nowmade of 1 x 1 instead of  2x - c-chan because it is not weight bering therfore 1 x 1 is strong enough for this purpose and lighter than 1x1 
//picture of secound stage intake cad
== Mogo Mech 
For the mogo mech we reverted to a 1st class lever while the previous lever was more compact the trade off in required PSI was not worth it as it limited the number of actuations available to us during a match. It also meant that when accerlerating the to mof the mogo would tip bacward lighlly and ring scoring would be far less consitant. This mogo was disinged with the flaws of the last in mind as a result the Design has a big emphisas on taking adavatage of leaverage to be able to run it at verry low PSI while remaining secure and we are verry proud of it. The credit for the design goes to our team leader/head programer daniel dew who disinged it aswell as articualting it fully in CAD. 
//diagram or picture of CAD to anotated to explain forces
==== 
The mogo clamp has 2 sets of progs a first set of prongs inset further into the robot these have verry good leverage and alow us to use less PSI on tring to lift the robot from a worst leaverage position. a secound set of prong serve simply to secure the mogo and presvent it from sliping out these aply on pressure on the mogo and insted act mor like a seat belt or hard stop. 
== Wall steaks mech 
The wall steaks mech was designed with extream precision as we wanted a 360
//daneil yap for wall stake need help 
//CAD of lb
== Doinker 
the Doinker was unchaged with the exeption of geting new plastic able to push all the rings rather than the top 3 as we found that was a desing flaw in our last design. 
//cad of doinker + new plastic
//big picture of whole robot all together
