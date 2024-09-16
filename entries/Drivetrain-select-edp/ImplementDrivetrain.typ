#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Building Our Drivetrain",
  type: "build",
  date: datetime(year: 2024, month: 08, day: 6),
  author: "Jonah Fitchew",
  witness: "Daniel Dew"
  )
#set quote(block: true)




= CADing the Drivetrain
Before building anything in VEX, we must first utilise Computer-Aided Design software (CAD) to visualise what the robot is going to look like and whether or not the ideas we have will work. CAD allows us to use any and all VEX parts that can be bought, and it allows for outlandish ideas to be visualised on a screen before any time or money is wasted on something that will not be viable in competition.

Because of this wonderful resource, we always start any part of the robot that we aim to build in the virtual space, using *Autodesk Fusion 360*, which allows us to import the VEX parts library and take advantage of the range of features it offers.
= Our Aim with CAD
Our aim is to have a fully virtual version of our drivetrain so that we can build it in real life with the closest accuracy possible and in the cleanest, most sustainable way. This should help us build an error-free robot and avoid having to rebuild.
#admonition(type: "quote")[#quote([_CAD twice, build once._\
\
])] // sigma quote

#figure(image("./imgs/29295ADrive.png"), caption: [Aan example of a finished CAD model of a drivetrain done by team 29295A @29295ADrive.])

= Starting Off
The simplest thing to CAD is probably a drivetrain, as it does not often differ from season to season, being fairly evolved in its entirety. We have decided on the following specifications for our drivetrain:

- 450 RPM at a 3:4 gearing
- 8 wheels
- 6 motors in a differential format

Therefore, it is fairly easy to create a general CAD model that could provide an idea of what to build with the real metal. However, to create a complete replica of what is going to be built, one must spend a little more time on the intricacies of the CAD model, taking time to add each individual spacer and screw to ensure clarity when the time comes to build.

= Our CAD Model
A few members of our team are fairly proficient in CAD, especially Fusion 360, due to needs outside of robotics. The process of creating a CAD model exactly to our wants and needs did not take very long.

#image("./imgs/our dt.png")

Here is the CAD model of our drivetrain that we will use to create the drivetrain for our first iteration robot. This CAD model will help us with actual building and hopefully speed up the whole process.

= Building the Drivetrain

= Step 1: Building the Chassis
The first step when building a drivetrain is to construct the chassis. This consists of the *4 C-channels* that hold the wheels together, plus the bracing that keeps them aligned, allowing for smooth driving with minimal friction.

Unfortunately, due to inconsistencies and tolerances within the screw-C-channel contact, these 4 C-channels are often misaligned, leading to friction and instability. To minimise these inconsistencies, we used a technique called *"squaring"* when building the chassis. This involves attaching the 4 main drive C-channels to 2 other C-channels to create a "box" where all components are either perpendicular or parallel to each other.

#image("./imgs/Squared Drive.jpg", height: 250pt)

We then used an engineer’s square to ensure that each angle was *90 degrees*. Afterward, we fitted the braces to ensure that our drivetrain remains straight, reducing friction as much as possible. After fitting these, we removed the temporary braces, leaving us with this:

#image("./imgs/Braced Drive.jpg", height: 250pt)

= Step 2: Screwjoints and Friction
Now that the drive is braced and sturdy, we can attach the wheels and test the friction both for the wheels themselves and when they are attached to the gears in the motors. To do this, we used the function on the brain that allows us to see how much power each motor is pulling at any given time. Typically, a VEX motor outputs about *0.2W of friction* on its own, meaning this is the target for friction for the entire drivetrain, allowing for peak efficiency and an acceleration curve that can beat anyone on the field.

To attach the wheels with minimum friction, we used something called a *screwjoint*, which utilises the fact that a VEX screw is much sturdier and less prone to bending than an axle. When working with a geared drivetrain, this is particularly helpful as the motors do not need to power the wheels directly.

= Step 3: Wheel "Pods"
For this to work, we used the *VEX round inserts* in each of our wheel "pods," which contain a gear and wheel screwed together. On a screwjoint, they would otherwise spin independently.

#image("./imgs/Wheel Pod.png", height: 250pt)

As seen from this exploded view of the wheel pod, this is how our wheels come together with the gear to create a seamless geared drivetrain with minimal friction, utilising screw joints.

= Step 4: Attaching the Wheel Pods
The next step is to attach the wheel pods to the drivetrain so that it becomes driveable. 

#image("./imgs/dt with wheels.png", height: 250pt)

In this photo, we can see that the wheels are attached in conjunction with the *36t gears* that allow us to have *450 RPM* on our drivetrain. You can also see another technique we use when building, which is to have *"hotswap" motors*. This means they can be easily switched out in the event of a burnout during competition.

What this entails is that the motor itself, along with the gear cartridge, has been removed from the "cap." The cap has been solely attached to the robot, and the cartridge and motor are attached with a zip tie or rubber band so they are secure during driver control.

