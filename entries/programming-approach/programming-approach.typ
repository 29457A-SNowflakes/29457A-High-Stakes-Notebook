#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "High Stakes Programming Approach",
  type: "brainstorm",
  author: "Daniel Dew, Daniel da Silva",
  witness: "Daniel da Silva",
  date: datetime(year: 2024, month: 8, day: 19),
)

= What is a Programming 'Approach'
When tackling any project, thorough planning and thought is required to allow the team to effectively solve it. Defining a standard approach to certain aspects of the challenge can allow certain beneficial procedures to become instinctual, therefore allowing the team to become more efficient.\
This is especially prominent when looking at programming, code on large projects can become completely unorganised and hard to read -- which is particularly disastrous if you are in a team (where some or most of the members might not intuitively understand the programming language itself).
== Common Approaches To Programming
Some aspects of code are typically defined by some form of rule or guideline, examples include:
- Variable naming conventions
- Usage of subprograms or classes
- Choosing a language
- Version or project management
- Program structure
- Safe and secure programming
== TL;DR
Standardised programming -- through usage of the above -- helps to improve:
- Team communication
- Debugging
- Team/project management
- Readabilty of code
- Enjoyment of writing code
= Brainstorming Approaches
Here, we will define what approach(es) we will use when coding, aiming to improve useability, team communication and debugging capabilities.
== Language and Software
One of the most important decisions to make is the programming langauge and its accompanying software and libraries. For robotics, the two most common langauges are C++, Python and now, Rust which is making an appearance with #link("https://github.com/vexide/vexide", [vexide])#footnote([An open source Rust runtime for v5 robots]), but the software used alongside it is also very important.
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
    - No choice in editor, therefore no choice for extensions, themes, formatting etc.
  ]
)
== Variable Naming
Naming conventions are very useful when writing _and_ reading code. They can make long, complicated names easy to read; or can help clarify the intent or context around a variable.
=== Variable requirements:
Most languages (C++ included) require variables to adhere to certain rules:
- Must not start with a digit
- Only alphanumeric values or underscores
- No spaces/whitespaces
- No isolated keywords (e.g. 'if', 'for', 'import' etc.)#footnote([Dependant on language])
= Common types of variable naming:
== camelCase:
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
#underline([_Pros/Cons:_])
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
)\
\
\
\

== snake\_case
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
  The difficulty from frequently using '\_' can be circumvented by using a program such as Auto HotKey to rebind '\_' to something such as "Shift" + "Space". However, this work around may not be worth it for the express purpose of making a naming convention easier.
]
\

== Boolean 'is' naming
#underline([_Explanation:_])\
- Start all booleans with 'is'
- Often times subprograms that return booleans start with 'get' ('getIs...')
#underline([_Example:_])
```cpp
// (Using camelCase)
bool getIsSaturday() {
  // is it a saturday?
}
bool isSaturday = getIsSaturday();
```
\
\
\
\
\
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
== Pronouncable names
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
    - Not using standard english can make documentation and understanding code harder: text autocompletion in modern IDEs means that long names aren't a problem to type.
  ]
)\
== Unit classification
#underline([_Explanation:_])\
- Suffixing all variable names (where applicable) with a unit (e.g. rpm, lbs, kgs etc.)
- Using an underscore to seperate unit
- Best used with snake\_case
#underline([_Example:_])
```cpp
int getMotorSpeed() { // Dont need unit classification for subprograms
  // Get RPM
}
int motorSpeed_rpm = getMotorSpeed(); // suffixed with '_rpm'
```
\
\
#underline([_Pros/Cons:_])
#components.pro-con(
  pros: [
    - Units are always known
    - Conversions can be easier because input/output is documented in the name
  ],
  cons: [
    - Takes longer to document all variables' types
    - Increases variable length
  ]
)\
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
//maybe for decide
=== Our variable naming approach\*
While variable naming conventions seem inconsequential, it is still important to decide on one and stick to it, as it will keep code organised and therefore make debugging faster and easier. This means that our time as programmers can be used more effectively to solve other problems.

= Version Control
An equally important issue for programming as a discipline is Version Control. This is important because it allows multiple people to work in parallel on the project from anywhere to develop one feature or several and then merge changes into one main branch of the project. In addition, Version Control softwares allow developers to mess with experimental changes without the fear of ruining the project, and it also acts as safety net incase a changeset that enters the main branch ends up breaking the project, since it can easily be rolled back to a stable build. Another advantage of Version Control is that it allows for new and old code to compared for performance over whatever parameters we test - allowing us to easily prove if our new solution is an improvement.

== Examples of Version Control Software
There are many different Version Control Software. For this logbook, we are using GitHub - which is built off Git, since it has direct support for Typst and Notebookinator. Other examples include:
- Beanstalk
- PerForce
- Apache Subversion
- Mercurial

= Program Structure
As well as using subprograms and classes for organisation, the usage of libraries and splitting the code up into different files helps keep the software for the robot structured and helps prevent accidental changes when working on different parts of the code. Our experience from last year taught us that its best practise to have the code for driver control, match autonomous and autonomous skills on seperate files. In last years game OU this principal was taken further since we had different routes for our left and right side autonomous for matches.\
//Last year, for autonomous control we ended the season learning how to use PROS alongside the Okapalib and later LemLib libraries. We are planning to use this again this season.
#components.admonition(type: "warning")[
  Global variables have to be initialised in 1 file to avoid Null Pointer Exceptions since the C++ compiler doesn’t specify initialisation order.
]

= Safe Programming
When working in medium level languages such as C++, the necessity for optimising your code and ensuring you handle computer memory and pointers properly increases. Failing to do so effectively, will cause crashes and problems on your machine and at a large scale can even throw the world into #link("https://www.sonarsource.com/blog/what-code-issues-caused-the-crowdstrike-outage/")[disarray].\
If we use C++ again this year, we must make sure to initialize variables in the right order and ensure we handle memories and pointers properly. General things we can do ensure this are: using smart pointers, using tools such as static analyser; and finally using STL containers.
== Smart Pointers
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