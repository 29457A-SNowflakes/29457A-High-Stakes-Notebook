#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Building V3 of the bot ",
  type: "build",
  author: "Aubert Seysses",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 11, day: 20),
)
//writing plan 

//show succsessfull implementation of desing 
//disscuss issues 
//ow we overcame issues 
//how the bot now works 
//picture of the beauty full bot 
= Building the drive:

== Drivetrain
We rebuilt the same drive, which we where using before from scratch but with more attention to detail and managed to get the friction down to 0.1W, which is essentialy negligible.
//picture of Drive
== First Stage and Chain Reversal 
The whole construction of the first stage intake, including chain reversal was flawless thanks to the CAD done in advance. But there was only one small problem, which was with the ramp bracing, where the standoffs were too close to the slope, which slowed and messed with the ring transition. It was not a big issue and easily resolved by drilling a new hole inset into the bot slightly more.
//picture of first stage 
== Mogo Mech
The mogo mech was largley flawless because we had CAD done in advance so the mech only required minimal tuning. We only needed to change the second prongs, since they were abrasive enough to sometimes catch on the edge of the mogo causing it to not score rings properly. However, all we had to do to resolve this was sand down the threads on the screws on the side contacting the mogo and the issue was resolved. 
//picture of mogo mech 
== Second stage intake
In the second stage intake, when we first built it we encountered several issues: the ring only scored roughly 1 in 8 times. After extensive testing, we concluded that it was due to the placement of the hooks being roughly 0.5in too low. This in of itself was not terible, we just attached a piece of 1 x 1 to extend the length of the central pilar slightly. After quite a bit of tuning and tweaking we had scoring working within tight margins. 
//pictures of this
== Wall Stakes Mech 
The wall stakes mech was based on the position of the end of the second stage intake, which moved due to a slight error in the CAD. However this had a knock on effect on our CAD, which meant that the wall stakes mech needed to be changed. We resolved this by tuning, clipping and doing other micro ajustments (e.g. carefully cutting the metal in a way so that it would slot in at a diagonal because that is the only angle which can reach the top of the stakes). Tuning this was probably the biggest job apart from adjustments to the drivetrain. But eventually we succeeded in fixing it and could score with it reliably.
// pictue of wall steak mech 
== Doinker 
The doinker was easily executed as it was mostly unchanged from before.
Picture of whole bot in big and seenick.