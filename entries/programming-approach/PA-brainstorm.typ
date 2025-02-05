#import "/packages.typ": *
#import components: *


#show: create-body-entry.with(
  title: "Potential Programming Approaches",
  type: "brainstorm",
  author: "Daniel Dew, Daniel da Silva",
  witness: "Jonah Fitchew",
  date: datetime(year: 2024, month: 8, day: 10),
)
= Brainstorming Approaches
Here we will define what approaches we will use when coding, aiming to strengthen team co-ordination, programming efficiency and debugging speed.
== Language and Software
One of the most important decisions to make is the programming language and its accompanying software and libraries. For robotics, the two most common languages are C++, Python and increasingly Rust, which is making an appearance with #link("https://github.com/vexide/vexide", [vexide])#footnote([An open source Rust runtime for v5 robots]), but the software used alongside it is also very important.
=== Python with VEXCode V5 or RoboMesh Studio:
- The only current way to code with python is using VEXCode V5 or RoboMesh Studio
#components.pro-con(
  pros: [
    - Python is exceptionally easy to read and write thanks to its variable type declaration and readable syntax
    - Devices can be set up using the built in GUIs
  ],
  cons: [
    - Using GUI for devices can be restricting
    - There is no allowances for _any_ libraries, something that python is known for
    - Multiple files are not supported, therefore less orginisation through program structure is possible
    - No choice in editor, therefore no choice for extensions, themes, formatting etc.
    - Fairly limited device API, less control over devices
  ]
)
Some example python pseudo code for tank drive (2 stick control) looks like this:
```py
import vex
#Function to instantiate new controller object
control = vex.controller()
#Function that returns all motors in a list
motors = vex.GetAllMotors()

def DriverControl(self, controller):
  #function that returns the left joystick inputs
  movementLeft = control.ReturnLeft()
  #function that returns the right joystick inputs
  movementRight = control.ReturnRight()
  for i in range(len(motors)):
    if i %% 2 == 0:
      motors[i].velocity = movementLeft
    else:
      motors[i].velocity = movementRight
```
=== C++ with VEXCode or VEXCode Pro
- VEX offers an alternative to python with C++ in the IDEs VEXCode and VEXCode Pro
- VEXCode Pro allows users to use multiple files, along with header files and other C++ functionalities.
#components.pro-con(
  pros: [
    - C++ offers much more raw functionality as it is a lower level language#footnote([A language that is closer to manipulating raw memory, giving users more control over memory])
    - GUIs are still available to configure devices
  ],
  cons: [
    - Still no access to custom libraries
    - Rigid IDE, no access to extensions to improve workflow
    - Fairly limited device API, less control over devices
    - Cannot declare devices both in code and with GUI, must choose one or the other
  ]
)
Some example C++ code for tank drive (2 stick) may look like this:
```cpp
using vex;
```
=== C/C++ with PROS
#grid(columns: 2, gutter: 20pt, [
  - #link("https://pros.cs.purdue.edu/")[PROS] is an open source development environment for VEX founded by Purdue University
  - Allows users to write code in C++ or C (C++ is generally preferred)
  - Integrated within existing IDEs, e.g. VSCode or Atom
], [#image("./PROS.png", height: 75pt)])
#components.pro-con(
  pros: [
    - Allows full C/C++ functionality
    - Multiple files supported, including header files
    - Full template and library functionality
    - Hot/Cold linking: only changed code is uploaded, allowing for fast uploads even wirelessly
    - Built into existing IDEs, so extensions, formatting themes etc. is all supported and controlled by user
    - Significantly improved device API, allowing for fine control over all devices/components, including serial inputs/outputs and direct control over radio
    - Easy to get started, but with in depth capabilities for niche applications
    - Huge ammounts of documentation e.g. #link("https://wiki.purduesigbots.com/")[Purdue SIGBots wiki] or #link("https://pros.cs.purdue.edu/v5/index.html")[API docs]
  ],
  cons: [
    - Can be harder to understand concepts
  ]
)
Some example PROS code for tank drive (2 stick) may look like this:
```cpp
using vex;
using pros;
```
=== Rust with Vexide
- #link("https://github.com/vexide/vexide")[Vexide] is an open source 'no-std'#footnote(['no-std' is a type of package that limits the use of standard libraries. The V5 brain runs without an OS, meaning std libraries are impossible to use.]) Rust runtime for vex V5
- It is a successor to #link("https://github.com/vexide/pros-rs")[pros-rs], which binds Rust code to the PROS API.
- Allows users to code using Rust, while supplying a CLI to manage projects/interact with devices
- Vexide will be included in a family of vex based applications, such as #link("https://github.com/vexide/vex-v5-qemu")[vex-v5-qemu], a CPU level simulation for PROS and Vexide code (this also includes node-based GUI for\ device configuration).
#components.admonition(type: "warning", [
  Vexide is still considered experimental, it has a small base of contributors that are working to make it more and more usable.
])
#components.pro-con(
  pros: [
    - Rust is a language designed around memory safetly, including things like variable 'ownership' to avoid memory leaks.
    - Vexide will eventually work seemlessly with a range of other projects developed by the vexide team.
  ],
  cons: [
    - Rust is not an easy or intuitive language to learn -- we have very limited experience with Rust
    - Because of it being so new, vexide does not have a stable base of users -- meaning less documentation and support
    - No-std means basic mathematical functions are not accessible#footnote([There are ways around this])
    - CLI is still limited especially when compared to PROS
  ]
)
== Variable Naming
Naming conventions are very useful when writing _and_ reading code. They can make long, complicated names easy to read; and additionally can help clarify the intent, context and scope of a variable in a program.
=== Variable requirements:
Most languages (C++ included) require variables to adhere to certain rules:
- Must not start with a digit
- Only alphanumeric values or underscores
- No spaces/whitespaces
- No isolated keywords (e.g. 'if', 'for', 'import' etc.)#footnote([Dependant on language])
== Common types of variable naming:
=== camelCase:
#underline([_Explanation:_])\
- Variable names start with lowercase
- All new words within the variables start with an uppercase
#underline([_Example:_])
```cpp
int dateNow() {
  // Get date
}
bool thisIsAVariable = true;
int currentDate = dateNow();
```
#components.pro-con(
  pros:
  [
    - Easy to understand multiword variables
    - Some programs recognise camelCase, allowing them to display variables with whitespaces
    - Satisfying variable 'shape'
  ],
  cons: [
    - Variable names can become long
    - Some words can look confusing e.g 'A' in 'thisIsAVariable' ('A' can be hard to see)
  ]
)
=== snake\_case
#underline([_Explanation:_])\
- Using underlining to represent whitespace
- Words typically start with lowercase
#underline([_Example:_])
```cpp
int date_now() {
  // Get date
}
bool this_is_a_variable = true;
int current_date = date_now();
```
#underline([_Pros/Cons:_])
#components.pro-con(
  pros: [
    - Very easy to understand understand multiword variables
    - Very easy to see where whitespace is supposed to be
  ],
  cons: [
    - Variable names can get very long
    - Somewhat difficult to program with due to frequent use of '\_'
  ]
)
#components.admonition(type: "note")[
  The difficulty from frequently using '\_' can be circumvented by using a program such as Auto HotKey to rebind '\_' to something such as "Shift" + "Space".\
  However, this work around may not be worth it for the express purpose of making a naming convention easier.
]

