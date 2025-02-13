#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "V2 Brainstorm: First Stage Intake",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 1),
)

= Intake Rings Efficiently
The first consideration is to look at ways we can make the rings intake more efficiently. 
== Utilising flex wheels
Our current solution uses flex wheels on a low strength shaft, with a flex wheel positioned centrally and two at the sides so the traction is concentrated on the edge of the rings. The main considerations are the placement, amount and durometer of the flex wheels.
#components.pro-con(
  pros: [
    - Fast intaking speed
    - Consistent from front
    - Good traction since wheels are compressive
    - Level of compression can be controlled
    - Positions of grip can be controlled
  ],
  cons: [
    - Requires a dedicated motor
    - Risk of motor burnout if intake is used too much
  ]
)
== Utilising rubber bands
An alternative to traction wheels is utilising rubber bands, gears and non slip mats. This distributes the pressure uniformly across the entire ring. This solution is fairly similar to utilising flex wheels but flex wheels provide slightly better traction in our testing.
#components.pro-con(
  pros: [
    - Fast intake speed
    - Works well with funnels to increase consistency
  ],
  cons: [
    - Less consistent than flex wheels
    - Rubber bands can snap
  ]
)

== Utilising traction wheels
Another consideration, which we hadn't considered before is using traction wheels. However, these are the least compressive and so will provide less grip than flex wheels.
#components.pro-con(
  pros: [
    - Could intake rings
  ],
  cons: [
    - Slower and less consistent than flex wheels
    - Smallest size traction wheels are larger than flex wheels
  ]
)

= Prevent Intake from Lifting
One problem with our V1 first stage was that it kept lifting each time it intook a ring.

== Hard stops
The most obvious solution would be to use hardstops to create an ideal rest angle for the intake so that the flex wheels make contact with the rings but not cause the intake to lift too much.
#components.pro-con(
  pros: [
    - Can adjust height to give a variety of angles
  ],
  cons: [
    - ???
  ]
)

== Banding intake down
Running a rubber band from the intake to the drivetrain, to create tension that pulls it downwards and so counteracts any lifting, which occurs. The main problem is this presses the ring to the floor and increases friction.
#components.pro-con(
  pros: [
    - Counteracts lifting motion
  ],
  cons: [
    - Pinning force increases friction
    - Lifting still occurs
  ]
)

== Banding intake up
Running a rubbber band from the intake to a higher mounting point, which means the intake presses less on the rings and also fixes the angle.
#components.pro-con(
  pros: [
    - Little lifting occurs
  ],
  cons: [
    - Harder to adjust intake position
    - Difficulty in finding a mounting spot
  ]
)

== Removing intake screwjoint
Replacing the pivot on the intake with a rigid joint means that the intake can't lift up or down.
#components.pro-con(
  pros: [
    - No lifting occurs
  ],
  cons: [
    - No possibility of intaking top ring only (useful for autonomous)
    - Finding corret height can be difficult
    - No lifting pins the ring to the ground
  ]
)

= Fixing the ramp
There are a couple considerations which we can make in order to ensure that the ramp is flush.

== Readjusting our current ramp and its angle
If we move the ramp back and adjust its angle and shape slightly we can ensure that rings are lifted upwards by it after they are intook by our first stage. We could also sand blast the ramp to reduce slippage.
#components.pro-con(
  pros: [
    - Plastic isn't wasted since we are reusing it
    - Sandblasting would make the transition to the hooks cleaner
  ],
  cons: [
    - Tuning this angle may be difficult
  ]
)

== No ramp
If we don't have a ramp and adjust our ring mech we could transition directly from intake to hooks rather than from intake to ramp to hooks.
#components.pro-con(
  pros: [
    - Nothing is touching the floor
  ],
  cons: [
    - Hooks may struggle to grab ring
    - Reduced performance of hooks mech
  ]
)

== Different ramp design
We could go for a completely new ramp design, which utilises two pieces of plastic cut so that it has a smooth concave shape.
#components.pro-con(
  pros: [
    - Potentially smoother transition to ring mech
    - Might not touch the floor
  ],
  cons: [
    - Tip of the ramp could potentially break off
    - Plastic pieces may become skew #footnote["This can be partially fixed by holding the ramp together with standoffs or boxing"]
  ]
)