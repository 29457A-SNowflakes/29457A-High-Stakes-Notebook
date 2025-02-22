#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Testing the hooks system",
  type: "test",
  witness: "Daniel da Silva",
  author: "Jonah Fitchew",
  date: datetime(year: 2025, month: 2, day: 10),
)
Testing for our nationals robot is paramount as we need it to perform at the highest level, all the time. Therefore, the testing regimen that we have used for our previous robots must be adapted to show the higher level of challenge that nationals presents. Our usual tests will be put in a different context to show how the new robot can stand the heat of actual competition.

== Test 1:
First and foremost, we conduct our usual test for all the robots we have created this season by hand-loose chain flipping of the ring on the conveyor.

- Place the ring on the loose conveyor.
- Hold mogo at the smallest distance from the edge of the hook.
- Push the chain at high speed.
- Observe whether it is scored.
On this robot, scoring must be as clean as possible; that is, there should be no "iffy" about whether a ring scores—the ring should transfer from the conveyor to the bottom of the mogo, no arguments.
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 7, rows: 2,
    [Test number], [1], [2], [3], [4], [5], [6],
    [outcome], [success], [success], [success], [success], [success], [success]
)
  ]]
  Great Success! our hooks mechanism is able to move to the next stage of testing. 
  == Test 2:
  Now we have ascertained that the robot is able to achieve the results we want to see we must now see how it performs with a motor attached 
- place ring on the loose conveyor.
- hold mogo at smallest distance from edge of hook. 
- run chain motor.
- observe whether scored.
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 7, rows: 2,
    [Test number], [1], [2], [3], [4], [5], [6],
    [outcome], [failure], [success], [success], [failure], [success], [failure]
    )
  ]]
Not so great success. As can be observed from the results, our hooks system has a 1 in 2 chance of not scoring the ring it has been given. A minor *rebuild* is advisable here.

We have identified, through observation of slow-motion footage of Test 2 data, that the ring is going too fast and flying off the top of the system.


== Why is it failing? (mini brainstorm)
- no flex wheels on the top of system
- too big of a driving gear making the system too fast
#components.admonition(type: "build")[
  firstly we will add flex wheels to the top of the system to improve the arc of the ring. 
  // image 
]
Now we will run test 2 again with the addition
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 7, rows: 2,
    [Test number], [1], [2], [3], [4], [5], [6],
    [outcome], [success], [failure], [failure], [failure], [success], [failure]
    )
  ]]
Observing these results reveals that this actually decreases the consistency of the system. Again, observing the slow-motion video reveals that the ring is actually being powered further off the system by the flex wheels. This indicates the second option: decreasing the size of the driving sprocket.


#components.admonition(type: "build")[
  now we will change our driving sprocket from that of a 16 tooth to a 12 tooth which we had on the previous robot.
  // image 
]
Now we will run Test 2 again with the changes
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 7, rows: 2,
    [Test number], [1], [2], [3], [4], [5], [6],
    [outcome], [success], [success], [success], [success], [success], [success]
    )]]
As we can see from the results this has made our hook system theoretically 100% consistent, obviously this is subject to other conditions which will be explored later.

== Test 3:
This is the point at which we will see whether our hooks system is competition viable, this test evaluates the consistency of the hooks when subject to outside, uncontrollable conditions. 
- place ring on system. 
- spin robot round. 
- run hooks motor while spinning.
- observe results. 
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 7, rows: 2,
    [Test number], [1], [2], [3], [4], [5], [6],
    [outcome], [success], [failure], [success], [failure], [success], [success]
    )]]
With this test, we can observe that under irregular velocities, the ring is satisfactorily scored 4/6 of the time, leaving a 70% success rate. This we find to be acceptable due to the high unlikelihood of this happening during match play.

#components.admonition(type: "decision")[In conclusion, this testing phase has yielded results that reassure us that the robot can be competitive in a competition environment. It also allowed us to troubleshoot issues that would be harder to find later on in the development process. ]