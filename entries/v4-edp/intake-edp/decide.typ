#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Deciding on Intake Design",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew, Jonah Fitchew",
  date: datetime(year: 2025, month: 2, day: 2),
)
= Our Intake Criteria
We want an intake, which can intake rings consistently and quickly. In addition, we want a ramp, which is sturdy and provides a smooth transition to our second stage mechanism.

== Intaking Quickly and Consistently
#admonition(type: "note")[
  Normally, for our decide pages, we establish criteria and evaluate quantitively what solution would be the best to implement. However, we decided since the only criteria we care about is how consistently and quickly it intakes rings, we decided that it would be best to just test our proposed changes against our current model. Below is the method we used and the results we obtained.
]
=== Method 
+ Place 20 rings in a regular zig zag configuration on the field
+ Place the robot in line with those rings
+ Accelerate the robot until its at max speed
+ Count the number of rings, which the robot manages to intake
+ Repeat the test 3 times
+ Repeat entire experiment with central flex wheel removed

=== Results 
//NEED ACTUAL DATA
//#align(center)[
//  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(pink, violet, angle:-45deg))[
//    #table(columns: 5, rows: 3,
//      [Intake Layout], [], [Rings intook], [], [],
//      [], [Reading  1], [Reading  2], [Reading  3], [Average],
//      [Current], [16], [13], [15], [14.7],
//      [No Central Flex Wheel], [19], [16], [18], [17.7],
//    )
//  ]
//]
#align(center)[
  #box(inset: 10pt, radius: 8pt, fill: gradient.linear(pink, violet, angle:-45deg))[
    #components.decision-matrix(
    properties: (
    (name: "Test 1"),
    (name: "Test 2"),
    (name: "Test 3"),
    (name: "Average",weight:1),
    ),
    ("\n\n\nCurrent Layout\n\n\n", 16, 13, 15, 14.7),
    ("\n\n\nNo Central Wheel\n\n\n", 19, 16, 18, 17.7),
    )
  ]
]