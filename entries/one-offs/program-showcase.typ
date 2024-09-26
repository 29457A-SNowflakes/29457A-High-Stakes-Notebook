#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Program Showcase: Early Season",
  type: "program",
  date: datetime(year: 2024, month: 08, day: 01),
  author: "Daniel Dew",
  witness: "Daniel da Silva"
)
#set quote(block: true)
= Programming Objecives
As covered in our 'Programming Approach' design process, there are certain objectives that a programmer must consider when creating a robot's program. These include:
- Driver/Operator Control
  - Somewhat self explanatory, the inputs from the controller must influence how the robot actuates its systems during the 1:45min drier control period
- Autonomous
  - Autonomous routine(s) must be programmed into the robot to be used during autonomous period
- Ease of setup
  - Before a match, the correct autonomous routines and possibly adjustable values must be set up -- the programmer must consider how this is done (e.g. GUI, through code changes etc.)
- Ease of testing
  - During testing (not in competition) the robot must be bleto be easily tested -- this could simply mean it is easy to change the key values in code, or could be more complex in the form of a GUI or CLI.
- Maintainability
  - This has been discussed in detail in preious pages, essentially, the programmer must keep ease of use and maintainabilty to a high standard when programming.
*Orginisation is key.*
#admonition(type: "quote")[
    #quote(attribution: [Guido Van Rossum, Creator of Python])[
        Code is read much more often than it is written.
    ]
    \
]
= The Blank Project
After creating a blank project using PROS, it supplies some defualt functions that can be used to create the program.
```cpp
#include "main.h" // -> includes the PROS API, to be used throughout the program.
/**
 * Runs initialization code. This occurs as soon as the program is started.
 *
 * All other competition modes are blocked by initialize; it is recommended
 * to keep execution time for this mode under a few seconds.
*/
void initialize() {}
/**
 * Runs while the robot is in the disabled state of Field Management System or
 * the VEX Competition Switch, following either autonomous or opcontrol. When
 * the robot is enabled, this task will exit.
 */
void disabled() {}
/**
 * Runs after initialize(), and before autonomous when connected to the Field
 * Management System or the VEX Competition Switch. This is intended for
 * competition-specific initialization routines, such as an autonomous selector
 * on the LCD.
 *
 * This task will exit when the robot is enabled and autonomous or opcontrol
 * starts.
 */
void competition_initialize() {}
/**
 * Runs the user autonomous code. This function will be started in its own task
 * with the default priority and stack size whenever the robot is enabled via
 * the Field Management System or the VEX Competition Switch in the autonomous
 * mode. Alternatively, this function may be called in initialize or opcontrol
 * for non-competition testing purposes.
 *
 * If the robot is disabled or communications is lost, the autonomous task
 * will be stopped. Re-enabling the robot will restart the task, not re-start it
 * from where it left off.
 */
void autonomous() {}
/**
 * Runs the operator control code. This function will be started in its own task
 * with the default priority and stack size whenever the robot is enabled via
 * the Field Management System or the VEX Competition Switch in the operator
 * control mode.
 *
 * If no competition control is connected, this function will run immediately
 * following initialize().
 *
 * If the robot is disabled or communications is lost, the
 * operator control task will be stopped. Re-enabling the robot will restart the
 * task, not resume it from where it left off.
*/
void opcontrol() {}
```
= Adding Packages
One of the huge advantages of PROS is the abilty to add community developed packages into the code. We as a team will add 2 packages to significantly improve our program.
#admonition(type: "warning")[
  == DISCLAIMER
  We as a team _cannot_ claim responsibilty for the development of these packages. They are both developed by individual open source communities.\
  However, before we decided to use these packages, we all researched and gained understanding of the core concepts that these packagas utilize, this not only drastically improves our capabilty to use them, but also ensures our adherance to the #link("https://kb.roboticseducation.org/hc/en-us/articles/5449868745367-Student-Centered-Policy")[Student-Centered Policy]. 
]\
\
== The Packages:
- LemLib
  - #link("github.com/Lemlib/Lemlib")[LemLib] is a library developed by a large open source community -- it allows users to employ odometry alogorithims, as well as movement functions; including PID controllers and Boomerang Controllers.
  - We use a modified fork#footnote([A branch, in this case not public]) of lemlib (developed by us), allowing us to implement _gain scheduling_ to be used later.
