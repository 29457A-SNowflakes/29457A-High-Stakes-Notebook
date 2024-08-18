#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "The High Stakes Problem",
  type: "identify",
  date: datetime(year: 2024, month: 08, day: 13),
  author: "Daniel Dew"
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
  - 10'' diameter hexagional bird's eye view profile
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
  - Stakes differ in height from eachother (also from the mogo) meaning different or morphing mechanism to score on all.
  - Placement (field perimeter) risks throwing rings out of the field (risking S1 infringement)
  - Rubber caps mean force must be required to score/descore
],
[#image("./imgs/Ladder.png")], [
  *High Stake and Ladder*\
  In the center of the field, there is a 4' ladder that teams can climb in the endgame to gain etra points. It also has a stake that can fit 1 ring at the very top.
  - 49.89'' (4.165') tall
  - 3 tiers/rungs
  - 4 sides
  *Potential Challenges*
  - Climbing structures requires lots of power and/or time
  - High Stake would require extreme prescision
])
== Scoring Takeaways
- All scoring requires vertical capability
- Employing multiple methods of scoring (mogo, neutral/alliance stake) would require a multiple -- or one more complex, morphing -- systems
- Emphasis must be put on prescision and reliability as there is little room for error
= Rules analasys
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
  + Ring is encircling the stake#footnote([Long description omited, see https://www.vexrobotics.com/high-stakes-manual#sc3])
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


