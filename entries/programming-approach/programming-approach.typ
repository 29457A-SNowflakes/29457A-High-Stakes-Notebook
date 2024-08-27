#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "High Stakes Programming Approach",
  type: "brainstorm",
  author: "Daniel Dew",
  witness: "Daniel daSilva",
  date: datetime(year: 2024, month: 8, day: 19),
)

= What is a Programming 'Approach'
When tackling any project thorough planning and thought is required to allow the team to effectively solve it. Defining a standard approach to certain aspects of the challenge can allow certain beneficial procedures to become instinctual, therefore allowing the team to become more efficient.\
This is especially prominent when looking at programming, code on large projects can become completely unorginised and hard to read -- which is particularly disastrous if you are in a team (where some or most of the members might not intuitively understand the programming language itself).
== Common Approaches To Programming
Some aspects of conde are typically defined by some form of rule or guideline, examples include:
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
One of the most important descisions to make is the programming langauge and its accompanying software and libraries. For robotics, the two most common langauges are C++, Python and now, Rust which is making an appearance with #link("https://github.com/vexide/vexide", [vexide])#footnote([An open source Rust runtime for v5 robots]), but the sofware used alongside it is also very important.
=== Python with VEXCode V5 or RoboMesh Studio:
- The only current way to code with python is using VEXCode V5 or RoboMesh Studio
#components.pro-con(
  pros: [
    - Python is exceptionally easy, with variable type decleration and readable syntax
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
Most languages (c++ included) require variables to adhere to certain rules:
- Must not start with a digit
- Only alphanumeric values or underscores
- No spaces/whitespaces
- No isolated keywords (e.g. 'if', 'for', 'import' etc.)#footnote([Dependant on language])
=== Common types of variable naming:
- camelCase:
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
    - Some programs reckognise camelCase, allowing them to display variables with whitespaces
    - Satisfying variable 'shape'
  ],
  cons: [
    - Variable names can become long
    - Some words can look confusing e.g 'A' in 'thisIsAVariable' ('A' can be hard to see)
  ]
)\
- Snake Case
#underline([_Explanation:_])\
- Using underlinging to represent whitespace
- Words typically start with lowercase
#underline([_Example:_])
```cpp
int date_now() {
  // Get date
}
bool this_is_a_variable = true;
int current_date = date_now();
```
\
\
\
\
\
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
)\
- Boolean 'is' naming
#underline([_Explanation:_])\
- Start all booleans with 'is'
- Oftentimes subprograms that return booleans start with 'get' ('getIs...')
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
    - Easy to differentiate 
  ],
  cons: [
    - Variable names can get very long
    - Somewhat difficult to program with due to frequent use of '\_'
  ]
)\
- Pronouncable names
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
\
\
\
#underline([_Pros/Cons:_])
#components.pro-con(
  pros: [
    - Drastically shortens variable names
  ],
  cons: [
    - Not all abbreviations will make sense to everyone
    - Not using standard english can make documentation harder
  ]
)\
- Unit classification
#underline([_Explanation:_])\
- Suffixing all variable names (where applicable) with a unit (e.g. rpm, lbs, kgs etc.)
- Using an underscore to seperate unit
- Best used with snake case
#underline([_Example:_])
```cpp
int getMotorSpeed() { // Dont need unit classification for subprograms
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
    - Increases variable length
  ]
)\
== Using Subprograms and Classes
- Subprograms are smaller blocks of code that can be run anywhere in user code
- Classes are structures that allow for variables to be 'owned' and can drastically help orginisation#footnote([We may do a deep dive on classes at a later point])

#components.pro-con(
  pros: [
    - Originised and readable code
    - Code can be run multiple times using less lines
    - Classes allow for even further orginisation
    - Classes can help mitigate developer mistakes
  ],
  cons: [
    - Classes can take time to write
    - Variables defined in different files can lead to null pointers during initializing#footnote([Basically, the c++ compiler does not have a specified order to intiializing variables in different files, meaning if 1 variable depends on an unititialized variable (from another file) it can throw a memory error])
  ]
)
//maybe for decide
=== Our variable naming approach\*
While variable naming conventions seem inconsequential, it is still important to decide on one and stick to it 


