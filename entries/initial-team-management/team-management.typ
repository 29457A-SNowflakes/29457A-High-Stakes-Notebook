#import "/packages.typ": *
#import components: *

#show: create-body-entry.with(
  title: "Managing the Team",
  type: "management",
  date: datetime(year: 2024, month: 08, day: 02),
  author: "Daniel Dew",
  witness: "Daniel DaSilva"
)
= Teamwork Wins Championships
To ensure that we achieve our maximum, we must organise ourselves into a team that works hard to solve the problems presented to us. We can do this by sorting ourselves by roles and skillsets.
#set quote(block: true)
#admonition(type: "quote", [
  #quote(attribution: [Michael Jordan])[Talent wins games. Teamwork wins championships.]\
])
= Goals & Objectives
Before we begin to design and build a robot for High Stakes, we must first define clear goals of what we _as a team_ want to achieve. This will allow all members to work towards common objectives.\
== Our Goals For High Stakes
- A Force To Be Reckoned With
  - We want to become a team that is competitive and 'formidable on the field'
  - We can quantify this goal mostly by how high we place in qualifiers -- we want to aim for top 5 seed in most competitions
- Nationals
  - We also would like to qualify for the UK National Championship
  - We achieved this goal last season so would love to get this oppurtunity again.
- Worlds/Internationals
  - This is a very difficult goal to achieve, with only \~5 spaces from the UK
  - We were also good enough to get this oppurtunity last season, with us going to the 2024 World Championships in Dallas
= Organizing Ourselves
== Roles
We can first organize ourseles by our skillsets; we can do this by asigning roles#footnote([Roles can also be seen in the _Team Introduction_ pages]):
- Head Tactics: Thomas Robb
- Programming Support & Notebook: Daniel daSilva
- Head Programmer & Driver: Daniel Dew,
- Co-Head Builder: Aubert Seysses
- Co-Head Builder: Jonah Fitchew
Orginising ourselves like this ensures that when a problem arises, we all know how to approach the challenge with our unique skillsets; it can also be helpful when introducing the team, as it helps judges and peers understand what we do within the team.
//* team leader? 
== Project Assignments & To-Dos
Throughout the season, there will be lots to do over various projects -- from designing a new robot (or subsystem), to writing a couple lines of code. To manage all these tasks, we will generally asign a project or to-do to a few members -- using the roles as guidelines (e.g. buidling tasks asigned to builders, programming to programmers etc.); progress on said tasks will be discussed in in-person meatings#footnote([Due to holdays, no in-person meetings have happened yet -- our first full in-person meeting is scheduled for 03/09/24]), or using our channels of online communication.
=== Trello
#link("https://trello.com/")[Trello] is a project management software that allows teams to create dynamic to-do lists. 'Cards' can be dragged into different columns to display their state (e.g. 'todo', 'Working on' or 'completed'), we can asign members to certain tasks, give them deadlines, or add a checklist for each. We found it to be exceptionally useful last season, and we plan on using it for this season.
#figure([#image("./trello.png")], caption: [An example of a trello todo list])
== Discord & Online Communication
#grid(columns: 2, gutter: 20pt, [
  As a less formal method of communication, we use both Discord and Whatsapp to discuss team objectives and progress. Discord is especially helpful as it helps us to orginise our chats into channels (see right). Another useful application to discord is sharing files and resources amongst ourselves -- for example we can share small code changes on the discord for testing.
], [
  #image("./discord.png", height: 150pt, width: 50pt, fit: "stretch")
])
== Early Season Projects
We have a list of goals we want to acomplish for early season:
- Orginised notebook
- Designed and built drivetrain
- Designed and built subsystem for mogo manipulation
- Designed and built subsystem for ring manipulation
- Substantial ammount of driver practice
- Reliable and semi-complex autonomous routines
#gantt-chart(
  start: datetime(year:2024, month:08, day:01),
  end: datetime(year:2024, month: 09, day:28),
  date-interval: 7,
  date-format: "[day]/[month]",
  tasks: (
    ("Originised Start to Notebook", (0, 1)),
    ("Designed and built drivetrain", (0,2)),
    ("Subsystem for mogo manipulation", (1,3)),
    ("Subsystem for rign manipulation", (2, 5)),
    ("Driver Practice", (5,9)),
    ("Autonomous routines", (5,9)),
  )
)

