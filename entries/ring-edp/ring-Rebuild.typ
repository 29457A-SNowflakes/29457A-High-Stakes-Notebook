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
We decided to rebuild the intake due to the fact that the transition between first and second stage intake would be very difficult to fit in, due to the positioning of the first stage and the bracing. As a result I CADed a theoretically sound intake to accommodate it all without issue.
#align(center)[

  #figure(image("./imgs/AubIntakeCAD.png", height: 200pt), caption: [CAD])
  
]
= First Stage
The plan was for the first stage one rollers to bring a ring up a polycarb ramp with a depression in the end, allowing hooks to pass and pick up the ring in the center before moving the ring up and scoring it on the high stake. The first stage was also largely based of the initial first stage intake in order to salvage that work. However during the building it became obvious that this configuration would not function. The second stage rollers would not fit in their pre-assigned position and even if they did they would not push the ring far enough up the slope for it to reach the hooks. Unfortunately by this point we had very little time left before the competition to CAD something new, build, fine tune it, and do autons, so I freestyled it with the rough frame work from the CAD.
#align(center)[
  #grid(columns: 2, gutter: 20pt, [
    #figure(image("./imgs/AubsIntakebuild.png", height: 150pt), caption: [CAD])
  ], [
    #figure(image("./imgs/diagram1.png", height:150pt), caption: [Diagram of what I want to do])
  ])
]
Instead of using two sets of flex weels on top we used one on the top and one on the bottom as this allowed us to use fewer flex wheels more efficiently and save on space solving our problems. 
\
= Second stage 
The second stage is a hooks mech. The hooks come up from underneath hooking on to a ring, carrying it to the top and scoring it on a mobile goal. At least in theory that is how it would work.
//#image("./imgs/diagramhooks.png")
#align(center)[

  #figure(image("./imgs/hooks diagram .png", height: 200pt), caption: [Hooks concept diagram])
  
]
The practical implementation took a lot more work than creating a concept to suit our needs. Our first Issue became obvious when we tried to score rings for the first time and the ring shot out the top and to the side of the Intake instead of scoring on the mogo like we had hoped. The issue was at the end of the first stage rollers, they sometimes put the ring to a point where when the hooks would come along they would hook the bottom of the ring instead of the center of it and became more like a scoop than a hook. to solve this first issue I built a flexible hard stop which held the rings in the perfect position to be hooked through and the hooks had enough force to move the ring from where it was hard stopped. The hard stop was a clever thin piece of polycarb on the first stage intake that would hook through the center of a ring going up the intake and hold it there until enough pulling force is applied by the hooks. 
#align(center)[

  #figure(image("./imgs/plastic ring holder.jpg", height: 200pt), caption: [Flexible hard stop])
  
]
The second main issue we encountered when experimenting with our old intake was when more than 3 ring were scored on the mogo the hooks would get stuck and would not be able to complete a full rotation. This issue would be truly catastrophic unresolved as it would limit your possible points scored to 5/8 or require us to make the intake go backwards and forwards instead of cycling properly.
#align(center)[

  #figure(image("./imgs/proplemhooks.jpg", height: 200pt), caption: [Demonstration of hooks catching on rings])
  
]
//plastic ring holder
Initially I was stumped by this problem. When I turned to see how other teams solved this problem as I knew more than a few must have encountered it, I found very little useful information so I defined the problem, it was hooks becoming stuck on the rings, and the reason for the problem: the rings are too close to the path of the hooks. The obvious solution is to push them away but how we would achieve this was the problem. In the end I used two sheets of poly carb bent at a right angle to the intake with a slope on the top allowing the rings to slid off smoothly. It worked.
#align(center)[

 #figure(image("./imgs/botlookinghot.jpg", height: 600pt), caption: [])
  
]