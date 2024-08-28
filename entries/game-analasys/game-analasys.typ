#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "The High Stakes Problem",
  type: "identify",
  date: datetime(year: 2024, month: 08, day: 13),
  author: "Daniel Dew",
  witness: "Jonah Fitchew"
)
= The Game
\
== Scoring & Game Objectives
#grid(columns: 2, gutter: 20pt, [
  #image("./imgs/Rings.png")
], [
  *Game Elements: Rings*
  \
  The majority of the scoring is done via these coloured rings.
  - Outer diameter 7''
  - Inner diameter 3''
  - Height 2''
  *Potential Challenges*
  - Rings cannot roll on the floor, so manipulation is strictly contact based
  - Large surface area in contact with floor so potential difficulty in manipulation
],
[#image("./imgs/Mogos.png")], [
  *Scoring Object: Mobile Stakes/Goals*
  There are 5 mobile goals ('mogos') on the field, and they can be freely manipulated by teams.
  - 10'' diameter Hexagonal bird's eye view profile
  - 14.5'' height
  - Rubber cap to make descoring more difficult
  *Potential Challenges*
  - Weighted bottom could make manipulation difficult
  - Scoring would require an elevated mechanism.
  - Rubber caps mean force must be required to score/descore
],
[#image("./imgs/HigherStakes.png")], [
  *Elevated Stakes: Neutral and Alliance*\
  There are 2 neutral stakes and 2 alliance stakes allowing for further scoring.
  - Neutral stake 25.09'' tall
  - Alliance stake 16.72'' tall
  - Rubber caps (identical to mogo)
  - Alliance stakes can only be scored by the corresponding alliance
  *Potential Challenges*
  - Stakes differ in height from each other (also from the mogo) meaning different or morphing mechanism to score on all.
  - Placement (field perimeter) risks throwing rings out of the field (risking S1 infringement)
  - Rubber caps mean force must be required to score/descore
],
[#image("./imgs/Ladder.png")], [
  *High Stake and Ladder*\
  In the center of the field, there is a 4' ladder that teams can climb in the endgame to gain extra points. It also has a stake that can fit 1 ring at the very top.
  - 49.89'' (4.165') tall
  - 3 tiers/rungs
  - 4 sides
  *Potential Challenges*
  - Climbing structures requires lots of power and/or time
  - High Stake would require extreme precision
])
== Scoring Takeaways
- All scoring requires vertical capability
- Employing multiple methods of scoring (mogo, neutral/alliance stake) would require multiple systems or 1 complex system such as a lift
- Emphasis must be put on precision and reliability as there is little room for error
= Rules Analysis
== Format
To avoid simply regurgitating the rules (to people who already understand them), we are going to simply list some rules with a paraphrased description; then how it affects us; then potential solutions -- if a rule presents no problem, we will not cover it.\
*e.g.*\
*\<RULE NUMBER\>*
- _Paraphrased rule description_
*Problems*
- This rule affects us like this
- It also affects us like this
*Potential Solution*
- This is one way we can mitigate the risk of infringement...
- This is another...
#components.admonition(type: "note")[
  Inspection, safety and general rules will not be covered, due to their relative simplicity.
]
== Scoring rules
*\<SC3\>*
#grid(columns: 2, column-gutter: 20pt, [
- To be considered scored on a stake, the ring must meet certain criteria:
  + Ring must not be contacting robot #underline([_of same alliance_])
  + Ring is not contacting foam tile
  + Ring is encircling the stake#footnote([Long description omitted, see https://www.vexrobotics.com/high-stakes-manual#sc3])
  + Total ring count must not exceed max ring count of the stake (mobile: 6, neutral & alliance: 2, high: 1)
*Problems*
- Neutral/alliance stakes can contain more than 2, despite only 2 being counted
- Mogos with our rings on can be tipped to effectively descore some rings
*Potential Solutions*
- Driver may have to take care when scoring on neutral/alliance stake
- Driver may have to guard or defend filled mogos
], [
  #grid(rows: 2, row-gutter: 20pt,
    [#image("./imgs/scored-rings-1.png", height: 100pt)],
    [#image("./imgs/scored-rings-2.png", height: 100pt)]
  )
])
*\<SC5\>*
- A mobile goal is considered placed in a corner when it meets the following criteria:
  + Mogo is contacting floor/foam tile
  + Mogo is upright
  + Contact with robot is irrelevant
#components.admonition(type: "note")[Only 1 mogo can be considered placed in each corner, even if 2 meet the requirements.]
*Problems*
- Mogos can be knocked over to mitigate effect of corner
*Potential Solutions*
- Driver can guard/defend the corner, especially as robot contact is irrelevant.
*\<SC6\>*
- A mobile goal that has been placed in a corner will result in the following modifiers being applied to its scored rings:
  - Placed in *positive* corner:
    + Values of all scored rings will be doubled
  - Placed in a *negative* corner:
    + Values of all scored rings will be set to 0
    + For each ring, an equivalent amount of points will be effectively removed from that alliance's score
    + Points scored from auton bonuses and climbing #underline([cannot be removed])
