#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "Brainstorming Mogo Mech",
  type: "brainstorm",
  author: "Daniel da Silva",
  witness: "Daniel Dew",
  date: datetime(year: 2024, month: 9, day: 8),
)

= Piston Based Clamping
The two most common ways to clamp things in VEX is by either using pistons or motors. We will start by looking at piston based clamping.
In general, piston based clamping works using a lever applying effort to one side to support a load on the other. Below is a basic concept sketched in photoshop.
#image("./imgs/Piston Mech.png", height: 160pt)
Looking at clamp designs for mobile goals, we came across two designs, which shared various similarities. The first design comes from #link("https://www.youtube.com/watch?v=VgsfGvBJ9-M")[\@\6047OSSemicolon] for the game Tipping Point, a game which also features mogos with a similar design. The premise of the design uses a piece of laser cut polycarb, two pistons and two rubber tips to pin the goal to the side of the bot. Notably, HS mogos don't have wide walls and are instead much flatter. However, the concept of this design could be reworked for a High Stakes bot.
#figure([#image("./imgs/60470S 2PistonMogoClamp.png", height: 160pt)], caption: [#link("https://youtu.be/VgsfGvBJ9-M?si=yAXni2Bso6gRonmv")[60470S] mogo mech])

An example of a mech from this years game is this prototype by 23851A, which uses two pieces of C-Channel and some standoffs to align and angle the mogo. The actual clamp is made up of two cut C-Channels attached together with a gusset. Similarly it uses two pistons, which when extended causes it to pivot and clamp down on the mogo base.
#figure([#image("./imgs/23851AHSMogoClamp.png", height: 160pt)], caption: [#link("https://youtu.be/YkzFfF5XOf0?si=igOk2EMoZ8Ki6pU8")[23851A] mogo mech])

Here's a list of advantages and disadvantages for a piston based solution.
#components.pro-con(
  pros: [
    - Fast extention time
    - Doesn't contribute to power budget
    - No burn out
    - Better gripping
    - Lighter mechanism
  ],
  cons: [
    - Has much more limited actuations than motor based solution
    - Pneumatic tanks have to be filled before each match
  ]
)

= Motor based clamping
An alternative to piston clamping is using motors as a power source. Motor based clamps generally work by using motors as a pivot. Below is a sketched example of how such a thing could work.
#image("./imgs/Motor Mech.png", height: 210pt)
Looking around for inspiration, the best design we came across was made by #link("https://youtu.be/Iv8quYM1e0I?si=kHQa8mAEoSHal0jZ")[\@\22204V] for Tipping Point, which uses a single motor with rubber bands to tension it, giving the design passive retraction and active extension. However, this design acts more like a scoop than a clamp relying on supporting the clamp from below and the sides rather than pinning it to the side.
#figure([#image("./imgs/22204V.png", height: 160pt)], caption: [
  Example from the video.
])

Here's a list of advantages and disadvantages for a motor based solution.
#components.pro-con(
  pros: [
    - More actuations than piston based solution
    - Doesn’t use up PSI from pneumatic tanks
  ],
  cons: [
    - Slower extention time
    - Uses 5.5W/11W from power budget
    - Motor burn out
    - Weaker gripping
    - Potentially heavier
  ]
)