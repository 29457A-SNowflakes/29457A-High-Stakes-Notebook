#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "What needs improving",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 11, day: 20),
)

= Fixes
This first section is focused on improving things, which didn't work particularly well in our current bot.
== Improving the mogo
Our post JWS bot had issues with the mogo clamping and aligning. Between JWS and Coventry we switched from utilising a Class 1 Lever to using a Class 3 to clamp because of spacing issues during the CAD/rebuild phase. However, in terms of match performance, we sometimes struggled clamping mogos, which is detrimental in a match. Therefore we are reconsidering as to whether our redesign should use a class 1 or class 3 lever.

=== First Class Lever
#components.pro-con(
  pros: [
    - Can offer mechanical advantage
    - Effort can go inside, which can be more space efficient
  ],
  cons: [
    - Slower
    - Might be tricky to fit in - if limited space inside the bot
  ]
)

=== Third Class Lever
#components.pro-con(
  pros: [
    - Gives speed advantage
  ],
  cons: [
    - Provides less clamping force 
    - Since Load and Effort are on one side this can increase complexity and footprint
  ]
)

#admonition(type: "note")[
  Ultimately, there's little difference in terms of performance between a class 1 and a class 3. It is more situation dependant, where the overall design within the context is important, rather than any subsystems capabilities on paper.
]

== Improving stability/weight issues
There are several methods which can be used to improve our robot's centre of mass. Firstly, removing weight off the top and shifting components to be as low to the ground as possible greatly helps. Minimising overhangs and widening drive base will also help with stability. Finally, we can additional weight to the bottom of our drive, as that will shift centre of mass downwards. We did this last year and we found that the the best way to do this in OU was to box C-Channel and put nylocks wrapped in nonslip mat held down by zipties, in order to shift our centre of mass forward.

=== Removing/Shifting existing weight down
#components.pro-con(
  pros: [
    - Greatly helps improve stability
    - Decreasing mass can help with motor performance (Power = mass \* acceleration \* velocity)
    - Less weight reduces coefficient of friction
  ],
  cons: [
    - Adds constraints to consider during CAD, build and test phases
    - Loss of weight means bot is easier to push around
  ]
)

=== Minimising overhangs/Widen base
#components.pro-con(
  pros: [
    - Wider base will make us harder to tip from certain directions
    - Fewer overhangs make us overall more stable
  ],
  cons: [
    - Widening drive base would require redoing a lot of work
    - Wider drives have their own caveats
    - Few overhangs to start with
  ]
)

=== Adding additional weight
#components.pro-con(
  pros: [
    - More mass means more momentum
    - Can quite substantially shift down our centre of mass
    - More weight due to mass will cause us to be harder to push
  ],
  cons: [
    - Increased weight will cause greater friction coefficient
    - Mass is defined as resistance to acceleration (Newton's Second Law)
    - More mass will harm motor performance (Power = mass \* acceleration \* velocity)
  ]
)

== Ways to fix intake
The main problem with the intake was that it would jam occasionally and struggle to suck in rings. There are several approaches, which can help curb this. Firstly, experimenting with different flex wheel configurations can help increase traction with more flex wheels tending towards more grip. In addition, we can try redesigning intake chain so its on the same axis as the chain. In addition, we can experiment with the use of plastic to make our intake lighter yet still durable. This weight saving doesn't necessarily help with the inherent problem with the intake, but weight saving is generally a good idea.

= Improvements
This section is dedicated to considerations to improve and upgrade existing systems, which already well.

== Wall stakes mech
Our current wall stakes mech is based off the design by 18522R, which was arguably the most consistent part of our robot and additionally it scored *quite quickly* which is important, as whilst playing wall stakes your bot is very susceptible to being pushed - scoring faster mitigates the chance of this.
However, we have seen an interesting new design, which came out early this month, from #link("https://www.youtube.com/watch?v=1pdTXlRcLxw")[1028A]. There wallstakes mech or direct mech as they call - utilises a valve or 1 way lock mechanism on a ring bucket that is mounted on their hook mechanism. What this allows is for rings to pass cleanly from the intake to a mogo without interferance or it can allow them to score onto wallstakes without redirecting first, which would waste time.
[Drawn diagram of direct mech]

Here's the pros and cons for remaining with a 18522R based design.
#components.pro-con(
  pros: [
    - The golden standard
    - Known to work
  ],
  cons: [
    - It is quite heavy
  ]
)

Pros and cons for moving onto a 1028A inspired design.
#components.pro-con(
  pros: [
    - More compact
    - Easier to score with
    - Can be faster
  ],
  cons: [
    - Similar in performance to 18522R's design
  ]
)

//Talk about echo mech

== Ring scoring
A nice adjustment to our bot would be being able to score onto aliance stakes using our hook mech. This requires redoing the angle of our hooks for the CAD/build phases.