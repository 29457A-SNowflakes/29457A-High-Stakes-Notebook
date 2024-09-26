#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Coding Autonomous: JWS",
  type: "program",
  date: datetime(year: 2024, month: 08, day: 01),
  author: "Daniel Dew",
  witness: "Thomas Robb"
)
= Coding Support Auton
The 'support' auton is an auton that is used to support an alliance in securing the ABP, this effectively takes shape as scoring as many rings as possible, from the side where the negative corners are placed.
== The Code
The code can be seen as followed:
#figure([
  ```cpp
  void Autons::support() {
      Robot::Pneumatics::mogoMech.retract(); // make sure mogo is not clamped.
      Robot::Pneumatics::intakeLifter.retract(); // make sure intake lifter is not lifted.
      Robot::Pneumatics::doinker.retract(); // make sure doinker is not out.
      if (!pros::competition::is_autonomous()) calibrate(); // calibrate if testing (not comp)

      chassis->setPose({-50, 41, 305}); // set initial pose
      // move to mogo and pick up
      chassis->moveToPoint(-32, 28, 1000, {.forwards=false, .maxSpeed=110, .minSpeed=40});
      chassis->waitUntilDone();
      Robot::Pneumatics::mogoMech.set_value(true);
      delay(200);
      // move towads ring while intaking
      chassis->turnToPoint(-24, 48, 500);
      Robot::Actions::setIntake(1, Types::BOTH);
      chassis->moveToPoint(-24.5, 46, 1000, {.maxSpeed=90, .minSpeed=40});
      // move back slightly to help with intaking
      chassis->moveToPoint(-23, 44, 750, {.forwards=false});
      chassis->waitUntilDone();
      delay(500);
      // turn to, and navigate towards rings on auton line
      chassis->turnToPoint(-3, 46.5, 800);
      delay(500);
      chassis->moveToPose(-2, 47.5, 117, 1000, {.lead=0.5, .maxSpeed=80});
      chassis->waitUntilDone();
      // wait to suck up first ring
      delay(500);
      // suck up second ring
      chassis->moveToPose(-24, 48, 140, 2000, {.forwards=false, .minSpeed=40});
      chassis->turnToPoint(0, 40, 750);
      chassis->moveToPoint(-9, 39, 1000, {.maxSpeed=65, .minSpeed=30});
      chassis->waitUntilDone();
      // wait to suck up
      delay(500);
      // move away
      chassis->moveToPose(-10, 48, 180, 1000, {.forwards=false});
      // move towards ladder (helps w/ AWP)
      chassis->moveToPose(-24, 24, 170, 3000);
      Robot::Actions::runIntakeFor(1, BOTH, 2500, true);
      chassis->waitUntilDone();
      return;
  }
  ```
], caption: [Commented code that performs support auton route])
= Coding Rush Auton
The 'rush' auton is an auton that is used attempt to secure AWP without relying on the alliance partner#footnote([They would still have to move off autonomous line.]), it would envolve scoring 3 rings on 2 stakes and touching the ladder.
== The Code
The code can be seen as followed:
#figure([
  ```cpp
    void Autons::support() {
      Robot::Pneumatics::mogoMech.retract(); // make sure mogo is not clamped.
      Robot::Pneumatics::intakeLifter.retract(); // make sure intake lifter is not lifted.
      Robot::Pneumatics::doinker.retract(); // make sure doinker is not out.
      if (!pros::competition::is_autonomous()) calibrate(); // calibrate if testing (not comp)

      chassis->setPose({-50, 41, 305}); // set initial pose
      // move to mogo and pick up
      chassis->moveToPoint(-32, 28, 1000, {.forwards=false, .maxSpeed=110, .minSpeed=40});
      chassis->waitUntilDone();
      Robot::Pneumatics::mogoMech.set_value(true);
      delay(200);
      // move towads ring while intaking
      chassis->turnToPoint(-24, 48, 500);
      Robot::Actions::setIntake(1, Types::BOTH);
      chassis->moveToPoint(-24.5, 46, 1000, {.maxSpeed=90, .minSpeed=40});
      // move back slightly to help with intaking
      chassis->moveToPoint(-23, 44, 750, {.forwards=false});
      chassis->waitUntilDone();
      delay(500);
      // turn to, and navigate towards rings on auton line
      chassis->turnToPoint(-3, 46.5, 800);
      delay(500);
      chassis->moveToPose(-2, 47.5, 117, 1000, {.lead=0.5, .maxSpeed=80});
      chassis->waitUntilDone();
      // wait to suck up first ring
      delay(500);
      // suck up second ring
      chassis->moveToPose(-24, 48, 140, 2000, {.forwards=false, .minSpeed=40});
      chassis->turnToPoint(0, 40, 750);
      chassis->moveToPoint(-9, 39, 1000, {.maxSpeed=65, .minSpeed=30});
      chassis->waitUntilDone();
      // wait to suck up
      delay(500);
      // move away
      chassis->moveToPose(-10, 48, 180, 1000, {.forwards=false});
      // move towards ladder (helps w/ AWP)
      chassis->moveToPose(-24, 24, 170, 3000);
      Robot::Actions::runIntakeFor(1, BOTH, 2500, true);
      chassis->waitUntilDone();
      return;
    }
  ```
], caption: [Commented code that performs support auton route])
