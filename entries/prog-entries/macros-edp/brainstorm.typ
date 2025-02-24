#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Prog: Brainstorm Wall Stakes Control",
  type: "brainstorm",
  author: "Daniel Dew",
  witness: "Daniel da Silva",
  date: datetime(year: 2024, month: 9, day: 16),
)
= Brainstorming Mechanism Control
Before we can go about programming a solution, we can first research common ways in which we can implemnt control of the wall stakes mechanism.
#admonition(type: "note", [
  == Notes On Existing Program Structure
  We are still using the PROS/C++ architecture for programming our robot; therefore it is important to note that all potential solutions are displayed using PROS & C++ as the basis.
  == Common Terminology
  - Macros
    - Macros mean a set of actions or a process that are performed under the guise of a single action e.g. a button press.
    - The aim is to reduce cognitive load on driver
  - Gains
    - Gains are simple scalar values that are used to control how a function transforms an input
  - Timeouts
    - Timeouts are a time-based exit condition, it allows an action to run for up to a set _maximum time limit_. Therefore limiting actions that will not completing.
  == Brainstorm Format
  In general, we will try -- where suitable -- to provide both mathematical and practical (code) implemntations of solutions.\
])
= Potential Solutions
== Manual Control
The simplest of solutions, this entails encoding a button or joystick on the controller directly to the motor of the Lady Brown#footnote(['Lady Brown' -- A common name for wall stakes mechanisms with similar stucture to ours]). This means collecting an input from the controller, either digital/binary (buttons) or analogue (joystick) and mapping it onto the motor's `move` function.
=== Binary (button) presses
```cpp
// In driver control loop
if (master.get_digital(pros::E_CONTROLLER_DGITAL_R1)) {
  LBMotor.move(127);
} else if (master.get_digital(pros::E_CONTROLLER_DIGITAL_L1)) {
  LBMotor.move(-127);
} else {
  LBMotor.move(0);
}
```
=== Analogue (joystck) control
```cpp
// in driver control loop
int LBinput = master.get_analogue(pros::E_CONTROLLER_ANALOGUE_RIGHT_Y);
LBMotor.move(LBinput);
```
#admonition(type: "code", [
  == Variables:
  - `LBMotor` is the motor#footnote([initialised via #link("https://pros.cs.purdue.edu/v5/api/cpp/motors.html")[PROS API]]) controlling the Lady Brown.
  - `master` is the controller#footnote([Controller #link("https://pros.cs.purdue.edu/v5/api/cpp/motors.html")[API]]).
  - `pros::E_CONTROLLER_DGITAL_R(1/2)` are the PROS constants used to retrieve the correct button presses.
  - `pros::E_CONTROLLER_ANALOGUE_RIGHT_Y` is the mapping for the right stick Y axis
  == Notes on Logic (Binary)
  - Using 1 if/else statement -- as opposed to multiple different if statements -- ensures that the motor is never getting conflicting commands (e.g. if both buttons are pressed, it defualts to R1, therefore forwards motion#footnote(['Forwards' for the motor refers to upwards motion for the lift])).
  - The else statement ensures a defualt command of 0.
  == Notes on Logic (Analogue)
  - Both axes on the _left_ stick are taken -- due to drivetrain operation
  - The values taken from `...get_analogue(...)` maps seamlessly with the `move()` function
  - This method _technically_ allows for more precice control, at the expense of it being significantly harder to operate
])
\
\
\
\
\
\
\
\
=== Pros/cons of manual control
#pro-con(
  pros: [
    - Good for actions that do not need accuracy
      - It could be employed when scoring with a ring, as it simply requires moving the mech until ring is scored
  ],
  cons: [
    - _Very_ difficult to move to precise positions -- especially with digital
    - _Impossible_ to use without perfect line of sight
    - Provides no way to operate in autonomous
      - Leads to considerably more code (operation in autonomous requires own code)
  ]
)
== Using Built-In Motor Functions
Another very easy solution, this method calls for the use of the PROS motor class' internal functions, such as `move_absoloute()`.
#admonition(type: "hardware", [
  == The V5 Smart Motors
  === Internal Motor Encoders
  - As displayed in our consideration for autonomous sensors #link((page:94,x:0pt,y:0pt))[here], V5 motors have internal encoders that allow position to be read.
  #grid(columns: (45%, 50%), gutter: 5%, [
    === 'Targets'
    - The V5 motors have the capabilty to move towards rotation based targets.
      - This is an untuned process recommended for simple, imprecise actions
      - An example of this is when a motor is set to 'hold' brake mode, the target is set to current postion, therefore ensuring motor stays at that rotation until told to move otherwise
  ],
  [
    #align(center+horizon, [
      #figure(image("/entries/sensors-edp/imgs/internalMotor.png", width: 200pt), caption: [The internals of a 11W V5 Smart Motor @MotorsV5])
    ])
  ])
])
=== Code Implementation:
```cpp
void moveLB(float pos) { // General use function
  LBMotor.move_absoloute(pos);
}
```
#admonition(type: "code", [
  == Variables
  - LBMotor is the motor for the lady brown
  == The General Use Function
  - Takes 'postion' as a parameter
    - 'Position' Is the desired rotation of the _motor_ (may not directly correspond to lift due to gearing)
  - This allows us to use the function repeatedly in code, either in driver control or autonomous
])
=== Pros/cons of built in motor functions
#pro-con(
  pros: [
    - Easy to program
  ],
  cons: [
    - The internal functions are _very_ untuned, therefore this is a crude solution
    - There is no timeout, meaning the motor will attempt to reach target indefinitely
      - This could result in burnouts; bent or broken hardware etc; or could render the mechanism inoperable
  ]
)
= Tunable Control
From now on, the presented methods are more complex, but allow for tuning and adapting to our mechanism; these methods are industry standards and are widely used within VEX for mechanism control.
#admonition(type: "note", [
  == 'Transient' Tasks
  In programming, the term 'transient' means tempory; it infers that a process or task is only actioned for a limited portion of a programs runtime.
  In this case, a transient task is a control that is only actioned up until a target is reached or the task exits due to timout or some other reason.
  == 'Persistant' Tasks
  In programming, persistence#footnote([Definition #link("https://www.dictionary.com/browse/persist")[here].]) means a process or piece of data that exists for the full duration of a program's runtime.
  In this case, a persistant controllers are controllers that run indefinitely in the background, allowing motions or actions to persist indefinitely.
])

== Transient PID/PD Controller
WIP ...