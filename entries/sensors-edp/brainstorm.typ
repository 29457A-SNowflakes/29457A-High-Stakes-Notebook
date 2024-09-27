#import "/packages.typ": *
#import components: *


#show: create-body-entry.with(
  title: "Brainstorming Autonomous Sensors",
  type: "brainstorm",
  author: "Daniel Dew",
  witness: "Jonah Fitchew",
  date: datetime(year: 2024, month: 9, day: 13),
)
= Brainstorming Sensors
Ultimately, the combinations that are possible in VEX are almost limiteless -- for that reason, we will only brainstorm what we feel is likely to be effective or has been proven to work.
#admonition(type: "note", [
  *Odometry*\
  Odometry may be mentioned throughout the brainstorm process, it is a method of absolute positioning using encoders and/or IMUs. If we move forward with odmetry, we may cover it in seperate page(s).
])
= Internal Sensors
== IMEs
Not to be confused with IMU, an IME stands for 'Internal Motor Encoder', essentially, they measure how many rotations the motor has done; they can be reset/tared to 0, and various different measurements can be pulled from them, such as rotation in degrees, radians or full rotations.
#grid(columns: 2, gutter: 20pt,
[
  #figure([#image("./imgs/motor.png", height: 150pt)], caption: [Image of a standard 11W VEX Smart Motor (includes IME) @MotorsV5])
],
[
  #figure([#image("./imgs/internalMotor.png", height: 150pt)], caption: [Image of the VEX Smart Motor's (11W) internal structure @MotorsV5])
])
IMEs can be used in a range of cases -- from finding the state of a motor-based subsystem (see page before), or used in the drivetrain as an input to an odometry program.
#pro-con(
  pros:[
    - Build into the motors, no extra hardware needed
    - No extra space needed
    - Accurate on slow moving systems
  ],
  cons:[
    - Inaccurate after prolonged use
    - Encoders attached to powered input: cannot account for wheel slippage, gear skipping or other linkage-based inconsistensies
  ]
)
= External Sensors
== IMUs
IMUs stand for 'Inertial Measurement Units,' they are widely used sensors that can collect a range of data:
- Gyroscopic measurements (acceleration in 3 axes)
- Heading (relative heading from calibration -- clockwise, degrees or radians)
#grid(columns: 2, gutter: 20pt,
[
  #figure([#image("./imgs/inertial-bot.png", height: 150pt)], caption: [An inertial sensor installed on a robot (OU Striker/Hero Bot) @OverUnderSensorGuide.])
],
[
  #figure([#image("./imgs/heading.png", height: 150pt)], caption: [Diagram showing heading directions North, East, South and West in degrees @OverUnderSensorGuide.])
])
=== Ways to use IMUs
- Heading: heading is of course very useful data during autons, they not only allow the robot to 'know' which way it is facing -- but can also be used to drastically improve the accuracy of an odometry program.
- INS: 'Inertial Navigation Systems' is another absolute position system that integrates acceleration into velocity, then into position.
#admonition(type: "equation")[
  #figure([
    $
      A_(f)(t) = mat(
        cos (-theta), sin(-theta);
        -sin (-theta), cos (-theta)
      ) dot A_(b)(t),\
      \
      P_(f)(t) = integral_(0)^(t)  integral_(0)^(t)  A_(f)(t)
    $
    Where:
    - $A_(b)(t)$ is the IMU acceleration vector in form $vec(x, y)$
    - $A_(f)(t)$ is the global#footnote([Field orientated]) acceleration transformed from $A_(b)(t)$ in form $vec(x, y)$
    - $P_(f)(t)$ is the current field orientated position of the robot (integrated from $A_(f)(t)$)
  ], caption: [The process of using the IMUs data in IMU odometry (INS)])
]
\
#pro-con(
  pros: [
    - Very accurate heading
    - Consistent and reliable
    - Very useful in odometry
  ],
  cons: [
    - Extremely noisy gyroscopic measurements (INS unusable)
  ]
)
#import "/functions.typ": pageNumEntries
== GPS Sensors
GPS stands for Game Positioning System; the VEX GPS Sensor (not to be confused with sattelite-based GPS) is a small box that has a camera, the camera views a QR Code-like pattern on the field perimeter, and computes the global position based on the pattern, this data is streamed to the brain as coordinates with the centre of the field as the origin (see image on page #context([#pageNumEntries(ref: <SensorsIdentify>)])).
#admonition(type: "warning")[GPS Must maintain a constant line of sight with the field perimeter, and they must be at the correct height.]
#grid(columns: 2, gutter: 20pt,
[
  #figure([#image("./imgs/GPS Sensor.png", height: 150pt)], caption: [A GPS Sensor installed onto the OU Striker/Hero Bot @OverUnderSensorGuide])
],
[
  #figure(image("./imgs/GPS-in-use.jpeg", height:150pt), caption: [An example of a GPS Sensor with correct positioning @GPSGuide])
])
#pro-con(
  pros: [
    - Easy to use (in code)
    - Somewhat accurate position
  ],
  cons: [
    - Slow update rate (25Hz in theory -- much slower in practice @6210KCommentGPS)
    - Innacturate Heading measurements in practice @Mentor335UCommentGPS
  ]
)
\
\
\
\
\
\
\
= Optical Shaft Encoders
Optical Shaft Encoders (OSEs) are sensors that use 2 ADI ports to stream the current position of a low stregth shaft (inserted into hole in sensor). They have a resolution of 1 degree per tick#footnote([ 'Ticks' are digital pulses sent when the shaft moves a set ammount]).
#grid(columns: 2, gutter: 20pt,
[
  #figure(image("./imgs/optical shaft disc.png", width: 40%), caption: [The disc contained within the OSE for optically measuring rotation @OSEGuide])
  #figure(image("./imgs/optical-shaft-ticks.png", width: 40%), caption: [Diagram explaining how ticks are converted to rotations @OSEGuide])
  #figure(image("./imgs/Signal-phase.png", width: 40%), caption: [The signal phase produced from the ticks#footnote([Phase indicates direction]) @OSEGuide])

],
[
  #figure(image("./imgs/OSE-inside.JPG", height: 230pt), caption: [The inside of a OSE @OSEGuide])
])
#admonition(type: "warning")[OSEs are now discontinued, in favour of the Rotation Sensors, we however bought some during OU season.]
== Using OSEs
=== State of Subsystems:
Some subsystems that rely on rotation can be measured using an OSE, either to replace the sometimes inconsistent IME, or to measure rotation on a piston based rotational mechanism.
#pro-con(
  pros: [
    - Can measure rotation on piston based subsystem
    - Can be used after gearing to counteract gear skipping affects
  ],
  cons: [
    - IMEs typically suffice for motor based application
    - Piston based mechanism rarely need to be measured, as they can't be controlled
  ]
)
\
\
== Odomety Pods
#grid(columns: 2, gutter: 2,
[
  Odometry Pods are essentially a wheel attached to an OSE, they can transform rotations into distance travelled. When they are attached in a certain orientation, they can measure distance travelled in either direction#footnote([Works significantly better with an IMU]).
  #figure(image("./imgs/odom-pods-orientation.png", height: 130pt), caption: [Example placement of Odom Pods (perpendicular)])
],
[
  #figure(image("./imgs/odom-pod-diagram.png", height: 200pt), caption: [A labeled diagram showing a space efficient odometry pod (requires half-cut omni wheels)])
])
#admonition(type: "equation")[
  Encoder rotation to distance travelled:
  $
    D = frac(Delta omega dot C, 2)
  $
  Where:
  - $D$: Distance travelled
  - $Delta omega$: Change in rotation of encoder in radians
  - $C$: Circumference of wheel
]
#admonition(type: "note")[
  While other orientations of odom pods exists (using 3 of them), we are not looking at them due to their decreased performance gain (and the fact we would have to buy more OSEs, which is impossible)
]
#admonition(type: "note")[
  To find absolute position of robot using odometry pods, an odometry algorithm needs to be used -- the maths is out of the scope of this research and can be viewed #link("https://wiki.purduesigbots.com/software/odometry")[here] @brls.
]
#pro-con(
  pros:[
    - Very versatile
    - Reliable
    - Very low resolution (1 degree, \~0.023'' on 2.75'' wheels)
    - Pre-built libraries allow for fast programming with odom pods
  ],
  cons:[
    - Difficult to program without libraries
    - Can require half-cutting omni wheels (lower strength)
    - Uses 2 ADI ports
  ]
)
= Rotation Sensors
Rotation Sensors are practically identical to OSEs, with the main difference being size and connection type (smaller and uses smart port)
#figure(image("./imgs/rotation-sensor.jpg", height:200pt), caption: [Image of rotation sensor from the VEX Store @VEXStore])
They can be used in the same configuration and context as OSEs, and are often more favourable for odom pods due to their reduced size.
#pro-con(
  pros:[
    - Smaller than OSEs
    - Lower resolution (0.088 degrees) than OSEs
  ],
  cons:[
    - We don't have them
    - They are £43.19 each (we would need at least 2)
  ]
)
= Positioning Takeaways
From our research, these sensors can be used in the ways depicted to find position, either relatively from starting point or absolutely from the centre of the field. 

