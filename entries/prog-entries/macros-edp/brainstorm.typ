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
  - `pros::E_CONTROLLER_ANALOGUE_RIGHT_Y` is the mapping for the Right stick Y axis
  == Notes on Logic (Binary)
  - Using 1 if/else statement -- as opposed to multiple different if statements -- ensures that the motor is never getting conflicting commands (e.g. if both buttons are pressed, it defualts to R1, therefore forwards motion#footnote(['Forwards' for the motor refers to upwards motion for the lift])).
  - The else statement ensures a defualt command of 0.
  == Notes on Logic (Analogue)
  - Both axes on the _left_ stick are taken -- due to drivetrain operation
  - The values taken from `...get_analogue(...)` maps seamlessly with the `move()` function
  - This method _technically_ allows for more precice control, at the expense of it being significantly harder to operate.
])
=== Pros/cons of manual control
#pro-con(
  pros: [
    - Good for actions that do not need accuracy
      - It could be employed when scoring with a ring, as it simply requires moving the mech until ring is scored
  ],
  cons: [
    - _Very_ difficult to move to precise positions -- especially with analogue
    - _Impossible_ to use without perfect line of sight
    - Provides no way to operate in autonomous
      - Leads to considerably more code (operation in autonomous requires own code)
  ]
)