#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Problems Presented at JWS",
  type: "identify",
  author: "Jonah Fitchew, Daniel Dew",
  witness: "Thomas Robb",
  date: datetime(year: 2024, month: 9, day: 30),
)

<<<<<<< Updated upstream
After a succesful competition at the JWS regional there is much to reflect on about the performance of our robot, as we now have true match data showing how we can perform in a competition environment.
= Improvements:
=======


After a succesful competition at the JWS regional there is much to reflect on about the performance of our robot, as we now have true match data showing how we can perform in a competition environment,
= What needs improving?
>>>>>>> Stashed changes
Although we were among the top contenders in terms of competition at JWS, forming the first seeded alliance, and making it to semifinals through some arduous matches, it is clear that we need to improve in some of the aspects of our robot.

== The intake:
In the first iteration of our robot, we used a flex wheel intake with three separate flex wheels driven by a direct 600 RPM motor cartridge at 11W. Due to the limited number of flex wheels available, this intake mechanism did not provide a strong enough grip on the ring to achieve the desired intake performance. During matches, we noticed that the intake often struggled to pick up rings unless they were pressed against the wall, as shown below:

#figure( [#image("./jws_imgs/ringagainstwall.png", height: 150pt)], caption: [Ring pressed against the field barrier, allowing smooth transition due to force applied against the intake rollers] )

Our goal is to intake rings without needing to drive over them, which will improve the consistency of autonomous routines and provide smoother gameplay by eliminating the pauses caused by the inconsistencies of the first iteration.

== Scoring mechanism:
For JWS, we used a 'hook' design to transport rings up a chain pathway and pivot them at high speed onto the mobile goal, effectively addressing the challenge posed by the flange at the top of the goal. However, this design had limitations in terms of speed. To maintain scoring consistency, we had to run the chain relatively slowly, which led to long cycle times. The downside is that spending extended time on each mobile goal and ring gives our opponents the opportunity to secure the positive corner. One lesson we took from JWS is that once both corners are lost, recovery becomes very difficult.

==  Mogo Mech:
In iteration 1 of our robot, we used a simple diagonal clamp to secure mobile goals. While this approach was lightweight and straightforward, it wasn't very secure and added unwanted compression to certain parts of the drive, particularly the braces. When the mobile goal mechanism was activated, it caused a squeezing effect between the drivetrain's two piston contact points, which negatively impacted bracing; ideally, we want all components to maintain right angles, with no bends in the C-channels. We also experienced one instance where the mechanism was stolen, which was less than ideal and ultimately cost us a match.

== Drivetrain: 
Iteration 1 featured a 450 RPM, 2.75-inch, 8-wheeled drivetrain that performed reliably throughout the competition, leaving no areas for improvement. The hot-swappable motors enabled us to cool the drivetrain quickly and efficiently, while the 450 RPM allowed us to be the fastest on the field most of the time. Our bracing ensured the drive remained stable and frictionless, even under intense stress. We plan to continue with this drivetrain in future iterations.

= In conclusion:
The elements of our robot with serious flaws / needing improvement are:
- Intake (grip on ring is weak and exterior forces are required for consistency)
- Scoring mechanism (slow and inconsistent leading to slow cycle times and mis-scoring)
- Mogo Mech (easy to steal from, flimsy and bent parts of the drivetrain)

= Decision to rebuild:
After analysing each part of our robot that required improvement it is obvious what the next step for our robot's development is: a rebuild of all mechanisms *apart from* the drivetrain. This will allow us to move forward into competitions with a higher chance of winning and securing a place in nationals. Our rebuild will involve improved versions of all of the above.

= Leading the team/rebuild (Daniel Dew):
With such a tight timeline, as we must be ready for the Coventry Regionals, it is extremely important that we maintain high standards, therefore team management must be used effectively to achieve maximum results.
== Keeping On Top of Tasks
With a rebuild, comes many different aspects to keep on top of on including:
- CADing the new iteration
- Building the new iteration
- Logging/notebooking on changes
- Programming -- suitable code, auton routines etc
- Driver Practice -- including skills
To manage this huge new influx, we will be heavily using Trello, the task management software mentioned before: we can label each new task with a new label, indicating the new iteration, urgent tasks can also be labeled -- and as always the type of task is indicated (example below).
#figure(image("./post-jws-imgs/task-labels.png", height: 50pt), caption: [A notebook task labeled as urgent and a part of 'Iteration 2.0'])
== Planning the Rebuild -- Time
Another huge aspect of managing the team through a rebuild is time management, below I have outlined (in a Gantt Chart) the timeline of this new design cycle.
#gantt-chart(
  start: datetime(year: 2024, month: 09, day: 28),
  end: datetime(year: 2024, month: 11, day: 16),
  date-interval: 7,
  date-format: "[day]/[month]",
  tasks: (
    ("Logbook", (0, 8)),
    ("CAD", (0, 2)),
    ("Build", (1, 5)),
    ("Program", (2, 6)),
    ("Autons", (6, 8)),
    ("Practice", (7, 8)),
  )
)
#admonition(type: "note")[
  #set text(size: 8.75pt)
  == Notes on Gantt Chart
  - Logbook
    - Logbook is done throughout, and kept up to date based on developments
  - CAD
    - CAD for base features aimed to be finished by 05/10
    - Complex system CAD aimed to be finished by 12/10
    - Building of core features can overlap with CADing of complex features
  - Build
    - Marked timings is for newer or more complex features, therefore simple changes (< 2hrs work) can be done whenever
    - Overlap with CAD as mentioned above
  - Programming:
    - Programming can be developed as building requires (e.g, new feature built, feature is then implemented in program)
    - Supplementry features can be developed whenever
  - Autons
    - Tuning of control system parameters must not take place until robot is >90% finished, to avoid weight changes affecting control systems.
    - We must aim for at least 2 match autons (different sides) and a programming skills route.
  - Practice
    - Drills, friendly matches, and familiarisation.
]