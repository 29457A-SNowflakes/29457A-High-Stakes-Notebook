#import "/packages.typ": *
#import components: *

#let label(label: "", size: 0.7em) = {
  let data = entry-type-metadata.at(label)
  let colored-image = utils.change-icon-color(raw-icon: data.icon, fill: white)

  box(fill: data.color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #image.decode(colored-image, height: size)
  ]
}

#show: create-frontmatter-entry.with(
  title: "The Snowflakes' Enginnering Ethos"
)
#set quote(block: true)
= Our Engineering Ethos
\
At its core, VEX Robotics is nothing but an engineering problem. It provides a goal, and the materials to get there. We believe that the key to success in Robotics intrinsicly lies in how you approach each problem; with open-mindness and the willingness to learn but most importantly the deterination to find the best solution possible.
#quote(attribution: [Henry Gordon Stott])[
  Engineering: The art of organizing and directing men, and of controlling the forces and materials of nature for the benefit of the human race.
]
= Our Engineering Design Process
\
For every new problem, we try to stick to an engineering method (similar to a scientific method) where different phases are used to maintain organisation. The process applies to all forms of design, including programming and sometimes even tactics.
== Phases of Design
For each of the phases in our EDP, a corresponding icon is provided, these are used throughout the notebook to label a phase.
\
#grid(columns: (6.5em, auto), gutter: 20pt,
[#label(label:"identify", size:6.5em)], [
  *Identify Problem*#footnote([Sometimes, if the problem is obvious (i.e. the need for a drivetrain), this phase is skipped due to mutual understanding.])\
  Each solution starts with a problem, this ranges drastically -- for example, from 'We need a drivetrain' to 'this mechanism causes instability'. Problems can be raised by all members and, regardless of severity, it is something that must at least be addressed.
],
[#label(label:"brainstorm", size: 6.5em)], [
  *Brainstorm Solutions*
  \
  Once the problem has been properly analysed, with root causes found, the team can move on to brainstorming solutions. Here, every team member can put forward possible solutions or fixes to the problem at hand, this is often accompanied with rough concept drawings. Additionally, finding use cases where each possible solution has been used effectively can be key to display a solution's viability.
],
[#label(label: "decide", size:6.5em)], [
  *Decide Solution*
  \
  Once all possible solution have been brought to the table, one possible solution is picked to move to the next phase; to ensure that the decision is definitely the best one available, additional proceses can be used to decide the best (i.e. decision matrices). Ideally, all members offer their thoughts on the solutions.
],
[
  #align(center)[
    #stack(dir: ttb, spacing: 10pt,
      [#label(label: "build", size: 3.25em)],
      [#label(label: "program", size: 3.25em)]
    )
  ]
], [
  *Implement Solution*
  \
  With one solution in mind, the solution can be expanded, now taking into account the smaller details while creating a plan of action for the designing and implementation of the solution. The solution is then designed and built -- either physically or as a program.\
  Note that both the build and program icons are used during this phase.
], 
[
  #align(horizon)[
    #label(label: "test", size:6.5em)
  ]
], [ 
  *Test Solution*
  \
  Once the solution has been implemented onto the robot, we can begin testing the solution to find out how effective it is. This is a key phase as it shows us how the solution up to different scenarios.\
  Depending on its effectiveness, the results of a test may prompt us to move back into the implement phase, as changes sometimes have to be made. This creates a feedback loop that iteratively improves the solution until it meets our desired standards.
])
For our robot, we decompose the larger problem into a set of smaller, approachable problems. From there, each and every problem is approached using this EDP; this allows us to stay organised and avoid decision paralysis.