//TODO additional/complementary sensors
= Complementary Sensors
When implementing autonomous routines, there are a range of complementary sensors that can be used alongside the positioning sensors to further improve the complexity or reliabilty of the routines.
== Limit Switches & Bumper Switches
Limit switches are small sensors that detect whether a small, flexible metal lever is being compressed.
\
Similarly, Bumper Switches also detect compression -- but uses a button-like structure instead.
#align(center, [
  #grid(columns: 2, gutter: 20pt, [
    #figure(image("./imgs/limitswitch.png", height: 75pt), caption: [An image of a limit switch @BPGuide])
  ], [
    #figure(image("./imgs/bumper-switch.png", height: 75pt), caption: [An image of a bumper switch @BPGuide])
  ])
])
=== Uses:
- Stop action once limit is reached, i.e. a lift reaching minimum extension
- Stop robot once contacting wall
#pro-con(
  pros: [
    - Hardware solution _can_ be simpler#footnote([Although most likely not.])
  ],
  cons: [
    - Uses 3-wire ADI port
    - Code based solutions exist and are generally easier
  ]
)
== Optical and AI Sensors
=== Optical Sensors

Optical sensors are small sensors that detect 2 things: distance and colour. Distance will only tell the program roughly how far the object is (e.g. near or far) and so cannot be used as a replacement for the distance sensor; however, the colour sensing can be a very useful tool, especially in High Stakes where game objects are colour coded for alliances.
#grid(columns: 2, gutter: 20pt,
figure(image("./imgs/V5 Optical Sensor.png", height: 115pt), caption: [An image of the V5 Optical Sensor and it's light window @OpticalGuide]),
figure(image("./imgs/optical-menu.png", height: 115pt), caption: [A screenshot of the Optical Sensor's menu @OpticalGuide. Note the distance _is not_ classified by a value.])
)
#admonition(type: "example")[
  *Example Optical Sensor Usage*\
  One example of how an optical sensor can be used is *colour sorting*; if the robot has an intake, where rings are picked up from the floor and transported onto a mogo, an optical sensor can be used to trigger  something that interupts the rings' travel -- therefore not scoring it on a mogo.
]
#admonition(type: "note")[
  While this section is on _autonomous sensors_, optical sensors can be used (like the above) during driver control to aid the driver.
]
#pro-con(
  pros: [
    - Colour sorting mechs can take significant amount of work off driver
    - Colour sorting allows for some built in tolerance during the autonomous
  ],
  cons: [
    - Requires more complex programming
    - Can be somewhat inconsistent, especially at longer ranges
  ]
)

#grid(columns: 2, gutter: 20pt,
  [
    === AI Sensors
    AI Sensors are the more complex, bigger brothers of the optical sensors. Similarly to an optical sensor, they can detect colours, however, they also have a larger field of view, are capable of detecting multiple contrasting objects, including their size, distance and angle -- and can even be trained to detect certain objects.
  ],
  [
    #figure(image("./imgs/AI vision.png", height: 30pt), caption: [Image of the AI vision sensor @AIGuide])
    #figure(image("./imgs/AI Vision Sensor detect.png", height: 30pt), caption: [An example of how AI vision sensors can detect 3D objects @AIGuide])
  ]
)
#pro-con(
  pros: [
    - Aligning with objects during autonomous
    - More precise than colour and distance sensors
  ],
  cons: [
    - Much more complex programming
    - Some objects have to be trained, therefore much *more tuning*
  ]
)
= Brainstorm Summary
In summary, many (oh so many) sensors can be used in autonomous, to provide the basis of routines, or to aid with peripheral functions.
== Going Forward
We can now begin to narrow down the options based on what we as a team want to target, and how we can most efficiently improve our autonomous routines.