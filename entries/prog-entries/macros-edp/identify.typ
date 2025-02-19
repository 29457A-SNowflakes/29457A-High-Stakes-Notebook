#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Prog: Controlling Wall Stake Mech",
  type: "identify",
  date: datetime(year: 2024, month: 08, day: 7),
  author: "Daniel Dew",
  witness: "Daniel da Silva"
)
= TL;DR
This program...
== Must:
- Provide accurate loading and scoring
== Should:
- Do above quickly and efficiently
- Do above with ease for driver
== Could:
- Provide accurate positions for flipping and 'de-flipping'
#align(center, line(length: 100%))
= The need for controlling wall stakes mech:
Having recently built our wall stakes mechanism, that in theory allows us to score on the higher, more challenging, neutral wall stakes, we now need to program a way to control it. This should allow the driver to, in a match, quickly and effectively score on these neutral stakes.
== Why is this difficult?
As with any problem that requires an engineered solution, the problem is more complex and layered than it may seem on the surface:
== Time
#grid(columns: (40%, 55%), gutter: 5%, [
  The biggest and most difficult constraint is time. During a match, the majority of time is dedicated to mobile goal scoring and defense or offense of modifying corners. With this in mind, it is clear that the driver would have very little time to score on a neutral stake. This problem is amplified when we take into consideration the fact that opposing teams -- even those who cannot score on neutral stakes themselves -- may endeavor to defend these and thus reduce the score difference. With these factors in mind, we should aim to limit the time spent scoring wall stakes to no longer than *3 seconds*
],
[
  #admonition(type: "example", [
    #figure(image("imgs/speedway-time.png", height: 150pt), caption: [100A and 229V (blue) both attempting to score on stakes while being aggressively defended by the red team @SpeedwayDefense])
  ])
]
)
== Accuracy
Another extremely important factor when controlling mechanisms of this kind is accuracy. This is because, as with all forms of scoring in High Stakes, the rings must be precisely placed on the stakes. This problem is significantly amplified with neutral stakes, as the top is significantly out of the footprint of the robot.

== The Three Needs For Accuracy
- Loading
  - Our wall stake mech needs rings to be loaded at a certain position
  - This means the mech must be accurately lifted to the correct position for loading
- Scoring
  - Our wall stake mech must be able to accurately score rings
  - This means lifting the ring to the correct height to put ring on a stake
  - This can encompass both alliance and neutral stakes
- Flipping/De-flipping goals
  - A useful feature of our wall stake mech is the ability to use it as a way to defensively flip goals to avoid manipulation -- or to 'de-flip' them for negative or positive corner match play
  - This means an accurate way to move the mech to the right positions to perform these actions.
// perhaps dds drawings?
/*
 #align(center, [
  #box(inset: 8pt, radius: 8pt, fill: gradient.linear(rgb(113, 120, 128), rgb(60, 63, 66), angle:45deg), [
    #grid(columns: (32%, 32%, 32%), gutter: 4%, [
      #figure()
    ], [
      #figure()
    ], [
      #figure()
    ])
  ])
])
*/
== Usability
=== Driver
As with all programs, it is important that these actions can be performed with ease by the driver. As during a match, the less cognitive load required by the driver to operate subsytems, the more the driver can think about match plays/strategy and movement around the field.
=== Autonomous programming
While less important, as it does not affect a match or competition, making the subsytem easy to use in code can drastically aid with the use of it during autonomous -- therefore reducing time spent programming autonomous routines#footnote([This also reduces my chance of getting a headache.]).