#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "The High Stakes Problem",
  type: "identify",
  date: datetime(year: 2024, month: 08, day: 13),
  author: "Daniel Dew, Jonah Fitchew"
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
  - Very tall
])
