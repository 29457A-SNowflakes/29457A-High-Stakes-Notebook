#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Testing the preroller",
  type: "test",
  witness: "Daniel da Silva",
  author: "Jonah Fitchew",
  date: datetime(year: 2025, month: 2, day: 10),
)
The pre-roller is one of the most important parts of the robot, as if it fails within a match or is inconsistent in any way, we lose all the function of the robot and the ability to score in any way. Therefore, along with designing it to the best of our ability, we must also test it until satisfaction.

== Test 1:
Intake speed test. This is to test how fast our intake takes to intake a single ring from the ground until it is safely in the robot. 
- Run preroller motor 
- Drive over ring
- Start timer 
- Observe when intaken 
- Stop timer

#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 7, rows: 2, 
    [Test number], [1], [2], [3], [4], [5], [6], 
    [time to intake (s)], [1.2], [4.0], [1.0], [0.8], [0.9], [1.0] 
    ) 
  ] 
]
Looking at the results, there is one significant outlier: the 4s it took for ring 2 to reach an intaken position. This is uncommon, and we are treating it as anomalous and moving forward with testing.

== Test 2:
Preroller angle test. This is to test from what angles the preroller can successfully intake the ring. This will allow for less precision on the field when it is necessary. 
- Run preroller motor 
- Drive over ring from angles in 15-degree intervals from 0-90 
- Observe success 
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 7, rows: 2, 
    [angle (degrees)], [15], [30], [45], [60], [75], [90], 
    [outcome], [failure (jam)], [success], [success], [success], [success], [success] 
    ) 
  ] 
]
From these results, we see one unsatisfactory angle: 15 degrees. This is where the ring is becoming jammed against the drive C-channels.

= Fixing Jam (mini brainstorm):
There are a couple of reasons why the jam is occurring:
- No traction on the ring at that point, between flex wheels. 
- No plastic guard on the inside of the drive C-channels, leading to a non-smooth surface.

#components.admonition(type: "build",)[
  Firstly, we will use an uncut piece of polycarbonate to shield the drive C-channels
  //image
]
Now we must run Test 2 again with the polycarbonate solution:
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 7, rows: 2, 
    [angle (degrees)], [15], [30], [45], [60], [75], [90], 
    [outcome], [failure (jam)], [success], [success], [success], [success], [success] 
    ) 
  ] 
]
Unfortunately, as observed, this did not solve our problem, and we achieved the same results. We must move forward and try a new solution. 

#components.admonition(type: "build",)[
  To combat the lack of traction on this part of the intake, we must add a smaller flex wheel to the row on the *Low Strength Shaft* of the preroller to allow traction on the ring at this crucial 15-degree point.
  //image
]
We must now run Test 2 again with the *1.625" flex wheel* solution:
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 7, rows: 2, 
    [angle (degrees)], [15], [30], [45], [60], [75], [90], 
    [outcome], [success], [success], [success], [success], [success], [success] 
    ) 
  ] 
]

== Test 3: 
Preroller jam test. This test is to see how many rings in succession the robot can intake without suffering a jam.
- Run preroller motor.
- Feed a ring every second (data from Test 1 is used here)
- Observe number of rings successfully intaken before jam. 
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 7, rows: 2, 
    [Test number], [1], [2], [3], [4], [5], [6], 
    [number of rings], [5], [2], [7], [5], [4], [8] 
    ) 
  ] 
]

  Observing these results, we can see one outlier: Test 2 could only intake 2 rings before jamming. Once again, we will take this as anomalous and move forward with a mean of 5 rings in a row. This is satisfactory, given that that amount in a row is unlikely to happen in match conditions.

  #admonition(type: "decision")[
    In conclusion this testing stage has allowed us to root out the little issues with our intake and tune it to relative perfection, a jam of a ring a 15 degrees is what could cost a match in tense situations so it is good to have observed this before we have to learn it in a match. 
  ]