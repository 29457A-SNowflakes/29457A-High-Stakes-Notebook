#import "/packages.typ": *
#import components: *

#show: create-frontmatter-entry.with(
  title: "Using This Notebook"
)
= About this Notebook
\
== TL;DR
For this season, we decided to deviate from the standard process for making engineering notebooks. We decided that, with the loss of our main logbooker we would have to share the notebooking duties; this meant that formatting could become inconsistent and we immediatly found that it took too long to format everything to the desired (exceptional) standard.
Therefore, to cut down on time and improve the notebook's readability and functionality, we decided to adopt a modded version of the _Notebookinator_ template, which is an extension of the _typst_ markup language.
== Why Typst?
Several ways of creating notebooks for VEX exist, with most adopting visual editors such as google slides or hand writing their notebooks.\
When deciding what we wanted to use for this season, we quickly ruled out hand writing the notebooks as mistakes could take valuable time to correct; neatness and clarity is often sacrificed; and the need for online collaboration is great. We previously used google slides with good results, however the formatting (e.g. colour coding, table of contents etc.) takes a significant ammount of time to maintain and can be very difficult to keep consistent when we all share equal role in notebook creation (as opposed to 1 person overseeing all notebook formatting).\
We then landed on the possibility of using a markup language; and with the lack of flexibility from LaTex, Typst seemed like the best option. We had also noted a few teams success with using Typst, especially when using Notebookinator alongside it - for example team 53E (also the creators of Notebookinator) had a great Over Under notebook#footnote([#link("https://github.com/Area-53-Robotics/53E-Notebook-Over-Under-2023-2024")[Link to notebook]]) using Typst.
== Features
- Uniform formatting
- Notebookinator template
  - Easy cohesion with engineering design process
  - Built in components i.e. pros/cons tables
- Code blocks
- Built in table of contents
- Fully Digital
  - Neatness
  - Modern tooling
  - Easy submission
  - Cohesion with version control