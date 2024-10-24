#import "/packages.typ": *
#import components: *


<SensorsIdentify>
#show: create-body-entry.with(
  title: "The need for autonomous sensors",
  type: "identify",
  author: "Daniel Dew",
  witness: "Jonah Fitchew",
  date: datetime(year: 2024, month: 8, day: 20),
)
= The Problem
During every match, there is a 15 second autonomous period; there is also a minute-long autonomous skills challenge -- which contributes towards our skills score. Ultimately both autonomous challeneges boil down to 1 simple challenge: finding where the robot is.
= Finding The Robot
To know where to go, the robot must first know where it is; generally there are a lot of ways to find this -- or the robot can simply guess based on rudimentry time inputs.
#grid(columns: 2, gutter: 20pt, [
  == Where Is This Applicable?
  Knowing where the robot is can be useful in a range of scenarios, but of course the main one being during designated autonomous periods (either at the start of a match or during auton skills run). It can also be applicable during driver periods -- for example to run macros that require moving the robot.\
  On the right, there is an image -- taken from one of VEX's guides to autonomous @OverUnderSensorGuide from over under -- showing the global#footnote([aka a birdseye view]) dimensions of the field, these can be used to program autonomous routines.
], [
  #figure([#image("./imgs/Field Dimensions.png")],
    caption: [Field Dimensions defined uisng the centre as the origion(12'x12') @OverUnderSensorGuide]
  )
])
= Other Necessary Aspects
To make full autons, we also need to know the state of various other aspects of the robot -- including:
- State of pistons
- State of subsystem motors
- (Sometimes) time elapsed from start
= Easy solutions
Some of the aforementioned aspects are very easily handled (and therefore will be ommited from the brainstorm process), more specifically, they can be easily handled within the code with minimal extra knowledge.
== State of Pistons & Motors
```cpp
pros::adi::Pneumatics thisPiston; // declare piston using in-built 'Pneumatics' struct
thisPiston.toggle(); // toggle piston extension
bool extended = thisPiston.extended; // access state of piston

pros::Motor thisMotor; // declare motor with pros 'Motor' struct
moveMotor1Sec(&thisMotor) // arbitrary function to move motor for 1 second
float motorPos = thisMotor.get_position_relative(); // access state/position of motor
// Other telemetry functions are included for the motor struct.
```
== Elapsed Time
```cpp
float time = pros::millis(); // time in milliseconds from start program
```
= Aproaching Sensors
As always, it is best to have a plan on how we are going to approach picking which sensors and methods to use. There are many factors involved, but some are much more important than others; for instance, we are very keen on reliability -- and, for early season, we want to focus on high scoring 'support' autons -- therefore we can focus our search in favour of reliabilty and (for high scoring) speed. Cost is also a big factor, so we must be careful to do thorough research on all possible solutions to avoid misusing our budget.