#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Rebuilding the V1 Intake",
  type: "build",
  author: "Aubert Seysses",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 23),
)
= Rebuild
We decided to rebuild the intake due to the fact that the transition between the first and second stage intake would be very difficult to fit in, due to the positioning of the first stage and the bracing. As a result we redid the CAD to accommodate those problems.
#align(center)[

  #figure(image("./imgs/AubIntakeCAD.png", height: 200pt), caption: [CAD])
  
]
= First Stage
The initial plan for the first stage was to have one set of rollers bring a ring up a polycarb ramp with a depression in the end, allowing hooks to pass and pick up the ring in the centre before moving the ring up and scoring it on the mogo. The first stage was also largely based off of the initial first stage intake in order to salvage that work. However during the building it became obvious that this configuration would not function. The second set of rollers would not fit in their pre-assigned position and even if they did they would not push the ring far enough up the slope for it to reach the hooks. Unfortunately by this point we had very little time left before the competition to CAD something new, as well as build and fine tune it and additionally fit in autons, so we had to improvise with the rough frame work from the CAD.
#align(center)[
  #grid(columns: 2, gutter: 20pt, [
    #figure(image("./imgs/AubsIntakebuild.png", height: 125pt), caption: [CAD])
  ], [
    #figure(image("./imgs/diagram1.png", height:125pt), caption: [Diagram of what we want to do])
  ])
]
Instead of using 2 sets of flex wheels on top, we used one on the top and one on the bottom. This more efficient use of flex wheels saved us space and helped solved our problems. 
\
= Second stage 
The second stage is a hooks mech. The hooks come up from underneath hooking onto a ring, carrying it to the top and scoring it on a mobile goal. That is how it works in theory.
//#image("./imgs/diagramhooks.png")
#align(center)[

  #figure(image("./imgs/hooks diagram .png", height: 200pt), caption: [Hooks concept diagram])
  
]
The practical implementation took a lot more work than creating a concept to suit our needs. Our first issue became obvious when we tried to score rings for the first time and the ring shot out the top and to the side of the intake instead of scoring on the mogo like we had hoped.

The issue was at the end of the first stage rollers, they sometimes put the ring in a position which meant that the hooks would hit the bottom of the ring instead of getting the centre of it and became more like a scoop than a hook. To solve this first issue, we built a flexible hard stop, which held the rings in the perfect position to be hooked through and the hooks had enough force to overcome the hardstop.

The hard stop was a thin piece of polycarb on the intake that would hook through the ring's centre and hold it in the correct position until enough pulling force is applied by the hooks. 
#align(center)[

  #figure(image("./imgs/plastic ring holder new.png", height: 200pt), caption: [Flexible hard stop])
  
]
The second main issue we encountered when experimenting with our old intake was when more than 3 rings were scored on the mogo the hooks would get stuck and would not be able to complete a full rotation. This issue would be truly catastrophic unresolved as it reduces the possible points on a mogo from 8 to 5, which when doubled is a decrease from 16 to 10 or require us to make the intake reverse the intake instead of cycling properly, which is undesirable as it is much slower.
#align(center)[

  #figure(image("./imgs/proplemhooks.jpg", height: 200pt), caption: [Demonstration of hooks catching on rings])
  
]
//plastic ring holder
Initially we were stumped by this problem. When we turned to see how other teams solved this problem as we knew more than a few must have encountered it, we found very little useful information so we defined the problem. It was hooks becoming stuck on the rings, and the reason for the problem was that rings were too close to the path of the hooks. The obvious solution is to push them away but how we would achieve this was the problem. In the end we used two sheets of polycarb bent at a right angle to the intake with a slope on the top allowing the rings to slide off smoothly, which ended up working as desired.
#align(center)[

 #figure(image("./imgs/botlookinghot.jpg", height: 600pt), caption: [])
  
]