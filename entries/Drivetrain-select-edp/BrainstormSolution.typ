#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Brainstorming Drivetrain",
  type: "brainstorm",
  date: datetime(year: 2024, month: 08, day: 4),
  author:  "Jonah Fitchew, Daniel da Silva",
  witness: "Daniel Dew"
)
= What are the different types of Drive?
The first solution to our somewhat obvious problem "We need a drivetrain"#footnote([The typical 'identify problem' page is ommited due to the obvious problem of needing a drivetrain.]) is the most conventional VEX drivetrain of them all - the Differential Drive, which features mirrored sides in a typical "tank" formation and allows for independant manipulation of each side in order to achieve the movement we want to see. Second is the Omni Drive which features one omni wheel in the centre of the drivetrain and allows for horizintal movement as well as the conventional forward and backwards. Third is the Mecanum Drive which takes advantage of the VEX mecanum wheels which allow for strafing and a limited form of horizontal movement. 

== Differential Drive
#components.pro-con(
 pros: [ 
  #list(
   "Simplicity - Easy to build, program, and maintain",
    "Powerful - Excellent for pushing and traction-heavy tasks.",
    "Stability - Will be balanced and support all sorts of mechanisms" 
  )
 ],
 cons: [#list(
   "Limited manouverability - Only supports forward, backward, and turning; no lateral (sideways) movement.",
    "Not agile - Slow to make fine, precise movements or quick direction changes",
     
  )
 ]
)
#figure([#image("./imgs/geareddrive.jpeg", height: 160pt)], caption: [From this forum #link("https://www.vexforum.com/t/gearing-on-a-six-motor-drive/109357")[thread]@6MotorGearing])
== Holonomic Drives
#components.pro-con(
 pros: [ 
    - Holonomic Movement - Can move in any direction (forward, backward, sideways, diagonal) with ease.
    - Manouverability - good for accurate and small adjustments
    - Agility - Quick, fluid directional changes without rotating the robot.

 ], 
 cons: [
    - Lower traction -  Limited pushing power due to low traction of the wheel in the middle
    - Complex programming - Requires more advanced coding for full control.
  ]
)

= Variants of Drives:
== Holonomic Drivetrains
=== X Drive:
#figure([#image("./imgs/XDrive.png", height: 200pt)], caption: [
  Here we see a render of an XDrive done by in_ithica | 3818 on the VEX CAD discord server @XDriveDiscord
])
#components.pro-con(
  pros: [
    + Higher Speed: X Drive is generally faster than both Mecanum and H-Drive, as it naturally provides more efficient power transfer for quick movements due to the 45-degree wheel orientation
    + Simplicity: Compared to Mecanum, an X Drive is simpler to build and program, as it doesn’t require complex motor tuning or algorithms for strafing
    + Better Diagonal Movement: X Drive excels in diagonal motion without the power loss or inefficiencies found in Mecanum, making it smoother for navigating tight angles and corners
  ],
  cons: [
    + Lower Pushing Power: X Drive generally lacks traction and pushing force compared to Mecanum, making it less effective in scenarios requiring high torque or pushing resistance.
    + Inefficient Use of Space: X Drive's diagonal wheel layout takes up more space on the robot, which can limit the available area for other mechanisms compared to more compact configurations like H-Drive
    + Complex programming
    + Complex design -- especially at the CAD stage
  ]
)
X Drive has traditionally been used by teams for extremely precise programming as it can provide an edge over more traditional drivetrains in terms of accurate movements in things like autonomous skills, however in a more traditional competition format with the goal of Tournament Champions, X Drive does not seem like the most popular choice. X Drives use a compound gear ratio to get around the difficulties in making the wheels diagonal, this can mean that it becomes quite difficult to build and maintain in comparison with more traditional drivetrains. Packaging the brain and pneumatic tank around this drivetrain can be difficult due to the odd motor placements. 
\ 

=== H Drive:
#figure([#image("./imgs/HDrive.jpg", height: 200pt)], caption: [
  Here we see a CAD model of an H Drive found on the website Purdue Sigbots made by the University of Kentucky @brls
])

