#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Deciding on a Mogo Mech",
  type: "decide",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 4),
)

= Deciding on the mechanism
To decide on a mogo mech architype we will compare each of the qualities of each design.\
- Grip
- Actuation amount
- Complexity
- Manoeuvrability
- Activation speed
- Weight
And additionally the requirements of each design will be considered seperately.
#components.decision-matrix(
 properties: (
 (name: "Grip"),
 (name: "Actuation amount"),
 (name: "Ease of build"),
 (name: "Manoeuvrability"),
 (name: "Activation speed"),
 (name: "Weight")
 ),
 ("\n\n\nPiston\n\n\n", 5, 3, 4, 5, 4,4),
 ("\n\n\nMotor\n\n\n", 3, 4, 3, 4, 3,3),
 ("\n\n\nPlough\n\n\n", 1, 5, 5, 1, 5,5),
)
== Piston requirements:
- Pneumatic tank
== Motor requirements:
- 5.5W/11W from power budget
== Plough requirements:
- Polycarb or standard metal
Ultimately we have decided to discard the plough as a solution since it drastically reduces our manoeuvrability since we can not drive or turn at high speeds with a mogo or reverse while trying to control it. In addition, not holding the mogo in a fixed position and angle means that it is much more difficult to score rings on stakes. These factors mean that choosing a plough design will greatly limit our match performance and jeopardise our chances of success. However, the usage of a cut polycarb piece for alignment still seems like a useful mechanism to help us manipulate the mogo and therefore more accurately score rings on mogos.
#admonition(type: "decision")[
  Between a piston based solution and a motor based solution, we have decided that a piston based solution is the superior choice. This is because in general pistons are able to perform the task better in almost everyway, with the greatest draw of motors being more actuations. However, this is still a non issue since if we have two tanks with our two piston design then we will have at least 20 actuations per game, which from game analysis [insert relevant page/web link here] is much more than needed in match conditions. Therefore, we will iterate on a piston based solution.
]