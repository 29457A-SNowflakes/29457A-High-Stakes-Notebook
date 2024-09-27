#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Rebuilding the Intake",
  type: "build",
  author: "Aubert",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 23),
)
= Rebuild
We desided to rebuild the intake due to the fact that the transition between first and secound stage intake would be very difficult to fit in, due to the positioning of the first stage and the bracing. As a result I caded a theoreticaly sound intake the whole intake at once as to acomodat it all without issue.
#align(center)[

  #figure(image("./imgs/AubIntakeCAD.png", height: 200pt), caption: [CAD])
  
]
= First Stage
The plan was for the first stage one rollers to bring a ring up a polycarb ramp with a depretion in the end, alowing hooks to pass and pick up the ring in the center then moving it up and scoring it on the high stake.the first stage was also largly based of the initial firs stage intake in order to salvage that work. However during the building it became obvious that this configuration would not function. The secound stage rolers would not fit in their predesine position and even if they did they would not push the ring far enough up the slope for it to reach the hooks. Unforunutly by this point we had verry little time left before the compition to CAD somthing new build, fine tune it and do autons, so I free stiled it with the rough frame work form the cad.
#align(center)[
  #grid(columns: 2, gutter: 20pt, [
    #figure(image("./imgs/AubsIntakebuild.png", height: 150pt), caption: [CAD])
  ], [
    #figure(image("./imgs/diagram1.png", height:150pt), caption: [Diagram of what I want to do])
  ])
]
Instead of using two sets of flex weels ontop we used on on top and one on botom this alowed us to use fewer flex whell more efficianly and save on space solving our problems. 
\
= Secound stage 
The secound stage a hooks meck, the the hooks come up from underneath hooking on to a ring carying it to the top and scoring it on a mobile goal. At least in theory that is how it would work.
//#image("./imgs/diagramhooks.png")
#align(center)[

  #figure(image("./imgs/hooks diagram .png", height: 200pt), caption: [Hooks consept diagram])
  
]
The practical implementaition took a lot more work than creating a consept to suit our needs. Our first Issue became obvious when we tried to score rings for the first time and the ring shot out the top and to the side of the inke instead of scoringon the mogo like we had hoped. The issue was the end of the first stage rollers somtimes put the ring to a point where when the hooks would cone along and instead of hooking whrough the center as desired it would hook the botom of the the more like a scoop than a hook. to solve this first issue I build a flexible hard stop witch held the rings in the perfect position to be hooked through and the hooks had enough force to move the ring from where it was hard stoped. The hard stop was a clever thin peace of polycarb on the first stage intake that would hook through the center af a ring going up the intake and hold it there until enough pulling force is aplied by the hooks. 
#align(center)[

  #figure(image("./imgs/plastic ring holder.jpg", height: 200pt), caption: [Flexible hard stop])
  
]
The secound main issue we encounter when trying was when more than 3 hooks where scored on the mogo the hooks would get stuck and would be abel to complete a full rotation. This issue would be truley catastrofic unresolved as it would limit you prsible points scored to 5/8 or require us to make the intake go backwards and forwrds instead of cycling properly.
#align(center)[

  #figure(image("./imgs/proplemhooks.jpg", height: 200pt), caption: [Hooks catching proplem])
  
]
//plastic ring holder
Initialy I was stumped on this problem. When I turned to see how other teams solved this problem as more than a few must have encoundter it I found very little useful information so I defined the problem: hook geting suck on the rings, the reason for the problem: the rings are to close to the to the path of the hooks. The obvious is to push them away but how to do it was not bovious. in the end I used to sheest of poly carb bent at righ angle to the intake with a slope on the top alowing the rings to slid off smothly. It worked.
#align(center)[

 #figure(image("./imgs/botlookinghot.jpg", height: 600pt), caption: [])
  
]