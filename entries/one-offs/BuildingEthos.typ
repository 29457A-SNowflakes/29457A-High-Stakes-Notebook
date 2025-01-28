#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Maintaining Building Practices",
  type: "management",
  author: "Jonah Fitchew",
  witness: "Aubert Seysses",
  date: datetime(year: 2024, month: 08, day: 7),
)
= Ensuring quality
One of the most important things to consider when building a robot is its Build Quality. This is really important to us as the better our build quality; the fewer repairs which we will need to do mid competition. In addition, better build quality has a positive correlation with competitive competition performance.
As a team we have decided that this year ensuring good build quality is paramount in our considerations when constructing each robot this season. This essentially comes with a set of principles for how we should build a robot that we should adhere closely to in order to construct a robot that can be brought to multiple competitions, as the fewer rebuilds we do the more time that we'll have to tune and practice. 
= Our building principles
As previously mentioned we are abiding by a set of rules, which have the intention of improving build quality.

== Boxing
The first of these practices is *boxing* parts of the robot, which is used to provide structural integrity.
There are two main types of boxing:
- Spacer Boxing
- Keps Boxing

=== Spacer Boxing
#grid(columns: 2, gutter: 20pt, [
  This image taken from the CAD of a previous drivetrain is a good example of boxing. Spacers are placed in the gap in the C-Channel to prevent deformation. As when tightening screws its quite easy to bend the flimsy aluminium flanges, which can cause friction and many other complications should it happen throughout the robot build. By doing this to our joints we increase rigidity and structure to joints and so minimise bending. 
], [
  #image("./jws_imgs/Boxingimage.png", height: 90pt, width: 90pt, fit: "stretch")
])

=== Keps Nut Boxing
#grid(columns: 2, gutter: 20pt, [
  Spacer Boxing isn't always possible because elements of the robots design may get in the way - such as bearings - so in the event of this we can use Keps Boxing instead. This provides some of the same functionality that boxing does with the addition of keeping space parts such as bearings. It utilises a screw with keps nuts fastened to the top and bottom of the C-Channel with a nylock on the bottom that holds it all together. This can be used to make the structure more rigid, which is important for things such as braces.
], [
  #image("./jws_imgs/KepsBoxingimage.png", height: 90pt, width: 90pt, fit: "stretch")
])
#components.admonition(type: "build")[
== Squaring
#grid(columns: 2, gutter: 20pt, [
Squaring a drivetrain involves temporarily bracing the main C-channels to hold them in place. This allows for precise measurements to verify that all angles within the chassis are 90 degrees. Subsequently, permanent bracing is added, ensuring it is perpendicular and parallel to the C-channels. This meticulous process guarantees proper bracing alignment and minimizes friction within the drivetrain.], [
  #image("./jws_imgs/SquaringImage.jpeg", height: 90pt, width: 90pt, fit: "stretch")
])
]
#components.admonition(type: "build")[
== Screwjoints
#grid(columns: 2, gutter: 20pt, [
To minimize friction and improve rigidity in rotating joints (like floating intakes or drivetrain wheels) that don't require motor power, we will prioritize the use of VEX screws over axles. VEX axles are prone to bending, causing increased friction. VEX screws offer superior rigidity and lower friction in these applications. Additionally, they provide a convenient point for indirect bracing, further enhancing the structural integrity of the robot. 
#image("./jws_imgs/Screwjointimage.png", height: 90pt, width: 100pt, fit: "stretch")
])
]
#components.admonition(type: "decision")[
== The CAD Process
#grid(columns: 2, gutter: 20pt,[
Another thing we would like to improve on this season is the use of CAD when designing our robots, in previous seasons we have done a lot of "freebuilding" which is where we go in with an idea and just start building. Instead this season we will use CAD (Computer Aided Design) to do the majority of our design and prototyping before reaching the physical build stage, this minimises "janky" solutions that employ the "if it works it works" ethos and allows for the more economical use of parts and the construction of an overall cleaner looking robot, after CADing we will prototype each mechanism in order to iron out any kinks that may be diffcult to fix in final construction due to other mechanisms interference. Finally we will create the finished build altogether and here we will see the outcome of all our hard work in a clean, working robot.  
#image("./jws_imgs/ExampleCAD.png", height: 90pt, width: 160pt, fit: "stretch")
])
]
#components.admonition(type: "note")[
== Testing our Robots
Testing is a crucial point in the process of creating a working robot because up until you get to metal you have almost zero idea how the robot will interact with the true environment and tolerances, so during our building we will employ testing practices to make sure that the final product truly is the best it can be and there is no situation where it doesn't do what we planned. the testing practices that we will be using include pneumatics testing which will ensure through the constant usage of the pneumatic mechanism that it uses little enough air to last through a match of normal usage. motor testing is also paramount for match longevity, we will all the robotsd motors until an overheat message is observed on the brain to ensure that the motors work at peak performance for "the greatest 2 minutes of robotics" that we need them to. finally, by testing our robot against our sister teams, 29457B and 29457X we can ensure that it is rigid enough to withstand the vicious nature of a high stakes match.
]