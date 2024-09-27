#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Testing the Intake",
  type: "test",
  author: "Aubert",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 21),
)
= Introductionn
In order to confirm we have met our success criterria(as defined by the identify page) we ran tests to confirm consistency and efficacy.
\
\
= Test
We ran 3 sets of test. making not of how often the ring was successfuly scored in comparison to the number of rings it intook 
\
- The first test we fed 12 rings into the intake to try and gadge consistency.
- the secound test we placed 12 rings in a line on the feild and drove the robot foward to see if that has an effect on the consistency.
- we layed out the feild in a game configuration and drove the robot in the aloted match time.
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
= Analisis:
As we aim for as close to 100% acuracy these results are unnaceptable, failing to score between 30-40% would massivly negativly impact our game performance. Interstingly the robot scored nomonaly(10%) better when in motion compared to at rest. Understanding why this is the case can lead us to more contsistant results. 
\
\
= Close slow motion video analisis 
After recording and watching a few slow motion videos we discovered a patern in the movement of the rings when acselerating vs when stationary and came up with a hypothisis based on the patern.
\
\
= Hypothisis 
 when accelerating the rings rotated in such a way that they are scored fully the mogo  across at a lower gradient the mogo where as when stationary the gradient was much steeper causing the rings to catch a the top more often and score less consistantly. this is due to the rings having a more constant center of rotation alowing them to compleat a fuller ark.
 \
 \
 = Solutions  
 We though of two possible solutions in order broaden the ark the ring traveled 
- The first solution isto ad a tentioner to the intake chain causing it to slope before going back the increase the length of the ark.
- The other solution we came up with was to curve the hook giving the rings a larger center of rotation and therfore a smother larger ark.
= Secound set of tests validating solutions
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[
    #table(columns: 5, rows: 3,
      [Test no.], [], [% success rate], [], [],
      [], [Reading  1], [Reading  2], [Reading  3], [Average],
      [1], [83.3], [91.7], [75], [83.3],
      [2], [91.7], [83.3], [100], [91.7],
      [3], [94.6], [93.2], [96.0], [94.6],
    )
  ]
]
= Graph of comparitive ring scoring consitancy
 #figure(image("./imgs/Epicbargraph.png", height: 175pt),) 

= Conclution 
As is demonstrated in the graph above implementing our solutions and widening the ark significaly improoved scoring consistency raising it by around 20% much closer to the goal of 100% and well into acseptable ranges. 