- Robodash
  - Robodash implements a user friendly libvgl#footnote([The GUI library that PROS implements for the brain's screen]) interface, that allows us to quickly implement consoles and auton selectors.
== Adding The Packages in The Project
To add the packages we can use the newly implemented remote depot feature from the PROS CLI.
=== For LemLib:
```zsh
pros c add-depot LemLib https://raw.githubusercontent.com/LemLib/LemLib/depot/stable.json # adds LemLib's stable depot
pros c apply LemLib # applies latest stable version of LemLib
```
=== For Robodash:
```zsh
pros c add-depot robodash https://raw.githubusercontent.com/unwieldycat/robodash/depot/stable.json
```
= File structure
Our program will be split up into different sections for the sake of orginisation:
```
|
|-- [vscode files/folders]
|-- include
|   |-- [defualt pros header folders]
|   |-- lemlib -> lemlib header files
|   |-- robodash -> robodash header files
|   |-- usr -> created by us
|   |   |-- autons.h -> header files for all auton routines
|   |   |-- robot.h -> contains 'robot' class
|   |   |-- utils.h -> header file for utility functions
|-- src
|   |-- robotConfig
|   |   |-- globals.cpp -> where all global values are initialized
|   |   |-- intis.cpp -> initializer functions for robot
|   |   |-- tuning.cpp -> where tuning loops and functions are contained
|   |-- autons.cpp -> where auton routines are defined
|   |-- main.cpp -> all competition functions (opcontrol(), autonomous(), etc.)
|   |-- utils.cpp -> where util functions are declared
```
= Class Based Program (robot.h)
To improve maintainabilty and orginisation, we will be implementing a class based program; this involves us using a header file that contains all functions (contained in subclasses) to operate the robot and its subystems. These functions can then be called and used in any other file.
== robot.h:
```h
// includes ---
#include "api.h"
#include "lemlib/api.hpp"
#include "lemlib/chassis/chassis.hpp"
#include "lemlib/chassis/trackingWheel.hpp"
#include "pros/adi.hpp"
#include "pros/imu.hpp"
#include "pros/motor_group.hpp"
#include "pros/motors.hpp"
#include "robodash/api.h"
#include "robodash/core.h"
#include "robodash/views/console.hpp"
#include "robodash/views/selector.hpp"
// ---


namespace Types {
    // specifies how intake is actuated
    enum IntakeActionType {
        BOTH,
        FIRST,
        SECOND
    };
}
using namespace Types;
class Robot {
    public:
        class Auton { // contains autons
            public:
                class Tuning {  // contains functions to tune autonomous (PID) values
                    public:
                        static rd::Console AutonTuning;
                        static const void TuningLogicLoop();
                        static lemlib::ControllerSettings latController;
                        static lemlib::ControllerSettings angularController;

                        //TODO (non-urgent)
                        static const void DriveCurveTuning();
                        static lemlib::ExpoDriveCurve driveCurveLateral;
                        static lemlib::ExpoDriveCurve driveCurveAngular;
                        //--

                        static rd::Selector Tuningselector; // selector for test autons
                };
            static rd::Selector autonSelectorMain; // selector for game autons
        };
        class Motors { // contains all motor-based variables
            public:
                static const lemlib::Drivetrain drivetrain;
                static pros::Motor Intake1st;
                static pros::Motor Intake2nd;
                static pros::MotorGroup fullIntake;
                static bool DTDirection; // direction of 'forward' for drivetrain (not implemented)
            protected:
                static pros::MotorGroup leftMotors;
                static pros::MotorGroup rightMotors;
        };
        class Sensors { // class for sensors
            public:
                static lemlib::OdomSensors sensors;
                static pros::IMU imu;
            protected:
                static lemlib::TrackingWheel verticalTracking;
                static lemlib::TrackingWheel horizontalTracking;
        };
        class Pneumatics { // class for pneumatics
            public:
                static pros::adi::Pneumatics mogoMech;
                static pros::adi::Pneumatics intakeLifter;
                static pros::adi::Pneumatics doinker;   
        };
        class Actions { // contains macros/actions for robot
            public:
                static void setMogoFor (bool extended, float time, bool async=true);

                static void setIntake(int direction, IntakeActionType stage);
                static void runIntakeFor(int direction, IntakeActionType stage, float time, bool async = true);


                static void setIntakeLifterFor(bool extended, float time, bool async=true);

                static void jiggle(float time); // jiggles robot (may be useful?)

        };
        class Init { // intializer functions
            public:
                static void initAll();
            protected:
                static void initPIDs();
                static void initDriveCurves();
        };
        class Logging {/* WIP */};
        static pros::Controller master; // controller
        static lemlib::Chassis chassis; // main chassis
};
```
== Declaring global values (globals.cpp)
To avoid null pointers, global variables must be decalred in one file:
```cpp
#include "main.h"
#include "lemlib/api.hpp"
#include "pros/abstract_motor.hpp"
#include "pros/adi.hpp"
#include "pros/motor_group.hpp"
#include "usr/robot.h"
#include "robodash/api.h"
#include "usr/autons.h"
using namespace pros;
using namespace lemlib;

pros::Controller Robot::master (pros::E_CONTROLLER_MASTER);
rd::Console Robot::Auton::Tuning::AutonTuning ("PID Tuner");

lemlib::ControllerSettings Robot::Auton::Tuning::latController (10, // proportional gain (kP)
                                            0, // integral gain (kI)
                                            3, // derivative gain (kD)
                                            3, // anti windup
                                            1, // small error range, in inches
                                            100, // small error range timeout, in milliseconds
                                            3, // large error range, in inches
                                            500, // large error range timeout, in milliseconds
                                            20 // maximum acceleration (slew)
);
lemlib::ControllerSettings Robot::Auton::Tuning::angularController(2, // proportional gain (kP)
                                             0, // integral gain (kI)
                                             10, // derivative gain (kD)
                                             3, // anti windup
                                             1, // small error range, in degrees
                                             100, // small error range timeout, in milliseconds
                                             3, // large error range, in degrees
                                             500, // large error range timeout, in milliseconds
                                             0 // maximum acceleration (slew)
);
rd::Selector Robot::Auton::Tuning::Tuningselector (
    {
        {"Move Forwards 24''", Autons::Testers::forward24},
        {"Turn 90deg right", Autons::Testers::turn90},
        {"Boomerang 24 24 90", Autons::Testers::boomerang_24_24_90},
        {"Swing 90deg right", Autons::Testers::swing90},
        {"Cricle (exp.)", Autons::Testers::circle}
    }
);

Motor Robot::Motors::Intake1st (-11, v5::MotorGears::blue, v5::MotorUnits::rotations);
Motor Robot::Motors::Intake2nd (9, v5::MotorGears::blue, v5::MotorUnits::rotations);
MotorGroup Robot::Motors::fullIntake ({-11, 9}, v5::MotorGears::blue, v5::MotorEncoderUnits::rotations);

bool Robot::Motors::DTDirection = true; // Defualt direction is forwards

//* Left motors on ports 10, 9, 8; Rights on 1, 2, 3; Using blue cartridges
MotorGroup Robot::Motors::leftMotors (
    {-1, -2, -10},
    MotorGears::blue,
    MotorUnits::degrees
);
MotorGroup Robot::Motors::rightMotors (
    {14, 20, 18},
    MotorGears::blue,
    MotorUnits::degrees
);
ExpoDriveCurve Robot::Auton::Tuning::driveCurveLateral (4, 6, 1.004);
ExpoDriveCurve Robot::Auton::Tuning::driveCurveAngular (4, 6, 1.016);
//* Drivetrain with track width 13.1'', Geard (down) for 450rpm, using horizontal drift of 8 due to traction wheel usage
//TODO Measure dimensions
const Drivetrain Robot::Motors::drivetrain(
    &leftMotors,
    &rightMotors,
    13.1,
    Omniwheel::NEW_275,
    450,
    6
);

adi::Pneumatics Robot::Pneumatics::mogoMech {'E', false};
adi::Pneumatics Robot::Pneumatics::intakeLifter {'G', true}; // not built
adi::Pneumatics Robot::Pneumatics::doinker {'h', false}; // not built

Imu Robot::Sensors::imu (21); // IMU on port ?

adi::Encoder vertEncoder('A', 'B');
adi::Encoder horiEncoder('C', 'D');

//TODO measure distances
TrackingWheel Robot::Sensors::verticalTracking (&vertEncoder, Omniwheel::NEW_275_HALF, 0);
TrackingWheel Robot::Sensors::horizontalTracking (&horiEncoder, Omniwheel::NEW_275_HALF, 0);

OdomSensors Robot::Sensors::sensors (&verticalTracking, nullptr, &horizontalTracking, nullptr, &imu);

lemlib::Chassis Robot::chassis (
    Motors::drivetrain,
    Auton::Tuning::latController,
    Auton::Tuning::angularController,
    Sensors::sensors,
    &Auton::Tuning::driveCurveLateral,
    &Auton::Tuning::driveCurveAngular
);
```
= Utils
Utils are useful functions that can be used throughout the program to manage certain aspects.
== utils.h:
```h
#include <string>
namespace utils { // namespaces for utils
    void save_value(std::string name, float value); // saves float to file on sd card
    float load_value (std::string name); // loads float from file on sd card
}
```
== utils.cpp (declaring):
```cpp
#include "usr/utils.h"
#include "fmt/core.h"
#include "main.h"
#include <cstdio>
#include <cstring>

void utils::save_value(std::string name, float value) {

    std::string fullPath = fmt::format("/usd/{}.txt", name);

    FILE* value_file = fopen(fullPath.c_str(), "w");
    fputs(std::to_string(value).c_str(), value_file);

    fclose(value_file);
}

float utils::load_value(std::string name) {

    std::string fullPath = fmt::format("/usd/{}.txt", name);

    FILE* value_file = fopen(fullPath.c_str(), "r");

    if (value_file == nullptr) {
        return 0;
    }
    char buf[50];
    fread(buf, 1, 50, value_file);
    fclose(value_file);
    
    return std::stof(buf);
}
```
= Autons
#admonition(type: "note")[As of right now, autons are WIP -- only test autons are implemented.]
== autons.h:
```h
namespace Autons {
    class Testers {
        public:
            static void forward24(); // moves robot forward 24 inches
            static void turn90(); // turns 90deg right
            static void swing90(); // 'swings' 90deg right
            static void boomerang_24_24_90(); // uses boomerang controller to go to (24, 24) inches at heading 90deg
            static void circle(); // (in theory) moves bot in full circle.
    };
    // WIP
    void supportTouchLadder();
    void support();
    void rush();
    // TODO: more?
}
```