=== Boolean 'is' naming
#underline([_Explanation:_])\
- Start all booleans with 'is'
- Often times subprograms that return boolean values start with 'get' ('getIs...')
#underline([_Example:_])
```cpp
// (Using camelCase)
bool getIsSaturday() {
  // is it a saturday?
}
bool isSaturday = getIsSaturday();
```
#underline([_Pros/Cons:_])
#components.pro-con(
  pros: [
    - Easy to differentiate between regular procedures and functions that return a boolean value
    - Works best with camelCase but can also work with other variable naming conventions
  ],
  cons: [
    - Variable names can get very long
    - Doesn't help identify between procedures and functions that return other data types
  ]
)
#components.admonition(type: "note")[
  Procedures are defined as subprograms, which don't return *any* value, whilst functions are defined as subprograms, that return a value of a *specified* data type.#footnote([Languages such as Python do not require such precision in subprogram declaration mitigating the difference between functions and procedures. However, most other languages require procedures to be declared with the *void* keyword to specify they don't return a value.])
]
=== Pronouncable names
#underline([_Explanation:_])\
- Using abreviated words that are pronunciable and easy to make sense of
#underline([_Example:_])
```cpp
int getCurrDate() {
  // Get date
}
bool thisIsAVar = true; // variable = var
int currDate = getCurrDate(); // current = curr
```
\
#underline([_Pros/Cons:_])
#components.pro-con(
  pros: [
    - Drastically shortens variable names
  ],
  cons: [
    - Not all abbreviations will make sense to everyone
    - Not using standard english can make understanding code harder
    - Text autocompletion in IDEs means that long names aren't a problem to type.
  ]
)
=== Unit classification
#underline([_Explanation:_])\
- Suffixing all variable names (where applicable) with a unit (e.g. rpm, lbs, kgs etc.)
- Using an underscore to seperate units
- Best used with snake\_case
#underline([_Example:_])
```cpp
int getMotorSpeed() { // Don't need unit classification for subprograms
  // Get RPM
}
int motorSpeed_rpm = getMotorSpeed(); // suffixed with '_rpm'
```
#underline([_Pros/Cons:_])
#components.pro-con(
  pros: [
    - Units are always known
    - Conversions can be easier because input/output is documented in the name
  ],
  cons: [
    - Takes longer to document all variables' types
    - Increases variable length #footnote("It doesn't increase it by much and also text autocompletion is still a thing")
  ]
)
== Using Subprograms and Classes
- Subprograms are smaller blocks of code that can be run anywhere in user code
- Classes are structures that allow for variables to be 'owned' and can drastically help organisation#footnote([We may do a deep dive on classes at a later point])
#components.pro-con(
  pros: [
    - Organised and readable code
    - Code can be run multiple times using less lines
    - Classes allow for even further organisation
    - Classes can help mitigate developer mistakes
  ],
  cons: [
    - Classes can take time to write
    - Variables defined in different files can lead to null pointers during initialising#footnote([Basically, the C++ compiler does not have a specified order for intialising variables in different files, meaning if 1 variable depends on an unititialised variable (from another file) it can throw a memory error])
  ]
)

