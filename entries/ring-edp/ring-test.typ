#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Testing the V1 Intake",
  type: "test",
  author: "Aubert Seysses",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 24),
)
= Introduction
In order to confirm we have met our success criteria(as defined by the identify page) we ran tests to confirm consistency and efficiency.
\
\
= Tests
We ran 3 sets of tests. Making note of how often the ring was successfully scored in comparison to the number of rings it intook. 
\
- For the first test, we fed 12 rings into the intake to try and gauge consistency.
- For the second test we placed 12 rings in a line on the field and drove the robot forward to see if that had an effect on the consistency.
- We layed out the field in a game configuration and drove the robot in the alloted match time.
= Results:
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 5, rows: 3,
      [Test no.], [], [% success rate], [], [],
      [], [Reading  1], [Reading  2], [Reading  3], [Average],
      [1], [58.3], [66.7], [66.7], [62.2],
      [2], [75], [66.7], [75], [72.2],
      [3], [73.3], [72.5], [73.8], [72.2],
    )
  ]
]
= Analysis:
As we aimed for as close to 100% accuracy as possible, these results that we recieved were unacceptable, failing to score between 30-40% would significantly negatively impact our game performance. Interestingly the robot scored nomonaly(10%) better when in motion compared to at rest. Understanding why this is the case can lead us to more consistant results. 
\
\
= Close slow motion video analisis 
After recording and watching a few slow motion videos we discovered a pattern in the movement of the rings when accelerating vs when stationary and came up with a hypothesis based on the pattern.
\
\
= Hypothesis 
 When accelerating, the ring is rotated in such a way that they are scored fully across the mobiile goal at a lower gradient whereas when the rings are not rotated at such a high gradient, they score a lot less consistently and often don't completely encircle the stake and get stuck at a vertical angle at the top. This is due to the rings having a more constant center of rotation, allowing them to complete a fuller ark.
 \
 \
 = Solutions  
 We thought of two possible solutions in order to broaden the ark the ring traveled.
- The first solution is to add a tensioner to the intake chain causing it to slope before going back to increase the length of the ark.
- The other solution we came up with was to curve the hook giving the rings a larger center of rotation and therfore a smoother, larger ark.
= Second set of tests validating solutions
#align(center)[
  #box(inset: 10pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 5, rows: 3,
      [Test no.], [], [% success rate], [], [],
      [], [Reading  1], [Reading  2], [Reading  3], [Average],
      [1], [83.3], [91.7], [75], [83.3],
      [2], [91.7], [83.3], [100], [91.7],
      [3], [94.6], [93.2], [96.0], [94.6],
    )
  ]
]
= Graph of comparitive ring scoring consistency
 #figure(image("./imgs/Epicbargraph.png", height: 170pt),) 

= Conclusion 
As is demonstrated in the graph above, implementing our solutions and widening the ark significaly improved scoring consistency raising it by around 20%, which is much closer to the goal of 100% and well into acceptable ranges. 