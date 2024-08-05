#import "/packages.typ": *
#import components: *

// The show rule passes all content in this file into the `create-body-entry` function.
// This just means that we don't need an extra level of indentation when writing this entry.
#show: create-body-entry.with(
  title: "Team Introduction",
  type: "management",
  date: datetime(year: 2024, month: 1, day: 1),
)


#grid(columns: 2, gutter: 20pt, [#image("./Design Team Photo.jpg", height: 200pt)],[
  We are the St Chris Snowflakes; we started out as a VRC team in september 2023, in our first season as a team in 'Over Under'. We set out to do our very best and we quickly found that we all loved the challenge of VEX and wanted to excell as far as we could; after a struggle, we qualified for UK nationals and siezed the oppurtunity to become the best we could. Our hard work payed off, and we went home with design award and a spot in the VEX World Championships; where we went in April and gained key experience to start this season.
])
TBC