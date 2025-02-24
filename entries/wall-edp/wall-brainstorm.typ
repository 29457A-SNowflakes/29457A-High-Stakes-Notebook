#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Brainstorming Wall Stake Mechs",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 8),
)
= Passive Redirect
One potential solution is to have a trapdoor mechanism mounted on the hook, which is tensioned to allow rings to be intook upwards, but when the intake is reversed it slides backwards down onto a plastic sheet and transitions into a claw or bucket mechanism, which can be used to score rings.
\
Here is an example of such a passive redirect by 3131V #link("https://youtu.be/04BBsr4pxws?si=YRwzIhIjhSFgzMkC")[\@DrumrollPlease]

Pros and cons for a passive redirect:
#components.pro-con(
  pros: [
    - No PSI or motors required
    - Fairly fast
  ],
  cons: [
    - Can't intake whilst redirecting
  ]
)
\
= Piston Redirect
Another option we have is a redirect solution, which uses a piston for sorting rather than reversing the intake, before transitioning to a scoring mechanism. The main advantage of this is that it doesn't require the intake to be stopped whilst trying to score rings on a wall stake.

8889A have a solid example of what a piston mech could be. #link("https://www.youtube.com/watch?v=vlP5HywwSdQ")[\@vex8889A]

Pros and cons for a piston redirect:
#components.pro-con(
  pros: [
    - Can intake while redirecting
    - Pistons make redirecting quick
  ],
  cons: [
    - Limited actuations
    - Requires hood based intake
  ]
)
\
= Lady Brown
One of the more recent wall stakes design intially pioneered by #link("https://youtu.be/Aa6HvUxea9Q?si=avfr63X9KSH1YRcE")[18522R] utilises a two bar mechanism with a pivot at the base and a scoring mechanism at the top. Whilst a ring is on the hook mech the scoring mech clamps around it and it pivots directly off the hooks to score onto wall stakes. The placement of the two bar helps retain a low centre of mass and allows for clean and consistent scoring. This mech works well with a piston puncher style colour sorter positioned at the apex of the hook mech as it doesn't clog up the intake and render it briefly unusable whilst a ring is being rejected unlike other sorter designs.

#figure([#image("./imgs/LBPistonSorter.png", height: 160pt)], caption: [18522R Piston based ring sorter: When the wrong colour is detected a piston pops up, which alters the trajectory of the ring causing it to not be scored.])

#figure([#image("./imgs/LBMechExample.png", height: 160pt)], caption: [Example of what that mech could look like])

Pros and cons for lady brown:
#components.pro-con(
  pros: [
    - Very fast
    - No redirect required
    - Reliable ring sorting potential
  ],
  cons: [
    - Extra motor required
  ]
)

= Fish Mech
A very recent mech has enterred the meta, that is very similar to a lady brown mech in terms of design. It also uses a two bar mechanism but the pivot is positioned so that it picks the rings up during their ascent instead of at the apex. Fish mech typically uses a claw to grapple the rings. However, our analysis has led us to conclude that it is much easier to defend against because it's quite slow and the angle has to be perfect.

#components.pro-con(
  pros: [
    - No redirect required
  ],
  cons: [
    - Less consistent than other wall stake mechanisms
    - Slower than other wall stake mechs
  ]
)