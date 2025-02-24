#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Testing our Drivetrain",
  type: "test",
  date: datetime(year: 2024, month: 08, day: 10),
  author: "Aubert Seysses",
  witness: "Daniel Dew"
)
= Testing The Drivebase
== Friction Test overview
=== Equipment:
- Drivebase
- Motor -- blue (600rpm) cartridge
=== Method:
- Place a single motor on one of the slots for the motors on *one side*
- Spin motor at max RPM (brain's device control panel) for a minute
- Take reading of motor power consumption
- Take notes on the stability of the power consumption
- Take motor out and allow to cool
- Repeat tests 3 times _for each side_
== Results
*Left Side Power Consumption*
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(pink, violet, angle:-45deg))[
    #table(columns: 5, rows: 3,
      [Motor Speed / RPM], [], [Power Consumption / W (2 sf)], [], [],
      [], [Reading  1], [Reading  2], [Reading  3], [Average],
      [200], [1.6], [1.7], [1.5], [1.6],
      [400], [2.5], [2.0], [2.6], [2.4],
      [600], [6.2], [5.6], [6.8], [6.2],
    )
  ]
]
*Right Side Power Consumption*
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(pink, violet, angle:-45deg))[
    #table(columns: 5, rows: 4,
      [Motor Speed / RPM], [], [Power Consumption / W (2sf)], [], [],
      [], [Reading  1], [Reading  2], [Reading  3], [Average],
      [200], [1.0], [1.3], [1.3], [1.2],
      [400], [2.0], [1.9], [2.5], [2.1],
      [600], [4.5], [4.7], [5.0], [4.7],
    )
  ]
]
*Graph of Power Consumption*
//LOBF would be better
#plot(
  title: "Left and Right Power Consumptions",
  (name: "Left Side Consumption / W", data: ((200, 1.6), (400, 2.4), (600, 6.2))),
  (name: "Right Side Consumption / W", data: ((200, 1.2), (400, 2.1), (600, 4.7))),
)
== Conclusion From Results:
- Drivebase has an unaceptable ammount of friction on both sides
- Problems are slightly amplified on the left side of the drive
== Possible Reasons For Suboptimal Results
- Not enough slop (tolerance on the wheels) 
- Gear to wheel modules over tightened causing warping in the gears 
- Bent low strength shaft in motors 
- Driving gears contacting wheels 
- Inconsistent spacing

= Incorporating these results
In our first build through of the drive, we did not take the greatest care and precision to build it. The drive suffered from bowing - meaning the drive was wider in the middle than on the ends causing the width to be between 4-4.7 hole wide. This meant we could not properly brace the drive due to the holes not lining up. This inconsistency in build quality likely contributed to our increased drive friction. We decided the best course of action would be to scrap it and start over, as we would likely use this drivetrain for multiple design cycles and starting with a poor drive would only lead to *issues snowballing*. Below is how we rebuilt our drivetrain from scratch.

#components.admonition(type: "note")[
  We ended up keeping this drivetrain for V1 through V3 of our design cycles. We ended up changing our V4 drivetrain as it was a parallel rebuild and we were using different wheel sizes for reasons discussed in that EDP cycle.
]

//Page is called test and rebuild but only tests are present