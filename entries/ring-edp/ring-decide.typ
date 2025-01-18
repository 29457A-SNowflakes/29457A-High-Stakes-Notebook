#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Deciding on an Intake for V1",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 16),
)

= Deciding on our first stage intake
Ultimately a reliable design that can *consistently* and *accurately* intake and put rings onto stakes and mogos is our top priority when choosing a design for our first stage intake. A design that requires fewer motors and is fast also holds signifigant weighting in our decision. Ultimately, for each design we are going to be comparing:
- Consistency
- Traction
- Speed
- Motor requirements
- Build complexity
#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Traction"),
 (name: "Speed"),
 (name: "Motor Requirements"),
 (name: "Build Complexity")
 ),
 ("\n\n\nRubber Bands/Non-slip mat\n\n\n", 3, 3, 3, 3, 5),
 ("\n\n\nFlex Wheels\n\n\n", 5, 5, 4, 4, 2),
 ("\n\n\nWrist Mechanism\n\n\n", 1, 2, 1, 1, 1),
 ("\n\n\nIntake Rollers\n\n\n", 3, 3, 3, 3, 4),
)
= Deciding on our second stage intake
Since we are not going for a claw mech a second stage will be needed. For our second stage we are looking for a reliable solution but also for a solution that is fast and is preferably light. This decision is tricky since there is a lot of #link("https://www.vexforum.com/t/hook-or-hood/127440")[discourse] and mixed signals in the VEX community about which solution is better.
#components.decision-matrix(
 properties: (
 (name: "Consistency"),
 (name: "Speed"),
 (name: "Weight")
 ),
 ("\n\n\nHood Mech\n\n\n", 4, 3, 3),
 ("\n\n\nHook Mech\n\n\n", 4, 4, 4),
)
#admonition(type:"decision")[
  From our analysis and our preconstrained requirements (outlined in the brainstorm section), a flex wheel intake is by far the best choice for an us to implement for our first stage because it is has excellent traction and grip, its ability to perform the task is consistent, it only needs one motor and we can position the flex wheels in different configurations to control points of contact when intaking the ring.
  A flex wheel first stage necessitates the need for a second stage intake, in order to score rings onto the mogos. For this we decided to go ahead with a hook based solution since it allows us since it is fairly fast, can be made consistent if tuned properly and is also lighter than a hood mechanism. Whilst in brainstorm one of the benefits of a hood is its higher affinity to a bucket mech this is #link("https://youtu.be/xIfhopi0T5Q?si=AAnsrwHcT6hpHi9m")[still possible] with a hook based solution. However for the time being we are choosing not to dedicate time designing a wall stake mech.
  \
  *Current Plans:*
  - Flex Wheel First Stage
  - Hook mech
  - No current plans for wall stakes 
]