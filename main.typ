#import "/packages.typ": *


// applies the template
// the show rule essentially passes the entire document into the `notebook` function. 




#show text: set text(font: "Avenir")
#show: notebook.with(
  team-name: "29457A",
  season: "High Stakes",
  year: "2024-2025",
  theme: radial-theme,
  cover: align(center+horizon)[
    TODO: TITLE PAGE
  ],
)
#include "./frontmatter.typ"

#include "./entries/entries.typ"

#include "./appendix.typ"
