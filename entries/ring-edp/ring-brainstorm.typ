#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Brainstorming Mogo Mech",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 21),
)

= First Stage Intake
The first requirement is being able to intake rings into the bot. There are several ways this can be done using either flex wheels, claw mechanism, intake rollers or rubber bands + a non slip mat.
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [Photoshop sketch of a flex wheel ring intake])
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [Photoshop sketch of an intake roller intake])
#figure(image("./imgs/1stStageIntakeFlexWheel.png", height: 250pt), caption: [Photoshop sketch of a claw mechanism])
== Flex Wheel First Stage Intake
A Flex Wheel intake works by having several flex wheels in series on a high or low strength shaft powered by a motor, either directly powered or with a chain. The wheels on the shaft conform to the shape of the the rings, which increases the total surface area contacting with the ring. This increases the total traction, which increases the total gripping power. Overall, this means that it is easier to intake rings and is fairly consistent from a variety of angles. Below is a list of pros and cons for a flex wheel based intake. Flex wheels have various durometers, which mean that we can control the stiffness of the intake.
//triangle????
#components.pro-con(
  pros: [
    - Fast intaking speed
    - Consistent from front
    - Fairly consistent from various angles#footnote[Can be made more consistent from variety of angles by using polycarb funnels pointed into the intake.]
    - Good traction since wheels are compressive
  ],
  cons: [
    - Requires a dedicated motor
    - Risk of motor burnout if intake is used too much
  ]
)
== Wrist/Elbow Mechanism
//Lobster Ball (2142R) or 6201A
Another possibility for a ring intake is a claw and wrist mechanism, which utilises a claw - made using polycarb pincers and a motor - in conjunction with a series of motors on pivots to create a robotic arm mechanism, which can pick up a ring and lift it up to various heights. This can allow you to pick up rings from the front of the robot and place them directly onto a mogo or a wall stake. If tuned properly, this can be made consistent. In addition, this mech requires at least 2-3 motors, which is *at least* 11W out of the power budget. Whilst the ring mechanism is *important*, this is a high cost compared to other solutions, which can do the same job for fewer motors.
//However, the VEX clamp struggles to initially grab the ring but has decent grip once held
#components.pro-con(
  pros: [
    - Can be made consistent
    - Looks cool
    - Fairly simple
  ],
  cons: [
    - Requires at least 2-3 motors
    - Struggles to initially grab the ring
    - Slow compared to other solutions
    - Risk of motor burnout if intake is used too much
  ]
)

== Intake Rollers
Similarly to the Flex Wheels you can use intake rollers on a high strength or low strength shaft with a direct or chain powered motor. Unlike flex wheels, intake rollers don't compress, which means they have less surface area contacting the rollers and therefore less traction. Overall this means that intake rollers have less grabbing and gripping power than a flex wheel intake. Additionally, there's only one size of an intake roller, which means we have less control over the size and vertical positioning of the intake.
#components.pro-con(
  pros: [
    - Fast intake speed
    - Fairly consistent
    - Works well with funnels to increase consistency
  ],
  cons: [
    - Intake rollers are eclipsed by flex wheels
    - Not as high traction as flex wheels
  ]
)

== Rubber bands + Non slip mat
A final consideration is the use of a mechanism comprising two gears, a low/high strength shaft, rubber bands and a non slip mat. This solution is similar to the flex wheel solution. However, unlike flex wheels the rubber bands provide constant tension regardless of where they are on the intake. With flex wheels the points of contact are only where the wheels are, which is good since we can control where the the grip is concentrated on the rings.