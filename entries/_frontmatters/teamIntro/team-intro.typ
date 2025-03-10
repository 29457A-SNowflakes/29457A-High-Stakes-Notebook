#import "/packages.typ": *
#import components: *

// The show rule passes all content in this file into the `create-body-entry` function.
// This just means that we don't need an extra level of indentation when writing this entry.
#show: create-frontmatter-entry.with(
  title: "Team Introduction"
)
#set text(size: 10pt)
= Who are the Snowflakes?
#grid(columns: 2, gutter: 20pt, [#image("./Design Team Photo.jpg", height: 200pt)],[
  We are the St Chris Snowflakes; we started out as a VRC team in September 2023, in our first season as a team in 'Over Under'. We set out to do our very best and we quickly found that we all loved the challenge of VEX and wanted to excel as far as we could; after a struggle, we qualified for UK nationals and siezed the oppurtunity to become the best we could. Our hard work payed off, and we went home with design award and a spot in the VEX World Championships; where we went in April and gained key experience to start this season.
], [
  Off of the back of Over Under we have acquired some very important skills necessary for competitive representation on both a national and global scale such as good building and coding practices which we hope to utilise in order to become even more competitive in all aspects of the V5RC competition where we weren’t last year. We are also moving to a smaller team size as some of our members are moving on. This will mean we may have to work harder but also means a larger range of experience in other areas.
], [#image("./Worlds bot 23.png")], [#image("./Jonah design.png", height: 200pt)], [#image("./old bot.png", height: 200pt)])
= The members

#grid(
columns: 2, gutter: 20pt,
[#image("./members/Dew.png")], [#image("./members/DaSilva.png")],
[
  Daniel Dew
  - Captain
  - CAD Designer
  - Head Programmer
  - Driver
  My role within the team primarily resides in the programming of the robot's code including autonomous and driver control. I also aid with the design and CAD phases of building. I am also the primary driver.
],
[
  Daniel da Silva
  - Programmer
  - Primary Notebooker
  Hi I’m Daniel da Silva and my role within the team is to support the development of the robot’s software and to help organise it into the logbook.
],
[#image("./members/Jonah.png")], [#image("./members/Aubert.png")],
[
  Jonah Fitchew
  - Co-Head Builder
  - Reserve Driveteam
  Hello I am Jonah Fitchew and my role within the team is the physical construction of the robot, documentation and assisting the driver during matches.
],
[
  Aubert Seysess
  - Co-Head Builder
  - CAD Designer
  - Driveteam
  - Head Chef
  Hello I am Aubert Seysses and my role within the team is to  help design and virtually CAD the robot, also, I aid with the physical construction of the robot.
],
[#image("./members/Thomas.png", height: 20%)], [
  Thomas Robb
  - Head Tactics
  - Driveteam
  - Mentor 
  My role within the team is to brainstorm tactics and communicate with the other members to ensure that designs and tactics align. During competitions I am also responsible for taking note of performances, both our's and other team's; to help find possible alliances.
]
)