#components.pro-con(
  pros: [
    
    - Simplicity: The H Drive is easier to build and program compared to more complex holonomic drives like Mecanum or X Drive
    - Good Strafing Ability: The central wheel allows for decent sideways movement (strafing), providing a balance between manoeuverability and straightforward design
    - Efficient Use of Space: The parallel wheel layout in H Drive leaves more space for other components on the robot compared to an X Drive

  ],
  cons: [
    - Limited Lateral Power: The central strafing wheel in H Drive has less traction and pushing power compared to the Mecanum or X Drive, leading to weaker side-to-side movement
    - Less Agility: H Drive doesn't handle diagonal movement as smoothly as X Drive or Mecanum, reducing its manoeuverability in accurate and precise movements
    - Vulnerability to Central Wheel Issues: The reliance on a single central wheel for strafing means that any failure or inefficiency in that wheel significantly impacts performance
    - Programming Complexity: H Drives also consider some (although less than X and Mecanum) programming challenges
    - Space: Having the wheel in the middle can result in less space for other subsystems such as odometry pods
]
)
 H Drive is probably the most simple to build of all holonomic drivetrains with a single strafing wheel in the middle relying on the omni wheels rollers to provide lateral movement, the gear ratios used are the same as any traditional drive but one of the losses coming from the middle wheel is the lack of packaging ability in that area, no longer is the ability to use odometry pods to provide a higher level of accuracy during autonomous and no longer is the ability to have the pneumatic tank as low as possible to the ground due to the need for extra bracing and support of the middle wheel as inconsistencies and friction can have large effects. 
\ 

=== Mecanum Drive:
#figure([#image("./imgs/MecanumDrive.jpg", height: 200pt)], caption: [
  Here is a live model of the Mecanum Drive found on the Servo magazine website about holonomic locomotion @ServoMagHolo
])

#components.pro-con(
  pros: [
    - Holonomic Movement: Mecanum wheels allow for full omnidirectional movement, including forward, backward, sideways, and diagonal, giving excellent manoeuverability
    - Good Pushing Power: Compared to other holonomic drives like X Drive or H Drive, Mecanum maintains relatively good traction and pushing power
    - Versatility: Mecanum Drive offers a solid balance of movement options while still being able to handle various competition tasks, making it adaptable to different areas of teh competition like skills
  ],
  cons: [
    - Complexity: Mecanum Drives are more complex to build and design than simpler drives like H Drive, requiring precise motor control and alignment for effective movement.
    - Power Loss: Due to the angled rollers on Mecanum wheels, some power is lost during lateral movement, making it less efficient compared to a tank or X Drive
    - Programming Complexity: Mecanum Drives are also harder to program
  ]
 )
The Mecanum Drive is one of if not the most frowned upon drivetrain in the whole of VEX, as it utilises the otherwise useless Mecanum wheels which take up a large amount of room and are not very versatile. However in a Mecanum Drive you acquire the ability to complete control and assurance that movement is not the problem, however in building this drivetrain the ability to gear is almost completely gone, as in order to maintain the very much wanted 3-4 wide hole gap between the drivetrain C Channels the mecanum wheel leaves no room for a gear, admonishing any gear ratios wanted.
\
\
\
\
\
\
== Use of Traction Wheels:
#figure([#image("./imgs/traction.png", height: 120pt)], caption: [From #link("https://wiki.purduesigbots.com/hardware/misc.-vex-parts-1/motion/traction-wheels")[BRLS Wiki] @brls])