Examples included #link("https://www.vexrobotics.com/high-stakes-manual#sc6")[here].\
*Problems*
- Opposing rings scored in a positive corner can drastically change outcome of game due to 2x multiplier
- Ring scoring can be easily countered by placing them in negative corner
*Potential Solutions*
- Once again, large emphasis must be placed on defending scored rings and preventing them from being placed in a negative corner
- Putting emphasis on scoring on the elevated stakes could mitigate dependance on mogo scoring and corner defence/offence
*\<SC7\>*
#grid(columns: 2, gutter: 20pt, [
  - A robot has climbed to a level when the following criteria is met:
    + Robot is contacting the ladder
    + Robot is not contacting any other field elements
    + Robot is not contacting any mobile goals
    + The robot's lowest point is above that level's minimum height
], [#image("./imgs/levels.png", height: 90pt)])
*Problems*
- Climbing must be completely independant, it cannot rely on lower rungs or the floor
*Potential Solutions*
- When considering climbing, large power consumption -- due to independant climbing -- must be considered, possibly with use of a winch and/or a PTO#footnote([PTO: Power Take-Off])
*\<SC8\>*
- *Autonomous Win point* is awarded to _any_ alliance that have completed the following tasks (as long as they have not broken any rules):
  + At least 3 scored rings of that alliance's colour
  + A minimum of two 2 stakes on the alliance's side of the autonomous line with at least 1 ring of the alliance's color scored
  + Neither robot contacting or breaking plane of alliance's starting line
  + At least 1 robot contacting ladder
*Problems*
- Even if we can complete as many tasks as possible, AWP is still reliant alliance teammate, especially with no. 3
*Potential Solution*
- Ensure prior coordination with teammate to ensure that they move off the line at the start#footnote([If the team does not have a (working) autonomous, advice/technical help can be given to simply move off the line, ensuring AWP])
== Specific Game Rules
*\<SG2\>*
- Horizontal expansion is limited to an #underline([additional]) 6'' on *one* side.
#grid(gutter: 20pt, columns: (200pt, auto), [
  #components.admonition(type: "note", [6'' expansion is based on an 18'' x 18'' starting size, therefore robot can expand to the limit in *1* direction, then 6'' in the same direction.])
], [#grid(rows: 2, gutter: 20pt, columns: 2,
  [#image("./imgs/expansion1.png", height: 80pt)],
  [#image("./imgs/expansion2.png", height: 80pt)],
  [#image("./imgs/expansion3.png", height: 80pt)],
  [#image("./imgs/expansion4.png", height: 80pt)])
])
\
*Problems*
- Mechanisims that rely on expansion must be contained within the footprint of the robot, or not expand over 6'' on one side only
*Potential Solutions*
- Design all expanding mechanisms to expand on one side only
- Use as little space of the 18'' x 18'' to maximise expansion capability
*\<SG3\>*
- *Vertical expansion is limited*; vertical expansion cannot break #underline([2]) or more levels of the ladder
#image("./imgs/vert_expansion.png")
*Problems*
- This rule makes climbing to the top with 1 movement impossible -- unlike in Over-Under -- instead teams have to climb the ladder like... a ladder, using each rung and not skipping levels
*Potential Solutions*
- When designing climbing mechanisms, multi-stage movements must be incorporated; making sure that the robot does not break 2 or more planes #underline([no matter the rotation])#footnote([This is because the planes are measured from the perspective of the field (see long explanation #link("https://www.vexrobotics.com/high-stakes-manual#sg3")[here])])
*\<SG4\>*
- Keep scoring elements *in the field*, rings that exit the field will be given to the corresponding alliances to reintroduce into the game.
*Problems*
- Accidentally removing rings from when, for example, scoring on wall stakes results in a minor violation
*Potential Solutions*
- Driver can take extreme care when attempting to score on wall stakes
- Line-up guides can be designed to aid the driver
- Lots of time on tuning the mechanisms to ensure they are not too powerful
*\<SG6\>*
- Possesion is limited to 2 rings and/or 1 mobile goal
  - Where rings scored on a stake do not count towards possesion count
  - Plowing multiple mobile goals is legal #underline([only when no mobile goals are possessed])
*Problems*
- When attempting to rapidly score rings, this rule may be broken due to more than 2 rings being possessed
- Accidentally plowing a mogo while possessing one will result in a violation
*Potential Solutions*
- For both problems, driver care can be applied to avoid SG6 infringement
- A distance/colour sensor could be used in conjunction with an algorithm to stop manipulating rings once at the possesion limit
  - Using a colour sensor could allow for a colour sorting algorithm to only intake alliance's rings
*\<SG7\>*
- Dont cross the autonomous line during autonomous
  - Robots must not contact or break the plane of the autonomous line#footnote([basically the halfway line]) during autonomous
*Problems*
- Accidentally crossing line due to lack of tuning or planning of the autonomous movements would result in the loss of ABP and AWP
*Potential Solutions*
- Extreme care and consideration must be used when planning out the autonomous movements
= Primary Takeaways
Certain solutions appear more than once, meaning we can prioritise them to mitigate more risks at lower time/complexity costs.
== Driver Skill
We have concluded that driving is a factor in nearly all the rules specifically targeted defence and offence, High Stakes is a skillful game that requires lots of practice from the driver. Putting emphasis on training our driver, using drills, friendly matches etc. must be a priority.
== Control and Precision
We have also concluded that prescicion is key to avoiding rule infringement and also to maintain effectiveness. All mechanisms must be designed with extreme precision with lots of time allocate for fine-tuning to a) maximise effectiveness of mechanism and b) avoid breaking rules such as SG4 and SG7.
= The Plan
This game and rule analysis has allowed us to form a plan on how we will approach the coming weeks as we organise ourselves to tackle the season.
== Timeline Considerations
- The emphasis on driver practice means we will try our best to allow for plenty of driver practice
- The further emphasis on autonomous tuning means we will have to make ample room for autonomous testing in the timeline
== Careful Design
- We will also be making sure that all our designs our designed with strength, prescicion and effectiveness in mind during all stages of the design process -- this is especially prominent during the CAD phase