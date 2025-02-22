#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Building the Wall Stakes Mech",
  type: "build",
  author: "Aubert Seysses",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 25),
)
== Recap of building constraints 
Whilst we planed for the likely posibility of having a wallstakes mech. We prioritised having a robot that was viable without wallstakes and add them later if there was time. However, because of this there where certain space constraints, due to the existing footprint of the robot. As well as the fact that not every posibility had been though through competely. For example, there wasn't enough space to mount the wall stakes mech as low as optimally.

= Building
== Gear Ratios
We began by installing gears in a 12 to 72 gear ratio in order to achieve a 6x gear down from 200rpm to 33.3rpm (3 sf). This gave us precise control over the position of the two bar. We did this because we valued consistent scoring over faster but inconsistent scoring.

//photo of gear
== Main structure and bracing 
For the main structure we decided to use 2 main 2x C-Channel arms with grip pads in 3x C-Channel, which is cut to be the size of a ring and flanges bent outwards, to conform to the shape of the ring better. The 2x C-Channel are extremely strong and unlikely to bend. The 3x C-Channel is the correct width to acomodate and grip a ring well. 
Bending the flanges outwards means it is easier for the ring to pass through the friction fit. Additionally we used standoff X bracing to renforce the whole thing. This would help keep the "arms" level with one another and prevent the gears skipping on one side or the other, which would cause the wall stakes mech to lose the ability to grip rings. 
//photo of arms ang bracing 

== The problem 
During testing we discoverd that due to the length of the arms and where they began they where incapable of reaching the top of the wall stakes. At first this was quite a daunting problem as we could not simply extend the length of the arms as they would no longer be in the corect range to accept rings and moving the end point of the second stage intake would have been to great a task.
//diagam of problem
We quickly came up with a relativly simple solution to the problem by moving the starting postition of the wallstakes mech further foward on the robot. We did this by slighly extending the C-Channel it was mounted on and then reattaching it.
//final picture of the competed bot  
