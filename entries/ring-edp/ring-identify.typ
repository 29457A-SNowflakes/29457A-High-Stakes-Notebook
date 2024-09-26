#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Manipulating Field Elements: Rings",
  type: "identify",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 21),
)

= The Need For a Ring Mech
Scoring and descoring points in VEX HiS requires manipulating and placing rings onto stakes: either mogos or wall stakes. This means that in order to score points and therefore have a chance at winning we need a mechanism, which is capable of scoring rings onto mogos and eventually onto wall stakes. Our current game analysis and overall team evaluation posits that High Stake is not worth designing a mechanism for (despite its lucrative point scoring potential) due to the requirements of having a T3 climb on our bot. Overall we want a mechanism that can:
- Intake rings
- Elevate rings upwards
- *Reliably* score rings onto mogos
-- Potentially score rings onto alliance and wall stakes

The requirements for our ring mech are much more rigorous than other components, which is due to its importance in allowing us to score and win matches.
Currently, scoring onto wall and alliance stakes is more of a stretch goal than a necessity at the moment.

#admonition(type: "example")[
  == Additional Motivation
  Throughout MOA, every single team, which made elimination had a ring intake. This has helped us realise that competing without a ring mechanism would be a catastrophic blunder.

]