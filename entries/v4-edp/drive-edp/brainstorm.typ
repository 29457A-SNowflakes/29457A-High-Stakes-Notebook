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
#figure([#image("./imgs/H-Drive.png", height: 250pt)], caption: [Diagram of a H-Drive])
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

= Drive Gearing
We currently use 8 2.75" wheels geared down to 450rpm. We are going to compare a couple of different drive gearing configurations. #footnote[All of CAD images and most of the information in the section comes from this #link("https://www.vexforum.com/t/catalogue-of-drive-gearings/109498")[wonderful forum thread] by Xenon27]

Considering different drive gearings is *really important* because of the 88W motor cap. Gearing allows you to control the top speed and torque output of your drive. In High Stakes, speed is very important because of the need to traverse long distances across the field in less time. However, acceleration is equally important because it allows your driving to be more reflexive and reactive, which may be important in order to quickly defend a mogo, wall stake or positive corner. Going for maximum torque or maximum RPM isn't advisable unless it is crucial to your game strategy since whatever you spec in to, torque or RPM, you completely sacrifice the other. Maximising speed sacrifices acceleration given that $"P" = "Fv"$ and $"F" = "ma"$, which means that as mentioned above, you can't be very reactive on the field. In accordance with Newton's Second Law, one can increase their acceleration by weight saving, whilst there is no way to increase max speed other than by increasing rpm. In conclusion, it is important to carefully choose your drive as it is a tool to give your driver the best driving experience and also can directly play into your game strategy.

== Current Configuration
Our current configuration provides decent fast acceleration and a top speed of 164cm/s (64.8in/s).
#figure([#image("./imgs/450rpm2.75indrive.jpeg", height: 100pt)], caption: [CAD of 450rpm 2.75" drive by Xenon27])
#components.pro-con(
 pros: [ 
  - Fairly fast (164cm/s or 64.8in/s)
  - Good acceleration
 ],
 cons: [
    - Not the fastest layout
 ]
)
== 400rpm on 3.25" wheels
#figure([#image("./imgs/400rpm3.25indrive.jpeg", height: 100pt)], caption: [CAD of 400rpm 3.25" drive by Xenon27])
#components.pro-con(
 pros: [ 
  - Pretty quick (173cm/s or 68.1in/s)
  - Using 36T gears you can easily stack motors
 ],
 cons: [
    - Drive is so fast it requires good driver skill to control properly
 ]
)

== 300rpm on 4" wheels
#figure([#image("./imgs/300rpm4indrive.jpeg", height: 100pt)], caption: [Example CAD of a 300rpm 4" drive by Xenon27])
#components.pro-con(
 pros: [ 
  - Acceptable speed (159cm/s or 62.8in/s)
 ],
 cons: [
    - Speed is less than preferred by our driver
 ]
)

== 600rpm on 2.75" wheels
#figure([#image("./imgs/600rpm2.75indrive.jpeg", height: 100pt)], caption: [CAD of 600rpm 2.75" drive by Xenon27])
#components.pro-con(
 pros: [ 
  - Exceptionally fast (219cm/s or 86.4in/s)
 ],
 cons: [
    - Drive is so quick it is very difficult to control
    - Poor acceleration without sacrificing a lot of reliability
 ]
)

== 300rpm on 3.25" wheels
#figure([#image("./imgs/300rpm3.25indrive.jpeg", height: 100pt)], caption: [300rpm 3.25" drive CAD by Xenon27])
#components.pro-con(
 pros: [ 
  - Extremely high torque
 ],
 cons: [
    - Really slow drive speed (130cm/s or 51.1in/s)
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