For our drive an important consideration was the inclusion and amount of traction wheels which we wanted to use. Having more traction wheels increases our grip but also reduces our skidding which can mean that our bot will struggle to do tight turns quickly. However, not having enough traction wheels means we may be easier to push around and struggle more to push others.\
To maximise grip whilst retaining agility, it is common to use traction wheels in the centre to reduce unwanted pushing forces, whilst combining them with other wheels such as omniwheels on the edges for greater turning ability.
#components.pro-con(
  pros: [
    - Increased Grip: More grip allows for more power, which means it's easier to push game elements or other bots around.
    - Resistance: Since they have a single degree of freedom traction wheels make our robot more resistant against being pushed when attacking our defending
  ],
  cons: [
    - Rigidity: Having one degree of freedom means that the bot will struggle more to perform tight turns, which may be important to perform midmatch or during the autonomous which often relies on turns being consistent and accurate.
  ]
 )
Overall, it is important to decide how many traction wheels we use and where. Ultimately, deciding this depends on a teams game strategy and the type of bot they are going for.

=== All Omniwheel Drive:\
#grid(
  columns: (280pt, 1fr),
  rows: (auto),
  gutter: 20pt,
  [Having our drive consist of only omniwheels has some advantages such as allowing for a lot more skidding and tight manoeuvering. However, a lack of traction wheels means our bot will have less torque to push and also will be easier to push. This pushing power loss can be compensated for by playing more evasively in order to outmanoeuver opponents. A good example of an all omniwheel drive was 9364H's bot in OU #link("https://www.youtube.com/watch?v=EMaQuOrPwew")[Pits and Parts @9364HPitsParts], who additionally engineered their bot for speed and agility to control the arena and punish double zoning in that game. See image on right for example (This image was cropped from Pits and Parts video cited above).],
  grid.cell(
    colspan: 1,
    image("./imgs/IronEagles.png", width: 120%),
  ),
)

== Number of Wheels:
#grid(
  columns: (260pt, 1fr),
  rows: (auto),
  gutter: 20pt,
  [Another important consideration is the amount of wheels, which we want on our drive. Similar to traction wheel ratio, having more wheel affects our torque-agility ratio. Having more wheels increases surface area in contact with the ground, which correlates with more traction. An increase in traction means that we have less skidding, which can be a detriment since skidding can be useful for turning, but it will also mean that the power is transferred more efficiently, which allows us to have more rpm or torque. See explanation for this on the right.],
  grid.cell(
    colspan: 1,
    image("./imgs/Power.png", width: 90%),
  ),
)
=== 4 Wheels
Having 4 wheels is the minimum number of wheels a drivetrain can have. It sacrifices power for manoeuverability but is easier to implement since it doesn’t require motor stacking.
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
 An 8 Wheel Drive provides the most traction of the three options, which gives it the most power but means it will slide less and so will struggle with turns more.
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
 Overall, it's important to consider the strengths and weaknesses of the wheels chosen and amount of wheels, since the power lost from using fewer wheels can be compensated by using some traction wheels to create overall high performance or similarly an 8 wheel drive can become more manoeuverable if the drive includes some omniwheels or is entirely made of them. Therefore by considering what the wheels and wheel ammount can do for the drivetrain it is possible to create a drivetrain, that doesn’t suffer from any major weakness within the scope of what our team is trying\ to achieve.
\
\
\
\

 == A Look at Gear Ratios
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
It is also important to consider the viability of direct drives, where power is drawn directly from the motors. This can be useful as it has a lower build complexity allowing for more space and parts for other game scoring subsystems. They can be consisdered when you want to go with specific rpms such as 200 or 600, in order to have a unique torque-speed ratio compared to the rest of the competition. Below is a comparison between a direct drive and a 6 motor geared
#grid(
  columns: (1fr, 1fr),
  rows: (auto),
  gutter: 5pt,
  grid.cell(
    colspan: 1,
    figure([#image("./imgs/directdrive.jpeg", width: 55%)], caption: [#link("https://www.vexforum.com/t/creating-a-basic-drive/106873")[Direct Drive @CreatingBasicDrive]]),
  ),
  grid.cell(
    colspan: 1,
    figure([#image("./imgs/geareddrive.jpeg", width: 62%)], caption: [#link("https://www.vexforum.com/t/gearing-on-a-six-motor-drive/109357")[Geared Drive @6MotorGearing]]),
  )
)