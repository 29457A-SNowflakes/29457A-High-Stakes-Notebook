#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Testing the wall stake mechanism",
  type: "test",
  witness: "Daniel da Silva",
  author: "Jonah Fitchew",
  date: datetime(year: 2025, month: 2, day: 10),
)
Wall stakes is where the game gets interesting. they are accessible only through seperate mechanisms and are highly fought over as they cant be possesed, they are also a large part of our strategy so it is important that our mechanism for this is highly tested and stress tested, for reliability, speed and consistency. 

== Test 1: 
this is the distance test to ascertain how far away the robot has to be for clean scoring, a positive result is defined by whether the ring is scored. 
- position ring in the friction fit part of the mechanism 
- position the robot with the preroller against the wall stake pole base. 
- run wall stake motor. 
- move robot back 2.5cm
- repeat until does not score 
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 6, rows: 2, 
    [distance from wall stake (cm)], [0], [2.5], [5], [7.5], [10], 
    [Outcome], [success], [success], [success], [failure], [failure], 
    ) 
  ] 
]
Observing these results, we can see that the wall stake mechanism is good to score until 7.5cm away from the base of the wall stake, we are also aware that after 2.5cm the scoring becomes inconsistent and not as clean as we would like, we will therefore construct our aligner to align right to the front of our preroller. 

== Test 2:
This test is to ascertain at which angles the mechanism is good to score from. scoring at an angle is beneficial for consistency but we appreciate it may be difficult using only the 5.5W motor. 
- align the robot at perpendicular to the wall stake 
- run wall mechanism motor 
- move robot 15 degrees 
- repeat until cannot score. 
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 6, rows: 2, 
    [angle from perpendicular(degrees)], [15], [30], [45],  
    [Outcome], [success], [failure], [failure], 
    ) 
  ] 
]
Observing these results, we can see that our robot ideally needs to be perpendicular to the wall stake for the best scoring otherwise the consistency drops off dramatically, this data also aids us in creating the perfect aligner out of polycarbonate for match play. 

== Test 3: 
This test will assess how structural the mechanism truly is, we will slow motion video the quick successive scoring with the mechanism and qualitatively assess whether it is secure. 
- run video 
- run wall stake motor 
- observe footage 
#align(center)[
  #box(inset: 15pt, radius: 8pt, fill: gradient.linear(rgb(4, 176, 27), rgb(27, 107, 38), angle:-45deg))[ 
    #table(columns: 6, rows: 2, 
    [Test], [1], [2], [3],  
    [Outcome], [fail], [fail], [fail], 
    ) 
  ] 
]
Observing the footage we saw a lot of wobbling which we consider to be an unnacceptable lack of security in terms of match play as we feel if it were knocked in the wrong way it might be bent into disfunctionality. This however, makes no sense as we have the same bracing 