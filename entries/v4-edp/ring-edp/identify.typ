#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Issues with Current Ring Mech",
  type: "identify",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2025, month: 2, day: 2),
)
= Defining our Needs
We are going to look at what did and didn't work with our current ring mech in order to create a set of goals, which we wish to achieve.

= What worked well
Our current ring mech is able to score rings fairly quickly and consistently.

= What didn't
A problem which has been present for us since V1 is our lack of colour sorting on our robot, which is not only a problem in matches if you accidentally suck in an oppositely coloured ring but more so in autonomous as if there's any small mistake, the robot will have no way of knowing that its accidentally scored a blue ring giving the other team a top ring and losing the autonomous bonus, which is so crucial in deciding the outcomes of these matches.

= Our focus
These are the requirements for the intake and all its aspects:
- must score rings *consistently*
- must colour sort rings
- should score rings quickly
