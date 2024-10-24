#import "/packages.typ": *
#import components: *


#show: create-body-entry.with(
  title: "Autonomous Sensors",
  type: "decide",
  author: "Daniel Dew",
  witness: "Aubert Seysses",
  date: datetime(year: 2024, month: 8, day: 22),
)
= Deciding on Autonomous Sensors
With so many options to choose from, it is preferable to group some typically used (for positioning) combinations and decide from those, this is especially prominent as some sensors are useless without other sensors. Complimentery will be decided after.
== Positioning Sensor Combinations
Below are the possible sensor combinations to choose from.
- Drivebase IMEs & IMU -- Odometry
- IMEs only -- Odometry
- GPS Sensor -- VEX Global Positioning
- IMU only -- INS
- 2x rotation sensor odometry pods & IMU -- Odometry
- 3x rotation sensor odometry pods -- Odoemtry
- 2x OSEs sensor odometry pods & IMU -- Odometry
== Descision Matrix
=== Weights
The matrix is weighted like so:
- Cost: 5 (we don't want to spend money)
- Ease of Build: 2, (complex builds are less of a problem)
- Ease of Program: 1 (complex programming is not a problem)
- Reliabilty: 3 (important but quick fixes can make it manageable)
- Accuracy: 4 (we want accurate autons)
#decision-matrix(
  properties: (
    (name: "Cost", weight: 5),
    (name: "Ease of Build", weight: 2),
    (name: "Ease of Program", weight: 1),
    (name: "Reliabilty", weight: 3),
    (name: "Accuracy", weight: 4)
  ),
  ("IMEs & IMU", 5, 5, 3, 3, 2),
  ("IMEs Only", 5, 5, 3, 2, 2),
  ("GPS Sensor", 3, 2, 3, 1, 1),
  ("IMU Only", 5, 5, 2, 1, 1),
  ("2x R-Odom Pods & IMU", 2, 2, 4, 5, 5),
  ("3x R-Odom Pods", 1, 2, 4, 5, 5),
  ("2x OSE-Odom Pods & IMU", 5, 2, 4, 5, 5),
)
#admonition(type: "note")[
  A perfect cost score (25) means we already have it.
]
#admonition(type: "decision")[
  We ultimately chose to go with 2x OSE based odometry pods with an IMU, mostly because they provide accurate results, and we already have all the parts.
]
= Complimentery Sensors
#admonition(type: "decision")[
  Ultimately, we have for now decided against using any complimentary sensors, mostly due to cost and existing (less expensive) options. We have however bought a optical sensor for later use.
]
#admonition(type: "build")[
  == Build Overview
  Before we started to build
  Building the odometry pod was fairly easy, we had to cut a c channel so the inside was removed then add the (half) wheels with spacing on an LSS into an OSE.
  #align(center)[
    #grid(columns: 2, rows: 2, gutter: 20pt,
      [#image("./imgs/odom cad.JPG", height: 100pt)],
      [#image("./imgs/half-cut-process.JPG", height: 100pt)],
      [#image("./imgs/half-cut-end.JPG", height: 100pt)],
      [#image("./imgs/odom-pods-finish.JPG", height: 10pt)],
    )
  ]
]