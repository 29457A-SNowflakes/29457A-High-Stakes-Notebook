#import "/packages.typ": *
#import components: *


#show: create-body-entry.with(
  title: "High Stakes Programming Approach",
  type: "decide",
  author: "Daniel Dew",
  witness: "Daniel da Silva",
  date: datetime(year: 2024, month: 8, day: 11),
)


= A Quantitative Approach:
While we typically use quantitative methods for deciding aspects of our robot, such as the drivetrain (for example using decision matrices); we will avoid using such methods when deciding our programming approach. While we believe taking care, when picking a programming approach is _very_ important, much of it is still personal preference and can be decided by simply evaluating what fits us best.
= Deciding Our Programming Approach
Here we will display the choices we made on the different aspects of the programming approach and some explanation as to why.
== Language and Software
#admonition(type: "decision", [
  We ultimately decided to code in C++ using PROS
])
There were many factors involved with this, but experience played a big part in us choosing this: we used Python with VEXCode for the majority of last year, but we found it was very limiting, with the lack of multiple file support and library support. We also used PROS/C++ last year for nationals and worlds, and we found it to be very reliable, even if we didn't utilise the libraries available to the fullest.\
Our team leader, Daniel Dew, did a significant amount of research on Rust with vexide, talking to the main developers about the state of the project. From his conversations, we found that while it seemed like a very interesting project, there was not currently enough surrounding support and documentation necessary to justify switching to the less familiar language: Rust.
== Variable Naming
#admonition(type: "decision", [
  We decided to use the following variable naming conventions:
  - camelCase
  - 'is' boolean variable naming
  - Pronounceable names
])
//I think this section directly conflicts what we established in brainstorm -> needs to be spun so it isn't
Variable naming is mostly inconsequential, so we chose what we were most familiar with. It is important to stick with this, as collaborative programming is much easier when the conventions are stuck to.\
Arguments can be made to say that stricter rules must be followed, for example this #link("https://youtu.be/-J3wNP6u5YU?si=T4dFzww_gmp-wbJH")[video] states why long variable names dont matter, and that unit classification is important. However, in VEX, code changes are often made in a hurry, and its easier to focus on a few instinctual rules than to have strict ones that force the programmer to pour over the code after rushed changes are made to fix formatting -- we are also unlikely to go above 1-2 people making changes to the code, so punctuality matters less.//punctuality isn't the word here
== Version Control
As programmers get more experienced, it becomes more and more apparent that version control is a *must have*; as projects become exponentially more complex, the appearance of bugs in code becomes a question of when rather than if. Therefore, the ability to revert code into a stable state is essential.
#admonition(type: "decision", [
  We decided to use the most common form of version control: Git
])
Git (using #link("https://github.com")[GitHub]) allows us to easily collaborate and use code accross multiple devices, with branching functionality and the ability to manage multiple projects as an organisation#footnote([Our organisation: #link("https://github.com/29457A-SNowflakes")]).
#admonition(type: "note", [
  Small changes that we need to implement on another device can be shared in a discord channel, to avoid cluttering the version control.
])
#figure([#image("./codesnippets.png", height: 80pt)], caption: [
  Small changes are shared in our "code snippets" channel.
])
== Other approaches:
These are approaches that don't require decisions (you either use them or you don't)
- Subprograms and classes will be used where applicable#footnote([Classes, in the context of VEX can become more of a nuisance than an aid, so they must be used sparingly])
- We will prioritise using multiple files to aid with organisation
- We will adhere to general safe programming rules, especially avoiding unititialised variables, as the compiler doesn’t catch them and these issues can be extremely difficult to debug.
= Sticking to the Rules
With all these 'rules' it may seem like it will be impossible to follow these in practise. However, we can implement procedures to help aid this process. We have taken inspiration from how many companies maintain their huge codebases.
#admonition(type: "example", [
  All of Meta's code (including Instagram, Facebook, Meta VR etc.) is all kept on the same Git codebase, meaning Zuckerburg's original Facebook code is available to _all_ meta developers
])
- Before commiting to the Git, we will make sure that all code follows the formatting rules
- If code changes have to be made in a rush -- for example during a competition -- commits to the Git will be flagged as bad code (often using the 💩 emoji#footnote([This is actually an industry standard flag for bad code])), and will be formatted at a later date.