== autons.cpp
```cpp
#include "lemlib/chassis/chassis.hpp"
#include "usr/robot.h"
#include "api.h"
#include "lemlib/api.hpp"
#include "usr/autons.h"
using namespace pros;

//* For Tuning
void calibrate () {
    Robot::chassis.calibrate();
    pros::delay(1000);
    Robot::chassis.setPose({0,0,0});
}
void Autons::Testers::forward24() {
    calibrate();
    Robot::chassis.moveToPoint(0, 24, 1000);
    Robot::chassis.waitUntilDone();
}
void Autons::Testers::turn90() {
    calibrate();
    Robot::chassis.turnToHeading(90, 1000);
    Robot::chassis.waitUntilDone();
}
void Autons::Testers::boomerang_24_24_90 () {
    calibrate();
    Robot::chassis.moveToPose(24, 24, 90, 1250, {.lead=0.81});
    Robot::chassis.waitUntilDone();
}
void Autons::Testers::swing90() {
    calibrate();
    Robot::chassis.swingToHeading(90, lemlib::DriveSide::RIGHT, 500);
    Robot::chassis.waitUntilDone();
}
void Autons::Testers::circle() {
    calibrate();
    Robot::chassis.moveToPose(0, 24, 270, 4000, {.lead=0.6});
    Robot::master.rumble(".");
    Robot::chassis.moveToPose(-24, 0, 180, 1000, {.lead=0.81});
    Robot::chassis.moveToPose(0, -24, 90, 1000, {.lead=0.81});
    Robot::chassis.moveToPose(24, 24, 0, 1000, {.lead=0.81});
    Robot::chassis.moveToPose(0, 24, 90, 1000, {.lead=0.81});
    Robot::chassis.waitUntilDone();
}
lemlib::Chassis* chassis = &Robot::chassis;
//* Game autons
void Autons::support() {
    chassis->setPose({-50, 41, 305});
    chassis->moveToPoint(-32, 28, 1000, {.forwards=false, .maxSpeed=110, .minSpeed=40});
    chassis->waitUntilDone();
    Robot::Pneumatics::mogoMech.set_value(true);
    delay(40);
    chassis->turnToPoint(-24, 48, 500);
    Robot::Actions::setIntake(1, Types::BOTH);
    chassis->moveToPoint(-26, 42, 1000, {.maxSpeed=80});
    chassis->waitUntilDone();
    delay(100);
    chassis->turnToPoint(-3, 50.5, 400);
    chassis->moveToPose(-3, 52, 90, 1000, {.lead=0.9, .maxSpeed=80});
    chassis->waitUntilDone();
    delay(100);
    chassis->moveToPose(-12, 55, 135, 800, {.forwards=false, .lead=0.5, .maxSpeed=70});
    chassis->moveToPoint(-7, 48, 1000, {.maxSpeed=90});
}
```
\
\
\
\
\
= Robot Actions
== robotActions.cpp:
```cpp
#include "lemlib/pose.hpp"
#include "main.h"
#include "lemlib/api.hpp"
#include "pros/rtos.hpp"
#include "usr/robot.h"

using namespace pros;
using namespace lemlib;

void Robot::Actions::setMogoFor(bool extended, float time, bool async) {
    if (async) {
        Task task ([=] {setMogoFor(extended, time, false);});
        delay(10);
        return;
    }
    Pneumatics::mogoMech.set_value(extended);
    delay(time);
    Pneumatics::mogoMech.toggle();
}
void Robot::Actions::setIntake(int direction, IntakeActionType stage) {
    int volts = 12000 * direction;
    if (stage==IntakeActionType::FIRST || stage == IntakeActionType::BOTH) {
        Motors::Intake1st.move_voltage(volts);
    }
    if (stage==IntakeActionType::SECOND || stage == IntakeActionType::BOTH) {
        Motors::Intake2nd.move_voltage(volts);
    }
}
void Robot::Actions::runIntakeFor(int direction, IntakeActionType stage, float time, bool async) {
    if (async) {
        Task t ([=] {runIntakeFor(direction, stage, time, false);});
        delay(10);
        return;
    }
    setIntake(direction, stage);
    delay(time);
    setIntake(0, stage);
}
void Robot::Actions::setIntakeLifterFor(bool extended, float time, bool async){
    if (async) {
        Task t ([=] {setIntakeLifterFor(extended, time, false);});
        delay(10);
        return;
    }
    Pneumatics::intakeLifter.set_value(extended);
    delay(time);
    Pneumatics::intakeLifter.toggle();
}
void Robot::Actions::jiggle(float time) {
    float start = millis();
    while (millis()-start < time) {
        Pose jigglePoint1 = Pose {chassis.getPose().x-(float)cos(chassis.getPose(true).theta)*2, chassis.getPose().y-(float)sin(chassis.getPose(true).theta)*2};
        Pose jigglePoint2 = Pose {chassis.getPose().x+(float)cos(chassis.getPose(true).theta)*2, chassis.getPose().y+(float)sin(chassis.getPose(true).theta)*2};
        Pose start = chassis.getPose();
        Robot::chassis.moveToPoint(jigglePoint1.x, jigglePoint1.y, 50, {.minSpeed=100});
        Robot::chassis.moveToPoint(jigglePoint2.x, jigglePoint2.y, 50, {.minSpeed=100});
        Robot::chassis.moveToPoint(start.x, start.y, 50, {.minSpeed=100});
        Robot::chassis.waitUntilDone();
        delay(200);
    }
}
```
= Tuning
== tuning.cpp
```cpp
#include "lemlib/chassis/chassis.hpp"
#include "pros/imu.hpp"
#include "pros/misc.h"
#include "pros/misc.hpp"
#include "pros/motor_group.hpp"
#include "robodash/views/console.hpp"
#include "robodash/views/selector.hpp"
#include "usr/robot.h"
#include <cstdio>
#include <cstring>
#include <string>
#include "usr/utils.h"
using namespace utils;


const void Robot::Auton::Tuning::TuningLogicLoop() {
    AutonTuning.focus();
    std::cout << "here";
    float AngularP = angularController.kP;
    float AngularI = angularController.kI;
    float AngularD = angularController.kD;
    float LatP = latController.kP;
    float LatI = latController.kI;
    float LatD = latController.kD;
    float step = 0.1;
    int index = 0;
    int minIndex = 0;
    int maxIndex = 6;
    while (!master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_R2)) {
        pros::delay(20);
        AutonTuning.clear();

        latController.kP = LatP;
        latController.kI = LatI;
        latController.kD = LatD;

        angularController.kP = AngularP;
        angularController.kI = AngularI;
        angularController.kD = AngularD;
        
        chassis.changeAngularP(AngularP);
        chassis.changeAngularI(AngularI);
        chassis.changeAngularD(AngularD);

        chassis.changeLatP(LatP);
        chassis.changeLatI(LatI);
        chassis.changeLatD(LatD);

        AutonTuning.println("AUTON TUNING");
        AutonTuning.println("Press B to run Auton, R2 to quit, Arrows to navigate/change values, X to save values");

        AutonTuning.printf("Angular P: %f %s\n", AngularP, index==0 ? "<<" : "");
        AutonTuning.printf("Angular I: %f %s\n", AngularI, index==1 ? "<<" : "");
        AutonTuning.printf("Angular D: %f %s\n", AngularD, index==2 ? "<<" : "");
        AutonTuning.printf("Lateral P: %f %s\n", LatP, index==3 ? "<<" : "");
        AutonTuning.printf("Lateral I: %f %s\n", LatI, index==4 ? "<<" : "");
        AutonTuning.printf("Lateral D: %f %s\n", LatD, index==5 ? "<<" : "");
        AutonTuning.printf("Change step: %f %s\n", step, index==6 ? "<<" : "");

        if (master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_DOWN)) index +=1;
        if (master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_UP)) index -= 1;
        if (index > maxIndex) index = minIndex;
        if (index < minIndex) index = maxIndex;

        if (master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_LEFT)) {
            switch (index) {
                case 0:
                    AngularP = ((int)(AngularP*100))-((int)(step*100))/100;
                    break;
                case 1:
                    AngularI = ((int)(AngularI*100))-((int)(step*100))/100;
                    break;
                case 2:
                    AngularD = ((int)(AngularD*100))-((int)(step*100))/100;
                    break;
                case 3:
                    LatP = ((int)(LatP*100))-((int)(step*100))/100;
                    break;
                case 4:
                    LatI = ((int)(LatI*100))-((int)(step*100))/100;
                    break;
                case 5:
                    LatD = ((int)(LatD*100))-((int)(step*100))/100;
                    break;
                case 6:
                    step = (((int)(step*100))-1)/100;
                    break;
            }
        } else if (master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_RIGHT)) {
            switch (index) {
                case 0:
                    AngularP = ((int)(AngularP*100))+((int)(step*100))/100;
                    break;
                case 1:
                    AngularI = ((int)(AngularI*100))+((int)(step*100))/100;
                    break;
                case 2:
                    AngularD = ((int)(AngularD*100))+((int)(step*100))/100;
                    break;
                case 3:
                    LatP = ((int)(LatP*100))+((int)(step*100))/100;
                    break;
                case 4:
                    LatI = ((int)(LatI*100))+((int)(step*100))/100;
                    break;
                case 5:
                    LatD = ((int)(LatD*100))+((int)(step*100))/100;
                    break;
                case 6:
                    step = (((int)(step*100))+1)/100;
                    break;
            }
        }
        chassis.changeAngularP(AngularP);
        chassis.changeAngularI(AngularI);
        chassis.changeAngularD(AngularD);
        chassis.changeLatP(LatP);
        chassis.changeLatI(LatI);
        chassis.changeLatD(LatD);

        if (master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_B)){
            master.clear_line(1);
            AutonTuning.printf("Running auton...");
            master.print(1, 1, "Running auton");
            Tuningselector.run_auton();
        }else {
            AutonTuning.printf("\n");
            master.clear_line(1);
            master.print(1, 1, "Done");
        }

        if (master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_X)) {
            AutonTuning.println("Saving");
            save_value("angP", AngularP);
            save_value("angI", AngularI);
            save_value("angD", AngularD);
            save_value("latP", LatP);
            save_value("latI", LatI);
            save_value("latD", LatD);
        }
    }
    Tuningselector.focus();
}
```
= Implementing the Primary Code
With all the complimentary functions built into the robot class, I can now imlement the main functions in the main.cpp file -- this will include calling the selected autonomous routine and collecting and using user inputs during operator control.
== Initialization
We had the foresight to declare initialize functions globally in _inits.cpp_, therefore we can just call '_initAll()_' from the primary code:
```cpp
void initialize() {
    Robot::Inits::initAll(); // runs initialization function
}
```
== Operator Control
#admonition(type: "note")[
    Most functionality within opcontrol is contained in a while loop, this allows the program to constantly update values and assess states.
]
=== Moving the drive
#admonition(type: "decision")[
    For driver control, I (driver and programmer) have decided to use a control scheme called *single stick curvature drive*, it is very similar to single stick arcade, but the turning inputs are scaled differently depending on throttle input (essentially creating an arc with the turning) -- I chose this because arcade is typically limited in terms of precise control, and tank, while it technically is easier to provide ultra precise turn circles, is not very intuitive and would be very difficult to learn in such a short timeframe. (We will evaluate this desision as the season progresses.)
]
Fortunately, LemLib condenses the somewhat long mathematical function into 1 function call:
```cpp
void opcontrol() {
    while (true){
        pros::delay(20) // 20ms delay so brain doesn't crash
        int leftX = Robot::master.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_X);
        int leftY = Robot::master.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
        Robot::chassis.curvature(leftY, leftX); // lemlib's chassis contains curvature function
        // ...
    }
}
```
=== Actuating Subsystems
To actuate the other subystems, if statements can be used to access the state of buttons on the controller:
```cpp
void opcontrol() {
    while (true){
        // ...
        if (Robot::master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_B)) {
            Robot::Pneumatics::mogoMech.toggle(); // toggles mogo on B press
        }
        if (Robot::master.get_digital(pros::E_CONTROLLER_DIGITAL_L2)) {
            Robot::Actions::setIntake(-1, Types::BOTH); // sets intake backwards while L2 is pressed
        } else if (Robot::master.get_digital(pros::E_CONTROLLER_DIGITAL_R2)) {
            Robot::Actions::setIntake(1, Types::BOTH); // sets intake forwards while R2 is pressed
        } else Robot::Actions::setIntake(0, Types::BOTH); // stops intake
    }
}
```
=== Extra features
With plenty of buttons spare, extra features can be added -- for exapmple, we plan on having an arm/sweeper that can be added with another button press.\
We can also use button presses to actuate autonomous for testing (we should of course avoid during competition). Instead of a single button press, however, it should be a sequence, so we avoid running it during driver practice.
#admonition(type: "example")[
    An example button sequence would be:\
    _Down arrow held down *AND* up arrow new press_
]
Adding to code:
```cpp
void opcontrol() {
    while (true) {
        // ...
        if (
            !pros::competition::is_connected() && // if field control (at a competition) is NOT connected
            Robot::master.get_digital(pros::E_CONTROLLER_DIGITAL_DOWN) && // if down arrow is held down
            Robot::master.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_UP) // if up arrow is newly pressed
        ) autonomous() // starts autonomous
    }
}
```
== Starting Autonomous
Robodash fortunately handles picking autonomous via a GUI, so the autonomous function must just run the seleced auton like so:
```cpp
void autonomous() {
    Robot::Auton::autonSelectorMain.run_auton(); // runs selected auton
}
```
= Note On Testing & Iteration
Normally after implementing a large feature, such as this code -- we would implement a testing campaign to verify the results of the code. However, we managed to very quickly verify that the code worked by simply running it and verifying all features worked.\
Throughout the season, we will continue to update the code with autons, subsystems and additional features as we see fit.

#admonition(type: "quote")[
    #quote(attribution: [Patrick Mckenzie, Sofware Enginner])[
        Every great developer you know got there by solving problems that they were unqualified to solve until they actually did it.
    ]
    \
]