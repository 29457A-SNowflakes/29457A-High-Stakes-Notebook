#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Decisions after JWS",
  type: "identify",
  author: "Jonah Fitchew",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 16),
)

// TODO: SPaG

After a succesful competition at the JWS regional there is much to reflect on about the performance of our robot, as we now have true match data showing how we can perform in a competition environment,
= What needs improving?
Although we were among the top contenders in terms of competition at JWS, forming the first seeded alliance and making it to semifinals through some arduous matches it is clear that we need to improve in some of the aspects of our robot.

== The intake:
In the first iteration of our robot we used a flex wheel intake using 3 separated flex wheels running off of a direct 600rpm motor cartridge at 11W. Due to the low amount of flex wheels we had on hand this intake mechanism does not provide strong enough purchase on the ring to intake in a way that we deem suitable, as we noticed in many matches that the intake would often be unable to pick up rings if they were not pressed up against the wall in a situation such as this:

  #figure( [#image("./jws_imgs/ringagainstwall.png", height: 150pt)], caption: [Ring pushing against the field barrier, force is applied against the intake rollers allowing smooth transition] )

Our aim is to be able to intake rings without driving over them as this will allow for more consistent autonomous routines and smoother gameplay as there will be no pause between intaking rings with the inconsistensies provided by the first iteration.

== Scoring mechanism:
For JWS we employed a "hook" design that transported the rings up a chain pathway before pivoting them at high speed onto the mobile goal, therefore solving the isue of the flange at the top of the goal, the problems with this design were its speed, in order to maintain some amount of consistency with the scoring the chain had to be run relatively slowly leading to long cycle times, the problem with this is that when we are spending a large amount of time over each and every mobile goal and ring, our opponents may well be taking the positive corner, and one of the things we learnt from JWS is that there is little to be recovered once both of those are lost.

==  Mogo Mech:
In iteration 1 of our robot we used a simple diagonal clamp for our method of securing mobile goals, this for its purpose was simple and light but the issue we had with it was that it was not very secure and added compression to parts of the drive that we did not want altered, the braces being a main example of this. When the mogo mech was activated it had a squeezing effect between the the two points of contact on the drivetrain that the pistons made, this is far from ideal in terms of bracing as we want everything to be at right angles from one another, and no bends within the c channels. We also observed one instance of the mechanism being stolen from which was not ideal and lost us a match.

== Drivetrain: 
Iteration 1 utilised a 450RPM 2.75" 8 wheeled drivetrain which treated us well throughout the entire competition, hence we see no opportunities for improvement or problems with it, the hotswappable motors allows us to cool the drivetrain directly and quickly and 450RPM allowed us to be the fastest on the field at most times. The bracing we implemented made sure the drive was even and frictionless even under intense duress.  we will be moving forward with this drivetrain.

= In conclusion:
The elements of our robot with serious flaws / needing improvement are:
- Intake (grip on ring is weak and exterior forces are required for consistency)
- Scoring mechanism (slow and inconsistent leading to slow cycle times and mis-scoring)
- Mogo Mech (easy to steal from, flimsy and bent parts of the drivetrain)

= Decision to rebuild:
After analysing each part of our robot that required improvement it is obvious what the next step for our robot's development is, a rebuild of everything apart from the drivetrain. this will allow us to move forward into competitions with a higher chance of winning and moving forward to nationals. Our rebuild will involve improved versions of all of the above.