== Version Control
An equally important issue for programming as a discipline is Version Control. This is important because it allows multiple people to work in parallel on the project from anywhere to develop one feature or several and then merge changes into one main branch of the project. In addition, Version Control softwares allow developers to mess with experimental changes without the fear of ruining the project, and it also acts as safety net incase a changeset that enters the main branch ends up breaking the project, since it can easily be rolled back to a stable build. Another advantage of Version Control is that it allows for new and old code to compared for performance over whatever parameters we test - allowing us to easily prove if our new solution is an improvement.

=== Examples of Version Control Software
There are many different Version Control Software. For this logbook, we are using GitHub - which is built off Git, since it has direct support for Typst and Notebookinator. Other examples include:
- Beanstalk
- PerForce
- Apache Subversion
- Mercurial

== Program Structure
As well as using subprograms and classes for organisation, the usage of libraries and splitting the code up into different files helps keep the software for the robot structured and helps prevent accidental changes when working on different parts of the code. Our experience from last year taught us that its best practise to have the code for driver control, match autonomous and autonomous skills on seperate files. In last years game OU this principal was taken further since we had different routes for our left and right side autonomous for matches.\
//Last year, for autonomous control we ended the season learning how to use PROS alongside the Okapalib and later LemLib libraries. We are planning to use this again this season.
#components.admonition(type: "warning")[
  Global variables have to be initialised in 1 file to avoid Null Pointer Exceptions since the C++ compiler doesn’t specify initialisation order.
]

== Safe Programming
When working in medium level languages such as C++, the necessity for optimising your code and ensuring you handle computer memory and pointers properly increases. Failing to do so effectively, will cause crashes and problems on your machine and at a large scale can even throw the world into #link("https://www.sonarsource.com/blog/what-code-issues-caused-the-crowdstrike-outage/")[disarray].\
If we use C++ again this year, we must make sure to initialize variables in the right order and ensure we handle memories and pointers properly. General things we can do ensure this are: using smart pointers, using tools such as static analyser; and finally using STL containers.
=== Smart Pointers
These help reduce the amount of manual memory management. The Microsoft #link("https://learn.microsoft.com/en-us/cpp/cpp/smart-pointers-modern-cpp?view=msvc-170")[documentation] states that they are #highlight(fill: silver)[crucial to the RAII or Resource Acquisition Is Initialization programming idiom.] The basic premise of RAII is to ensure finite resources are not wasted and so must control their usage and destroyed once its no longer useful - ie when a variable goes out of scope. The usage of Smart Pointers greatly reduces the chance of bugs and memory leaks since memory is automatically deallocated when the resource is no longer used.\
Below is a comparison of a raw pointer vs smart pointers.
```cpp
void UseRawPointer()
{
    // Using a raw pointer -- not recommended.
    Song* pSong = new Song(L"Nothing on You", L"Bruno Mars"); 

    // Use pSong...

    // Don't forget to delete!
    delete pSong;   
}

void UseSmartPointer()
{
    // Declare a smart pointer on stack and pass it the raw pointer.
    unique_ptr<Song> song2(new Song(L"Nothing on You", L"Bruno Mars"));

    // Use song2...
    wstring s = song2->duration_;
    //...

} // song2 is deleted automatically here.
```
#components.admonition(type: "note")[
  For the majority of C++ programming, smart pointers aren't necessary to manage especially within the context of VEX programming.
]
