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

//However, we have decided to first focus on the EDP of the holding the mogo, since a ring mech isn't useful if we can't hold a mogo in the first place and then we will look at the EDP for rings afterwards.