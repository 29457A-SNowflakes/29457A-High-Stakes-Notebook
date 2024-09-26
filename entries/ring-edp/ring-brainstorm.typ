#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Brainstorming First Stage Intake",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 21),
)

= First Stage Intake
The first requirement is being able to intake rings into the bot. There are several ways this can be done using either flex wheels, claw mechanism, intake rollers or rubber bands + a non slip mat. In the context of our robot any solution that uses more than 22W is *not possible* because our robot's drivetrain uses 66W out of our budget already and we are not willing to comprimise our drive train's performance.
== Rubber bands + Non slip mat First Stage Intake Design
Our first consideration is the use of a mechanism comprising two gears, a low/high strength shaft, rubber bands and a non slip mat. This solution is similar to a flex wheel based solution because the rubber bands provide flexibility but don't grip as much as flex wheels since they don't conform to the ring shape.
\
Here are a list of pros and cons for rubber bands.
#components.pro-con(
  pros: [
    - Fast intake speed
    - Works well with funnels to increase consistency
  ],
  cons: [
    - Inconsistent
    - Rubber bands can snap
  ]
)
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [Photoshop sketch of a non-slip mat intake])
== Flex Wheel First Stage Intake
A Flex Wheel intake works by having several flex wheels in series on a high or low strength shaft powered by a motor, either directly powered or with a chain. It is similar to the RB/Non slip mat solution but since the wheels conform to the ring shape the total surface area contacting with the ring is greatly increased. An increase in surface area means that there is an increase in the total traction, which increases the total gripping power. Overall, this means that it is easier to intake rings whilst also being fairly consistent from a variety of angles. Another advantage is that unlike with rubber bands we can control where the grip is concentrated on the rings, which is important since the rings are torus shaped meaning wheels in the centre are less useful since the places where the rings can be gripped changes are they are rings are being intook. Additionally, we can further control how much deformation the flex wheels undergo since they are various durometers of wheels, which mean that we can control the stiffness of the intake.
\
Below are a list of pros and cons for a flex wheel based intake:
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [Flex wheel intake])
//triangle????
#components.pro-con(
  pros: [
    - Fast intaking speed
    - Consistent from front
    - Fairly consistent from various angles#footnote[Can be made more consistent from variety of angles by using polycarb funnels pointed into the intake.]
    - Good traction since wheels are compressive
    - Level of compression can be controlled
    - Positions of grip can be controlled
  ],
  cons: [
    - Requires a dedicated motor
    - Risk of motor burnout if intake is used too much
  ]
)
== Wrist/Elbow Mechanism
Another possibility for a ring intake is a claw and wrist mechanism, which utilises a claw - made using polycarb pincers and pistons - in conjunction with a series of motors on pivots to create a robotic arm mechanism, which can pick up a ring and lift it up to various heights and positions and also flip the ring stack held upside down. This solution can allow you to pick up to 2 rings in front of the robot and place them directly onto a mogo or a wall stake using various preprogrammed stakes. If tuned properly, this can be made consistent. However, this solution creates a very difficult programming task. In addition, this mech requires at least 2-3 motors, which is *at least* 11W out of the power budget. Whilst the ring mechanism is *important*, this is a high cost compared to other solutions, which can do the same job for fewer motors. A good example of this solution implementation is #link("https://www.youtube.com/watch?v=n-SY6KoDmmI")[6310A's first bot of the season].
\
Initial analysis of wrist style solution:
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [Wrist Mech Sketch])
//However, the VEX clamp struggles to initially grab the ring but has decent grip once held
#components.pro-con(
  pros: [
    - Can be made consistent
    - Theoretically doesn't need a second stage mechanism
    - Fairly simple
  ],
  cons: [
    - Requires at least 2-3 motors
    - Struggles to initially grab the ring
    - Slow compared to other solutions
    - Risk of motor burnout if intake is used too much
    - Requires complex programming due to many states
  ]
)

== Intake Rollers
Similarly to the Flex Wheels you can use intake rollers on a high strength or low strength shaft with a direct or chain powered motor. Unlike flex wheels, intake rollers don't compress, which means they have less surface area contacting the rollers and therefore less traction. Overall this means that intake rollers have less grabbing and gripping power than a flex wheel intake. Additionally, there's only one size of an intake roller, which means we have less control over the size and vertical positioning of the intake.
\
Below are the benefits and drawbacks of Intake Rollers:
#components.pro-con(
  pros: [
    - Fast intake speed
    - Fairly consistent
    - Works well with funnels to increase consistency
  ],
  cons: [
    - Intake rollers are eclipsed by flex wheels in terms of performance
    - Not as high traction as flex wheels
    - Only one size
  ]
)
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [How Intake Rollers could look])

= Second Stage Intake
Once we have the ability to intake rings into the robot we need to consider how we want to get rings scored onto mobile goals. If we go with a wrist mechanism, this isn't needed. However, we shall look at second stage anyway since we haven't yet decided what our first stage will be. The main two design archetypes to consider are a *hood* mechanism or a *hook* mech.

== Hook mechanism
A hook mechanism works by using a motor powering a vertical or diagonal chain drive, which has hooks typically made using either custom cut polycarbs. The hook catches the inside of the ring and the chain drive acts like an escalator up towards the position of where a clamped mogo should be and directly places a ring on it. This will require some tuning in order to get the alignment of the mogo and the placement of the rings within desired tolerance (as low as possible).
\
Considerations with this solution:
#components.pro-con(
  pros: [
    - Fast
    - Consistent if tuned
    - Can theoretically be used as first and second stage intake as seen with #link("https://www.youtube.com/watch?v=PVJiYMsHSSw")[1000A at MN signature] and #link("https://www.youtube.com/watch?v=ybP6bGynbs4")[This prototype by JHAWK/9 Motor Gang]
  ],
  cons: [
    - Tuning can take time
  ]
)

== Hood mechanism
Another option is using a conveyor belt in conjunction with a hood mechanism in order to outtake directly onto a mogo. Like a hook mechanism this also requires a lot of tuning in order to get right. A hood can be used in conjunction with a bucket mechanism in order to have rings to get on wall/alliance stakes.
\
Below is some initial evaluation:
#components.pro-con(
  pros: [
    - Consistent if tuned
    - Can double as wall stake mechanism
  ],
  cons: [
    - Tuning can take time
  ]
)