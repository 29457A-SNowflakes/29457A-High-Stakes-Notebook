#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "CADing the New Design",
  type: "build",
  date: datetime(year: 2024, month: 08, day: 7),
  author: "Jonah Fitchew",
  witness: "Daniel Dew, Daniel da Silva"
  )
#set quote(block: true)
= Starting the New Design
== Recycling
When begginning a new design cycle, there is often many transferrable aspects of the last design. In this case, we can reuse a large ammount of the existing drivetrain, as the width and the gear ratio are remaining the same.
#figure(
  image("./imgs/cad/recycled-dt.png", height: 250pt),
  caption: [
    The CAD of the recycled drivetrain from both previous design cycles.
  ],
)
== Modifying Drivetrain Design
=== Shortening drivetrain
While shortening the drivbase does not directly benefit drivetrain performance, it allows us to further shrink our footprint, this can be very useful for many reasons:
- Field Manoeuvrability: being smaller (even if its marginal) can greatly increase our ability to navigate through and around field obstacles -- as well as outmaneuvre opponents.
- Expansion: Having a smaller footprint within the allowed 18x18'' size limit allows our expansion (in desired direction) to be greater.
  - Example: robot with starting size 18x18'' allows for 6'' in one direction. Whereas, a robot that has starting size of 18x15'' allows for expansion of 9'' (assuming in direction of smaller dimension)
=== Stacking motors