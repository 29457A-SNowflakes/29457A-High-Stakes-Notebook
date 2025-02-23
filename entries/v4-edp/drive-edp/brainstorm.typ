#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "V4: Brainstorming Drives",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Aubert Seysses, Daniel Dew",
  date: datetime(year: 2025, month: 2, day: 1),
)

= Drivetrain configurations
We shall look at a couple different drivetrain configurations in terms of our criteria.
== H Drive:
H Drive has the layout of a differential drive plus a perpendicular strafing wheel in the middle, relying on the omni wheels rollers to provide lateral movement. The central wheel can impose additional challenges as the bracing required for it limits space for odometry pods and pneumatic tanks.
//#figure([#image("./imgs/HDrive.jpg", height: 125pt)], caption: [CAD model of a H Drive from #link("https://wiki.purduesigbots.com/hardware/vex-drivetrains/holonomic-drive")[Purdue Sigbots] made by Kentucky University @brls
//])
#components.pro-con(
  pros: [
    - Central wheel means bot can strafe
    - Decent forwards traction
  ],
  cons: [
    - Limited lateral power
    - Dependence on central wheel
    - More complicated to program
    - Central wheel takes up space for other systems/infrastructure
]
)

== X Drive:
X Drive's main appeal is it allows for more precise programming control, which can be helpful for things such as autonomous skills. However, X Drive is more difficult to control. X Drives layout and gear ratios can be quite restrictive in terms of trying to fit in other subsystems.
#components.pro-con(
  pros: [
    - Faster than both Mecanum and H-Drive
    - Better diagonal movement compared to other drivetrains
  ],
  cons: [
    - Poor pushing ability
    - Inefficient space layout
    - Complicated design to CAD and program
  ]
)

== Differential Drive
Differential Drive is similar in configuration to H-Drive but without the central strafing wheel. Whilst, technically less manoeuverable than H-Drive, the smaller space footprint generally makes it a worthy trade.
#components.pro-con(
 pros: [ 
  - Simple to build
  - Good pushing power
  - Smallest footprint
 ],
 cons: [
    - Fewer movement directions than holonomic drives
 ]
)

= Usage of traction wheels
Omniwheels are the preferred choice on drivetrains as their sideways rollers increase a drives ability to turn, and a full omniwheel drive allows for drift drive, which is preferred by our driver due to his experience. Traction wheels can be a tactical consideration, as they increase your traction and reduce sideways pushing forces. Traction wheels main consideration could be to prevent being pushed when scoring wallstakes. However, there are other more effective defenses against this such as wallstake aligners on the intake. In addition, traction wheels limit your spinning top speed, which is an important tool for tipping mogos over.
#components.pro-con(
 pros: [ 
  - More resistant to being pushed
 ],
 cons: [
    - No drift drive
    - Harder to spin tip mogos
    - Wall stake aligners are generally better defence
 ]
)
= Wheel size
We currently use 8 2.75" wheels on our drive. Having larger but fewer wheels will give us slightly worse acceleration but greater top speed. However, making our bot lighter will improve its acceleration.
== Switching to fewer but larger wheels
#components.pro-con(
 pros: [ 
  - Higher top speed
 ],
 cons: [
    - Slightly worse acceleration
 ]
)

= Gear positions
Currently, we have our wheels on the outside of the gearing, which has a decent turning circle. However, the turning circle can be made slightly tighter by utilising "china layout", which has wheels on the inside.
== Having wheels on the inside
#components.pro-con(
 pros: [ 
  - Smaller turning circle so greater manoeuverability
 ],
 cons: [
    - Marignally smaller base of support
 ]
)

= Gearing
Another consideration for our drive is altering the gearing on our drive. We currently have 600rpm cartridges geared down to 450rpm. However, if we change wheel size, that will affect the wheel spacing and mean that we likely have to do different gearing in order for it to fit properly. We are considering gearing our cartridges down to 400rpm.
== 450rpm to 400rpm
#components.pro-con(
 pros: [ 
  - Allows us to have larger wheels
  - Greater acceleration
 ],
 cons: [
    - Slightly lower top speed
 ]
)
== Motor Stacking
The final drive decision is if we should stack our drive motors or not. Stacking motors means that they take up less room on the drive, which gives us more room for our mogo clamp.
#components.pro-con(
 pros: [ 
  - More room for mogo clamp
 ],
 cons: [
    - Harder to build
    - Possibly more friction
 ]
)