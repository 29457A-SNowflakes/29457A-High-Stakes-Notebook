#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "CADing our V3 Bot",
  type: "build",
  date: datetime(year: 2024, month: 08, day: 7),
  author: "Daniel Dew",
  witness: "Aubert Seysses"
)

// * For direct mech bot

#set quote(block: true)
= Starting the New Design
== Recycling
When beginning a new design cycle, there is often many transferrable aspects of the last design. In this case, we can reuse a large amount of the existing drivetrain, as the width and the gear ratio are remaining the same.
#figure(
  image("./imgs/cad/recycled-dt.png", height: 250pt),
  caption: [
    The CAD of the recycled drivetrain from both previous design cycles.
  ],
)
== Modifying Drivetrain Design
=== Shortening drivetrain
While shortening the drivebase does not directly benefit drivetrain performance, it allows us to further shrink our footprint, this can be very useful for many reasons:
- Field Manoeuvrability: being smaller (even if its marginal) can greatly increase our ability to navigate through and around field obstacles -- as well as outmanoeuvre opponents.
- Expansion: Having a smaller footprint within the allowed 18x18'' size limit allows our expansion (in desired direction) to be greater.
  - Example: robot with starting size 18x18'' allows for 6'' in one direction. Whereas, a robot that has starting size of 18x15'' allows for expansion of 9'' (assuming in direction of smaller dimension)
=== Stacking motors
One of the design choices we have not yet considered is whether to employ stacked motors to aid with weight distribution and space. There are typically 2 ways motors can be stacked, full stack and partial stacks: partial stacks are where one motor is moved from the base and elevated above the middle (or back/front) motor, this allows for more space to be freed in the back or front while not sacrificing too much build complexity; a full stack of motors is where all 3 motors -- on each side -- are stacked in one column, this is considerably more complex and prone to friction but can drastically free space. Full stacks can also be easier to PTO#footnote([Power Take Off (_PTO_) mechanism, used to transfer power away from motors.]), as accessible gears would be closer to power hungry mechs; this _could_ be useful as we look into potential climbing mechanisms later.
#admonition(type: "example", [
  #align(center, 
     [
      #figure(
        [#box(inset: 8pt, radius: 8pt, fill: gradient.linear(rgb(230, 230, 230, 20%), rgb(150, 150, 150, 30%), angle:-45deg), [#image("./imgs/cad/geareddrive.jpeg", width: 80%)])], caption: [
        An example of a partial stack, where the back 2 motors are stacked in a column @6MotorGearing
      ])
  ])
  Above, there is an example of a partial stack of motors, where the back 2 motors are put in a column, in this case, it allows for significantly more space in the front.\
  A full stack would involve taking the front 2 motors and elevating them onto the top of the existing stack.
])
In our case, this can be used to allow for space for various mechanisms, or just to act as empty space to, for example, get close to the corner post of ladder (top potentially climb)
=== Pros and cons of stacked motors
#pro-con(
  pros: [
    - More space in front or back; something that may be strictly necessary
  ],
  cons: [
    - Higher COM
    - Added build complexity
      - Potentially more friction
  ]
)
\
#admonition(type: "decision", [
  Ultimately, for this design cycle, we have decided to employ a partial stack of the motors. This will allow us to drastically increase space to facilitate our possible future ladder climb plans. While this decision may not directly help the performance of the drivetrain, we believe it is a necessary step to future-proof our robot.
])
== CADing proposed modifications
So far, the modifications are only proposed, the point of CAD is to prove such proposals are feasable and to then later provide a basis on which to build on.
=== Shortening drivetrain
This step is incredibly simple, it simply requires replacing the 30-long drivetrain pieces with 27-long pieces. We decided on this length becasue it was the maximum we could shave off without jeopardising structural strength.
=== Stacked Motors
This step is also simple, as it only entails creating a raised platform on small standoffs -- where the motors can be moved onto a stack.
#grid(columns: (63%, 37%), gutter: 10pt, [
  #figure(
    box(fill: rgb(225, 225, 225, 100%), inset: 10pt, radius: 8pt, image("./imgs/cad/post-mod-dt.png", height: 220pt)),
    caption:
    [
      The drivetrain CAD after implementing proposed design changes -- front denoted by green arrow.
    ]
  )
],
[
  #admonition(type: "note", [
    === Notes on CAD
    - The shortened drivetrain is not particularly evident, but the frame has been shortened by 3 holes (1.5'') and the funnels have been moved back one hole (0.5'').
    - More evidently, the motor that would be at the back is moved onto a stack with the middle motor; this allows us to 'envelop' the corner post of the ladder, potentially facilitating our future ladder climb plans.
    \
  ])
])
\
\
= Designining Complex Moving Mechanisms
== Motor Distribution
With this design there are several complex design strategies we can employ.\
For example, there are a few ways to organise the distrubution of the remaining 22W of motor power; we could, for example, allow 1x 11W motor for our intake mechanism, similar to V2; therefore allowing 1x 11W for the direct high stake mechanism.\
If we wanted to dedicate more power to the more complex chain bar required for direct mech, we could use only 5.5W for the intake/hooks, and therefore use the remaining 16.5W for the chain bar.
=== Motor Sharing
We have decided that both the intake/hooks and the chain bar neeed more than 11W; this is normally unobtainable using normal motor distrubution, however we wish to emply the method of *motor sharing*.
#admonition(type: "example", [
  *What Is Motor Sharing*
  - Motor sharing is the technique of using the same motors over the different mechanisms.
  - Obviously, we dont wan't the intake and chain bar lift running at the same time, so we can employ a *ratchet* mechanism.
    - Rachet mechanisms allow for a system to be mechanically disconnected while the motors run one way, then engage when the motors are reversed
    - In this case, we can allow the intake to run at all times, but when it is reversed; the ratchet engages and the chain bar lifts.
  #align(center, grid(columns: (40%, 40%), [
    #figure(image("imgs/cad/ratchet example.jpeg", height: 200pt))
  ], [
    #align(horizon, [
      _An example of a ratchet mechanism (left) @RatchetEx.\ Here, the metal gear spins no matter what -- in one direction, the screw freely skips over the gear (therefore the green sprocket remains stationary#footnote([The gear has a round insert and is therefore unaffected by shaft spinning.])). In the other direction, the screw catches, and rotational torque is transferred to the large gear_
    ])
  ]))
  
])