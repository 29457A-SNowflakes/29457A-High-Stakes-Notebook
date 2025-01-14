#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Designing and Building for Coventry",
  type: "build",
  author: "Aubert Seysses",
  witness: "Daniel da Silva",
  date: datetime(year: 2024, month: 10, day: 10),
)

= Intent with the bot 
With this version of the bot we hope to improve on the last design, which was fundamentally good but had flawed execution. Furthermore, the design was limited in the possible improvement and additions that could be made (e.g. no room for a ring mech).
Therefore we need a robot with://
- Fast and reliable drive train 
- Consistent ring scoring 
- Strong mogo mech 
- Smooth and consistent first stage intake 
- Doinker that doesn't touch the bottom ring 
- The possibility of adding a wall stakes mech (not definite due to time constraints)

//
= Design
== Drivetrain 
On the whole, the drivetrain was good, but we do not enough room in the front of the drive train to fully accomodate an optimal first stage intake, due to how the drive was braced. However, there was extra room in the back near the mogo mech. So we decided it was best to simply rotate our drivetrain 180 degrees - so the back was now the front.
//#image("./imgs/Piston Mech.png", height: 160pt)
//
== First Stage
For the first stage intake we went with simple flex wheel intake rollers. However, in order to improve upon our last design, we changed the intake ramp setting it further into the robot along with having a more favourable contact angle with the ring (the previous bot had the intake ramp hitting the ring before the rollers).

== Second Stage 
For the second stage, we decided on a central pillar with hooks similar to the first design only with a shallower gradient and a longer hooks stage. At the top there is a much simpler ring guard. This is incase we have time for a wallstakes mech.

== Mogo Mech 
The JWS mogo mech was good but it requires the room we reallocated to the front of the robot in order to work. Therefore in order to save space, we switched to a class 2 lever, which is a bit less secure but far more space efficient.

== Doinker
We changed the doinker structure from a piece of 1x1 to a piece of 2x C-Channel. We did this because the original doinker was not rigid enough and we had to unbend it after every match. The 2x is much stronger due its shape.