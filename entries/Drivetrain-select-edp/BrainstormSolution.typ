#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Brainstorming Drivetrain",
  type: "brainstorm",
  date: datetime(year: 2024, month: 08, day: 4),
  author:  "Jonah Fitchew, Daniel da Silva",
  witness: "Daniel Dew"
)
= The main types of Drivetrains:
In VEX there are two main drivetrain archetypes, which we can we use to solve the fairly obvious problem, that we need to be able to move#footnote([The typical 'identify problem' page is omitted since the ability to move efficiently is non-disputable.]).
\
The first type of drivetrain is the Differential Drive, which features mirrored sides in a typical "tank" formation and allows for independent manipulation of each side, to allow for forwards and backwards motion, turn on the spot or turn left and right whilst moving forwards and backwards. Below is an example of the configuration of a Differential Drive.
#figure([#image("./imgs/differential-drive.png", height: 100pt)], caption: [From this #link("https://42bots.com/tutorials/differential-steering-with-continuous-rotation-servos-and-arduino/")[website]])
\
The second main type of drivetrain are the Holonomic Drives. In this category, there is the Omni Drive, X Drive and the Mecanum Drive. The Omni Drive features one omni wheel in the centre of the drivetrain and allows for strafing movement as well as the conventional movement allowed for by a differential drive. Third is the Mecanum Drive, which takes advantage of the VEX mecanum wheels, which allow for strafing and a limited form of horizontal movement. 

= Differential Drives vs Holonomic Drives
We shall compare the drivetrain archetypes first since the different Holonomic Drives share a lot of similarities and in practise there is very little difference in terms of layout between differential drives.

== Differential Drive
#components.pro-con(
 pros: [ 
  #list(
   "Simplicity - Easy to build, program, and maintain",
    "Powerful - Excellent for pushing and traction-heavy tasks",
    "Stability - Will be balanced and support all sorts of mechanisms" 
  )
 ],
 cons: [#list(
   "Limited manoeuvrability - Only supports forward, backward, and turning; no strafing motion",
    "Not agile - Slow to make fine, precise movements or quick direction changes",
     
  )
 ]
)
#figure([#image("./imgs/geareddrive.jpeg", height: 160pt)], caption: [Differential drive example from this forum #link("https://www.vexforum.com/t/gearing-on-a-six-motor-drive/109357")[thread]@6MotorGearing])
== Holonomic Drives
#components.pro-con(
 pros: [ 
    - Holonomic Movement - Can move in any direction (forward, backward, sideways, diagonal) with ease.
    - Manoeuvrability - good for accurate and small adjustments
    - Agility - Quick, fluid directional changes without rotating the robot.

 ], 
 cons: [
    - Lower traction -  Limited pushing power due to because they have more complicated wheel layouts
    - Complex programming - Requires more advanced coding for full control.
  ]
)

== Holonomic Drivetrains
=== Omni/H Drive:
Omni/H Drive is probably the most simple to build of all holonomic drivetrains with a single strafing wheel in the middle relying on the omni wheels rollers to provide lateral movement. The gear ratios used are the same as in a differential drive but one of the losses coming from the middle wheel is that spot is typically used to have an odometry pod to provide a higher level of accuracy during autonomous. It also means that one has to place the pneumatic tank higher up than ideal due to the need to brace and support the middle wheel using additional pieces of C-Channel.
#figure([#image("./imgs/HDrive.jpg", height: 125pt)], caption: [
  CAD model of a H Drive from #link("https://wiki.purduesigbots.com/hardware/vex-drivetrains/holonomic-drive")[Purdue Sigbots] made by Kentucky University @brls
])
#components.pro-con(
  pros: [
    
    - Simplicity: The H Drive is easier to build and program compared to more complex holonomic drives like Mecanum or X Drive
    - Strafing ability: The central wheel allows for strafing movement
    - Efficient space usage: The parallel wheel layout in H Drive leaves more space for other components on the robot compared to an X Drive

  ],
  cons: [
    - Limited lateral power: The central strafing wheel in H Drive has less traction and pushing power compared to the Mecanum or X Drive, leading to weaker side-to-side movement
    - Less agile: H Drive doesn't handle diagonal movement as smoothly as X Drive or Mecanum, since its motion is less accurate and precise
    - Dependence on central wheel: If the central wheel fails in any way we lose the ability to strafe, which is the principal advantage of H Drive
    - Programming complexity: H Drives provides considerable programming challenges although it is still simpler than X and Mecanum
    - Space: Having the wheel in the middle can result in less space for other subsystems such as odometry pods
]
)

