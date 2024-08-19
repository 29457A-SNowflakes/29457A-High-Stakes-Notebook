#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Brainstorming Drivetrain",
  type: "brainstorm",
  date: datetime(year: 2024, month: 08, day: 18),
  author: "Jonah Fitchew"
)
#set quote(block: true)
= What are the different types of Drive?
The first solution to our somewhat obvious problem "We need a drivetrain" is the most conventional VEX drivetrain of them all - the differential drive, which features mirrored sides in a typical "tank" formation and allows for indepent manipulation of each side in order to achieve the movement we want to see. Second is the Omni drive which features one omni wheel in the centre of the drivetrain and allows for horizintal movement as well as the conventional forward and backwards. Third is the mecanum drive which takes advantage of the VEX mecanum wheels which allow for strafing and a limited form of horizontal movement. 

== Tank Drive
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
== Holonomic Drive
#components.pro-con(
 pros: [ 
  #list(
   "Holonomic Movement - Can move in any direction (forward, backward, sideways, diagonal) with ease.
",
    "Manouverability - good for accurate and small adjustments",
    "Agility - Quick, fluid directional changes without rotating the robot." 
  )
 ], 
 cons: [#list(
   "Lower traction -  Limited pushing power due to low traction of the wheel in the middle",
    "Complex programming - Requires more advanced coding for full control."
     
  )
 ]
)
= variants of drives:
== Holonomic drivetrains
=== X Drive:
 [#image("./imgs/XDrive.png", height: 200pt)]
 Here we see a render of an XDrive done by in_ithica | 3818 on the VEX CAD discord server
 #components.pro-con(
  pros: [
    #list(
      "Higher Speed: X Drive is generally faster than both Mecanum and H-Drive, as it naturally provides more efficient power transfer for quick movements due to the 45-degree wheel orientation.",
      "Simplicity: Compared to Mecanum, an X Drive is simpler to build and program, as it doesn’t require complex motor tuning or algorithms for strafing.",
      "Better Diagonal Movement: X Drive excels in diagonal motion without the power loss or inefficiencies found in Mecanum, making it smoother for navigating tight angles and corners."
    )
  ],
  cons: [#list(
    "Lower Pushing Power: X Drive generally lacks traction and pushing force compared to Mecanum, making it less effective in scenarios requiring high torque or pushing resistance.",
    "Inefficient Use of Space: X Drive's diagonal wheel layout takes up more space on the robot, which can limit the available area for other mechanisms compared to more compact configurations like H-Drive."
  )]
 )
 X Drive has traditionally been used by teams for extremely precise programming as it can provide an edge over more traditional drivetrains in terms of accurate movements in things like autonomous skills, however in a more traditional competition format with the goal of Tournament Champions, X Drive does not seem like the most popular choice. X Drives use a compound gear ratio to get around the difficulties in making the wheels diagonal, this can mean that it becomes quite difficult to build and maintain in comparison with more traditional drivetrains. Packaging the brain and pneumatic tank around this drivetrain can be difficult due to the odd motor placements. 
\ 

=== H Drive:
 [#image("./imgs/HDrive.jpg", height: 200pt)]
 Here we see a CAD model of an H Drive found on the website Purdue Sigbots made by the Univwersity of Kentucky
 #components.pro-con(
  pros: [
    #list(
      "Simplicity: The H Drive is easier to build and program compared to more complex holonomic drives like Mecanum or X Drive.",
      "Good Strafing Ability: The central wheel allows for decent sideways movement (strafing), providing a balance between maneuverability and straightforward design.",
      "Efficient Use of Space: The parallel wheel layout in H Drive leaves more space for other components on the robot compared to an X Drive."
    )
  ],
  cons: [#list(
    "Limited Lateral Power: The central strafing wheel in H Drive has less traction and pushing power compared to the Mecanum or X Drive, leading to weaker side-to-side movement.",
    "Less Agility: H Drive doesn't handle diagonal movement as smoothly as X Drive or Mecanum, reducing its maneuverability in accurate and precise movements.",
    "Vulnerability to Central Wheel Issues: The reliance on a single central wheel for strafing means that any failure or inefficiency in that wheel significantly impacts performance"
  )]
 )
 H Drive is probably the most simple to build of all holonomic drivetrains with a single strafing wheel in the middle relying on the omni wheels rollers to provide lateral movement, the gear ratios used are the same as any traditional drive but one of the losses coming from the middle wheel is the lack of packaging ability in that area, no longer is the ability to use odometry pods to provide a higher level of accuracy during autonomous and no longer is the ability to have the pneumatic tank as low as possible to the ground due to the need for extra bracing and support of the middle wheel as inconsistencies and friction can have large effects. 
\ 

 === Mecanum Drive:
 [#image("./imgs/MecanumDrive.jpg", height: 200pt)]
Here is a live model of the mecanum drive found on the Servo magazine website about holonomic locomotion
 #components.pro-con(
  pros: [
    #list(
      "Holonomic Movement: Mecanum wheels allow for full omnidirectional movement, including forward, backward, sideways, and diagonal, giving excellent maneuverability.",
    "Good Pushing Power: Compared to other holonomic drives like X Drive or H Drive, Mecanum maintains relatively good traction and pushing power.",
    "Versatility: Mecanum Drive offers a solid balance of movement options while still being able to handle various competition tasks, making it adaptable to different areas of teh competition like skills"
    )
  ],
  cons: [#list(
    "Complexity: Mecanum drives are more complex to build and program than simpler drives like H Drive, requiring precise motor control and alignment for effective movement.",
    "Power Loss: Due to the angled rollers on Mecanum wheels, some power is lost during lateral movement, making it less efficient compared to a tank or X Drive."
  )]
 )
Mecanum Drive is one of if not the most frowned upon drivetrain in the whole of VEX as it utilises the otherwise useless Mecanum wheels which take up a large amount of room and are not very versatile. however in a Mecanum drive you acquire the ability to complete control and assurance that movement is not the problem, however in building this drivetrain the ability to gear is almost completely gone, as in order to maintain the very much wanted 3-4 wide hole gap between the drivetrain C Channels the mecanum wheel leaves no room for a gear, admonishing any gear ratios wanted.