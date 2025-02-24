#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Identify Issues with Current Drive",
  type: "identify",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2025, month: 2, day: 1),
)
= Defining our Needs
Since this bot is being made in parallel to our existing one, we can't reuse our current drivetrain. However, we decided that this was a good excuse to see what elements of our drive we could upgrade were. Using a diverging diamond style approach, what worked well with our drivetrain so we know what we should aim to exemplify and see what didn't work so we know what we should avoid.

= What worked well
Our current drivetrain offers us good acceleration and speed. Additionally, it was fairly light, which helped curb the weight on our bot.

= What didn't
The positioning of the back motors got in the way of designing our mogo clamp.

= Our focus
These are the requirements for our new drivetrain and all of its aspects.
- Must have optimised acceleration and speed
- Must provide good traction
- Should offer good manoeuvrability
- Shouldn't interfere substantially with other systems (such as mogo mech)