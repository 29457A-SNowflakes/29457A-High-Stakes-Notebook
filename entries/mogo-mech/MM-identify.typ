#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Manipulating Mobile Goals",
  type: "identify",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 8),
)

= The Need For a Mobile Goal Mechanism
Scoring in High Stakes is a complex engineering challenge. This is because, unlike in last years game#footnote([In OU even basic push bots could see relative success at scoring since triballs could be simply pushed to score.]), it requires a dedicated and precise mechanism in order to put rings on the stakes - both mobile and static. Additionally, from analysis of the rules and games played [insert relevant footage] we have realised the importance of being able to manipulate and hold mogos.\
Therefore we need to design a subsystem that can:
- Grab and release mogos
- Securely hold grabbed mogos

#admonition(type: "example")[
  == Further Motivation
  One case study for the need of mogo manipulation is the early season 'Mall of America' (MOA) signature event. Throughout this competition, the manipulation of filled or semi-filled mogos was key to winning a match -- in most, if not all, it was actually the deciding factor. During our analysis of the key games during MOA, and our analysis and familiarisation of the manual, it became increasingly obvious that leaving this aspect of High Stakes out of our design would be a bad decision.
  #grid(columns: 2, gutter: 20pt, [
    #figure(image("./imgs/moa-manipulation1.png", height: 160pt), caption: [A snapshot from a video taken during the MOA finals match 1 @MOAFinals, showing all robots manipulating mogos to their advantage.])
  ], 
  [
    #figure(image("./imgs/moa-manipulation2.png", height: 160pt), caption: [One of the Tournament Champions from MOA, 11101B Barcbots, using a mogo & clamp. (Snapshot from Pits & Parts showcase @BarcbotsPitsNParts).])
  ])
]