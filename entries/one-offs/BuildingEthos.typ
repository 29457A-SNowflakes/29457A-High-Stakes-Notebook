#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Maintaining Building Practices",
  type: "management",
  author: "Jonah Fitchew",
  witness: "Aubert Seysses",
  date: datetime(year: 2024, month: 08, day: 7),
)
= Making Sure We Build right
one of the most important things to consider when building a robot is "Build Quality" this is not a term that is used lightly as the better the build quality the more likely that it survives a competition. 
As a team we have decided that this year "Build Quality" be paramount in our considerations when constructing this season's robots. This essentially comes with a set of rules for how to build a robot that we must follow to a tee in order to consrtruct a long term robot that can be brought to multiple competitions as the less iterations we have the longer we have to tune and practice. 
= The rules
As previously mentioned we are abiding by a set of rules that together can create a truly robust robot. 
#components.admonition(type: "build")[
== Boxing
the first of these rules that we shall document is the practice of "boxing" parts of the robot:

#grid(columns: 2, gutter: 20pt, [
  This image taken from the CAD of a previous drivetrain shows the use of boxing quite effectively, by putting spacers in the gap between the "flanges" of the C Channel we achieve the effect of preventing deformation, as when tighetning a screw to ensure stability the flimsy aluminium flanges often bend which can cause friction and many other problems should it happen throughout the robot build, doing this provides rigidity and structure to joints that otherwise would bend 
], [
  #image("./jws_imgs/Boxingimage.png", height: 90pt, width: 90pt, fit: "stretch")
])
#grid(columns: 2, gutter: 20pt, [
  There is however often elements of the robot in the way of boxing through C Channels, such as bearings so in the event of this we will use another type of boxing known as "Keps Boxing" this provides some of the same functionality that boxing does with the addition of keeping space for bearings and the like, it utilises keps nuts on each "top" and "bottom" of the C Channel, providing help against bending in a compromised position.
], [
  #image("./jws_imgs/KepsBoxingimage.png", height: 90pt, width: 90pt, fit: "stretch")
])

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