=== X Drive:
X Drive has traditionally been used by teams for extremely precise programming as it can provide an edge over more traditional drivetrains in terms of accurate movements in things like autonomous skills. However in traditional competition settings, X Drive does not seem like the most popular choice as it more difficult to control. X Drives use a compound gear ratio to get around the difficulties in making the wheels diagonal, this can mean that it becomes quite difficult to build and maintain in comparison with more traditional drivetrains. Trying to fit the brain, pneumatic tanks and other subsystems around this drivetrain can be difficult due to the odd motor placements.
#components.pro-con(
  pros: [
    - Higher Speed: X Drive is generally faster than both Mecanum and H-Drive, as it naturally provides more efficient power transfer for quick movements due to the 45-degree wheel orientation
    - Simplicity: Compared to Mecanum, an X Drive is simpler to build and program, as it doesn’t require complex motor tuning or algorithms for strafing
    - Better Diagonal Movement: X Drive excels in diagonal motion without the power loss or inefficiencies found in Mecanum, making it smoother for navigating tight angles and corners
  ],
  cons: [
    - Lower Pushing Power: X Drive generally lacks traction and pushing force compared to Mecanum, making it less effective in scenarios requiring high torque
    - Inefficient Space Usage: the diagonal wheel layout takes up more space on the robot, which can limit the available area for other mechanisms compared to more compact configurations like H-Drive
    - Complex programming - but less so compared to Mecanum
    - Complex design - difficult to CAD
  ]
)
#figure([#image("./imgs/XDrive.png", height: 200pt)], caption: [
  Here we see a render of an XDrive done by in_ithica | 3818 on the VEX CAD discord server @XDriveDiscord
])

=== Mecanum Drive:
#figure([#image("./imgs/MecanumDrive.jpg", height: 200pt)], caption: [
  Here is a live model of the Mecanum Drive found on the Servo magazine website about holonomic locomotion @ServoMagHolo
])

#components.pro-con(
  pros: [
    - Holonomic movement: Mecanum wheels allow for full omnidirectional movement, allowing for orthagonal and  diagonal movement and also strafing. 
    - High traction: Compared to other holonomic drives, like X Drive or H Drive, Mecanum has relatively good traction
    - Versatility: Is useful in both skills and in matches conditions, due to its many movement options
  ],
  cons: [
    - Complexity: much more precise motor control and alignment is required for effective movement
    - Power loss: angled rollers on mecanum wheels means some power is lost during lateral movement, making it less efficient compared to a tank or X Drive
    - Programming complexity: significantly harder to program
  ]
 )
The Mecanum drive is one of the more challenging options for a team to invest in. However, Mecanum drives have excellent manoeuverability, which can be incredibly useful in both matches and in skills challenges. One of the main building challenges this drivetrain offers is that it is much harder to gear since the size of the mechanum wheels means that it is impossible to maintain a 3 or 4 wide hole between the two drive C-Channels since mecanum wheels take up a lot more space. This means that you have to use direct drive gearing if you go for Mecanum drive.
\
\
= Wheel type and configurations:
Another consideration in our drive is the amount and type of wheels used. We can either have 4, 6 or 8 wheels on our drive and we also have a mix of omni and traction wheels or have a drive that's just traction or omni wheels.
== Use of Traction Wheels:
For our drive we must decide whether we want to include traction wheels and the number and positioning, which we want to use. Having more traction wheels increases our grip but also reduces our ability to skid, which can mean that our bot will struggle to do tight turns quickly. However, not having enough traction wheels means we may be easier to push around and struggle to contest corners.\
To maximise grip whilst retaining agility, it is common to use traction wheels in the centre to reduce unwanted pushing forces, whilst combining them with other wheels such as omniwheels on the edges for greater turning ability.
#figure([#image("./imgs/traction.png", height: 120pt)], caption: [Traction wheels from #link("https://wiki.purduesigbots.com/hardware/misc.-vex-parts-1/motion/traction-wheels")[BRLS Wiki] @brls])
#components.pro-con(
  pros: [
    - Increased Grip: Which means that you have more power. It's easier to push game elements or other bots around.
    - Resistance: Since they have a single degree of freedom, traction wheels make our robot more resistant against being pushed when attacking our defending
  ],
  cons: [
    - Rigidity: Having one degree of freedom means that the bot will struggle more to perform tight turns, which may be important to perform midmatch or during the autonomous period, which often relies on turns being consistent and accurate.
  ]
 )
== All Omniwheel Drive:\
#grid(
  columns: (300pt, 1fr),
  rows: (auto),
  gutter: 20pt,
  [Having our drive consist of only omniwheels has some advantages such as allowing for us to have "drift drive", which allows for more control over the robot - if your driver is more skilled. However, a lack of traction wheels means our bot will be more susceptible to being pushed and stuggle in confrontations. This tradeoff can be compensated for with good driver skill in order to evasively outmanoeuver opponents. A good example of an all omniwheel drive was 9364H's bot in OU#footnote("OU - Refers  to Over Under 23-24") #link("https://www.youtube.com/watch?v=EMaQuOrPwew")[Pits and Parts @9364HPitsParts], who additionally engineered their bot for speed and agility to control the arena and punish double zoning in that game. See image on right for example (Image cropped from video cited above).],
  grid.cell(
    colspan: 1,
    image("./imgs/IronEagles.png", width: 120%),
  ),
)

