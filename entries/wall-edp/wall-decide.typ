#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Deciding on a Wall Stakes Mech",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 17),
)

= The most consistent wins
Overall we want the mechanism that has the most reliable scoring ability in a variety of circumstances but also we want a mechanism that is fast overall. However, other factors may drastically affect the viability of a solution.
We will compare each of these qualities:
- Complexity
- Speed
- Actuation potential
- Intake inteference

#components.decision-matrix(
 properties: (
 (name: "Complexity"),
 (name: "Speed"),
 (name: "Actuation potential"),
 (name: "Intake inteference")
 ),
 ("\n\n\nPassive Redirect\n\n\n", 2, 3, 4, 1),
 ("\n\n\nPiston Redirect\n\n\n", 0, 4, 3, 4),
 ("\n\n\nLady Brown\n\n\n", 4, 5, 5, 5),
 ("\n\n\nFish\n\n\n", 5, 3, 5, 4),
)

= Final decision
We decided to go with a Lady Brown(LB) style mechanism, because we believe that it is the most consistent solution across the board for our robot. Unlike redirects, there is much less need to tune to get it functional, which is valuable time saved. In addition, LB doesn't clog up the hook and stop you from intaking whilst the ring redirects to a scoring mech. A piston redirect, doesn't suffer from that issue but it has limited actuations, which may become a problem in match scenarios and secondly isn't compatable with a hook based ring mech, which would require us to *completely scrap* that entire mechanism and tune for that instead, which is something we as a team given the viability of other solutions. Whilst, fish mech is probably the simplest to implement, our analysis from watching matches, which we have watched has shown that it is many ways inferior to LB since it is much slower, requires more precision from the driver and also much easier to defend against. Furthermore, LB pairs best with the piston based ring sorting tech pioneered by 18522R, which we are also looking to implement since it is much more consistent than velcoity control base solutions.