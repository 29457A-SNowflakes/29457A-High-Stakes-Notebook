#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Brainstorming Intake",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Aubert Seysses, Daniel Dew",
  date: datetime(year: 2025, month: 2, day: 2),
)
= Intaking Rings Consistently/Quickly
== Removing central flex wheel from intake
Currently our intake has three flex wheels, two on the sides and one in the centre. We are considering removing the central flex wheel to improve traction distribution, which will make intaking more consistent and faster.
#components.pro-con(
  pros: [
    - Faster and more consistent intaking
  ],
  cons: [
    - Slightly harder to intake rings directly from the front.
  ]
)

== Dedicated motor
For our V3 bot, our hooks mech and intake shared a motor using a chain reverser since we wanted to run two motors on our wall stakes mech at 11W, so it was supported on both sides. We have come to realise that 2 motors on our lady brown is a little overkill and tuning the chain reverser gave us many issues. We think that it may be easier to ditch the chain reverser in favour of having a dedicated intake motor.
#components.pro-con(
  pros: [
    - Intake motor is less prone to problems than chain reverser
    - Intake can run independently from hooks
  ],
  cons: [
    - Two bar will have to be cantilevered
  ]
)

= Moving rings to the 2nd stage/ramp
The main problem with our V3 ramp was that it wasn't sturdy and broke quite a few times, which meant that intaking to our 2nd stage was more difficult. We have decided to reconsider what material, we make our ramp out of.
We are going to look at polycarbonate, Delrin (POM) and HDPE.
== Polycarbonate
#components.pro-con(
  pros: [
    - High Young Modulus
    - High Flexural Modulus
  ],
  cons: [
    - >>>
  ]
)

== Delrin
#components.pro-con(
  pros: [
    - Very stiff
    - >>>
  ],
  cons: [
    - >>>
  ]
)

== HDPE
#components.pro-con(
  pros: [
    - >>>
    - >>>
  ],
  cons: [
    - >>>
  ]
)