= Number of Wheels:
#grid(
  columns: (260pt, 1fr),
  rows: (auto),
  gutter: 20pt,
  [Another important consideration is the amount of wheels, which we want on our drive. Similar to traction wheel ratio, having more wheel affects our torque-agility ratio. Having more wheels increases surface area in contact with the ground, which correlates with more traction. An increase in traction means that we will have less skidding, which can be a detriment since skidding can be useful for turning and allows for "drift drives", but it will also mean that the power is transferred more efficiently, which allows us to have more rpm or torque. See explanation for this on the right.],
  grid.cell(
    colspan: 1,
    image("./imgs/Power.png", width: 90%),
  ),
)
=== 4 Wheels
Having 4 wheels is the minimum number of wheels a drivetrain can have. It sacrifices power for manoeuverability and is easier to implement since it doesn’t require motor stacking.
#components.pro-con(
  pros: [
    - Agility: Slides more so it has greater theoretical turning ability
    - Easy to implement: Since there are fewer wheels there's fewer gears to deal with allowing for more space for game specific components such as wings, intakes or lifts
    - Lighter: Less components so robot will weigh less meaning motors have less load to move
  ],
  cons: [
    - Less power: Fewer wheels so there's less traction, which means less pushing power
    - Lighter: Less weight so it's easier to push around
  ]
 )
 === 6 Wheels
6 wheels is a balance between manoeuverability and power. However, it's trickier to implement since it requires motor stacking.
#components.pro-con(
  pros: [
    - Agility: Still slides but not as much as a 4 Wheel Drive
    - Power: Balanced power but still less traction than an 8 Wheel Drive
  ],
  cons: [
    - More complex: Requires motor stacking so its design as a drivetrain is more complex, which can mean it's more difficult to implement game scoring subsystems.
  ]
 )
 === 8 Wheels
 An 8 wheel drive provides the most traction of the three options, which gives it the most power but means it will slide less and so will struggle with turns more.
 #components.pro-con(
  pros: [
    - Most Power: Has the most power because of the greater traction
    - Heavier: More wheels and more gearing weigh more so it's more resistant to pushing and will push with more force
  ],
  cons: [
    - Less Agile: The higher traction stops the robot from sliding as much so it will have less turning ability.
    - Heavier: The greater weight will put more strain on motors, which leads to higher chance of motor burnout. However, this can be circumvented by quickswaps or cooling the motors with a fan.
  ]
 )
 Overall, it's important to consider the strengths and weaknesses of the wheels chosen and amount of wheels, since the power lost from using fewer wheels can be compensated by using some traction wheels to create overall high performance or similarly an 8 wheel drive can become more manoeuverable if the drive includes some omniwheels or is entirely made of them. Therefore by considering what the wheels and wheel amount can do for the drivetrain it is possible to create a drivetrain, that doesn’t suffer from any major weakness within the scope of what our team is trying to achieve.
\
\
\
\
\
\
\
\
\
\
\
=== A Look at Gear Ratios
 #grid(
  columns: (190pt, 1fr),
  rows: (auto),
  gutter: 10pt,
  grid.cell(
    colspan: 1,
    image("./imgs/gears.png", width: 90%),
  ),
  [Another factor which contributes to the balance between torque and agility is the gear ratio chosen. If the force applied on the driven gear is further from its pivot compared to the distance from the driving gears pivot then the driven gear will turn with more force but it will turn slower compared to the driving gear. If this coupling is reversed then the driven gear will turn with less force but it will turn faster compared to the driving gear. The gear ratio is often described as either $"driven gear Ω"/"driving gear Ω"$ where Ω is angular velocity or $"driven gear teeth"/"driving gear teeth"$. Like with wheel type and amount the gear ratio of the drive can be used to further optimise a drive to have greater speed or greater pushing power. On the left is an image @GearTrainWiki of a 2:3 gear coupling. It's also important to consider that wheel size also acts like a gear and so affects torque and speed.
  ]
)
#components.admonition(type: "note")[
  Whilst it's not very commonly used in the context of V5, it's theoretically possible to have a gear transmission to switch between high torque and high speed, which would allow for dynamic gear ratio changing.
]
=== Direct Drives
It is also important to consider the viability of direct drives, where power is drawn directly from the motors. This can be useful as it has a lower build complexity allowing for more space and parts for other game scoring subsystems. They can be considered when you want to go with specific rpms such as 200 or 600, in order to have a unique torque-speed ratio compared to the rest of the competition. Below is a comparison between a direct drive and a 6 motor geared
#grid(
  columns: (1fr, 1fr),
  rows: (auto),
  gutter: 5pt,
  grid.cell(
    colspan: 1,
    figure([#image("./imgs/directdrive.jpeg", width: 82.5%)], caption: [#link("https://www.vexforum.com/t/creating-a-basic-drive/106873")[Direct Drive @CreatingBasicDrive]]),
  ),
  grid.cell(
    colspan: 1,
    figure([#image("./imgs/geareddrive.jpeg", width: 93%)], caption: [#link("https://www.vexforum.com/t/gearing-on-a-six-motor-drive/109357")[Geared Drive @6MotorGearing]]),
  )
)