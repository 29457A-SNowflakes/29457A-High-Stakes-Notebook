#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V2 Identify: Ring Mech",
  type: "identify",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 10, day: 2),
)
= Identify the problem
In order to precisely identify the problem, we will analyse what worked well about our current solution and what didnt.
= What went well
It was able to score consistently at lower RPMs

= To be improved
The ring mech was unable to score consistently at higher RPMs, which meant that it was overall slower than other robots on the field. Additionally, we may want to implement some form of colour sort to automatically discard unwanted rings.

= What we want
Moving forwards we want a ring mech solution, which:
- must score rings consistently
- should score rings quickly
- can potentially discard unwanted rings