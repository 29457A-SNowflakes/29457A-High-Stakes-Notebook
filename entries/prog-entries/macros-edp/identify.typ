#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Controlling The Wall Stake Mech",
  type: "identify",
  date: datetime(year: 2024, month: 08, day: 7),
  author: "Daniel Dew",
  witness: "Daniel Dasilva"
)
= TL;DR
\
- Scoring on neutral stakes is a necessity
- Scoring on neutral stakes must take no longer than 3 seconds
== Why do we need to control the wall stakes mechanism?
Having recently built our wall stakes mechanism, that in theory allows us to score on the higher, more challenging, neutral wall stakes, we now need to program a way to control it. This should allow thge driver to, in a match, quickly and effectively score on these neutral stakes.
== Why is this difficult?
As with any problem that requires an engineered solution, thge problem is more complex and layered than it may seem on the surface.
== Time
#grid(columns: (40%, 55%), gutter: 5%, [
  The biggest and most difficult constraint is time, during a match, the majority of time is dedicated to mobile goal scoring and defense or offense of modifying corners. With this in mind, it is clear that the driver would have very little time to score on a neutral stake. This problem is amplified when we take into consideration the fact that opposing teams -- even those who cannot score on neutral stakes themselves -- may endeavor to defend these and thus reduce the score difference. With these factors in mind, we should aim to limit the time spent scoring wall stakes to no longer than _3 seconds_
],
[
  #admonition(type: "example", [
    #figure(image("imgs/speedway-time.png", height: 150pt), caption: [100A and 229V (blue) both attempting to score on stakes while being aggressively defended by the red team @SpeedwayDefense])
  ])
]
)
