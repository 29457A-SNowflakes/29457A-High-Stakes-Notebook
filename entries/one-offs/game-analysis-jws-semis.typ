#import "/packages.typ": *
#import components: *



#show: create-body-entry.with(
  title: "In Depth Analysis - JWS Semifinals",
  type: "test",
  author: "Thomas Robb",
  witness: "Daniel da Silva",
  date: datetime(year: 2024, month: 9, day: 16),
)
// thomas label sreenshots ong

= JWS analysis
Despite losing more than 1 game in this competition, I will only be focusing on, what I belive to be, the most strategically interesting and important game out of all the ones we played, which was our 1st Semifinal match, which ended in a double disqualification. I will be looking at what we, and all the other teams did, and, looking back on the game, what we, and our alliance partner, Entropy should have done differently, to avoid our disqualification, and to put us in a better position overall.

#admonition(type: "note", [
  == Note on team names
  When discussing teams on this entry, the names will be used; the following teams can be associated with the licence plate numbers:
  - Entropy: 17711E
  - Memento Mori: 15650C
  - Gearers: 10478S

  \* Also note that the term 'mogo' is used as replacement for mobile goal#footnote([See Glossary]).
]) 
= Semifinals 1-1 (Double disqualification)
== Autonomous
Since the auton is all pre-coded, there is little to no strategy that can be applied during the autonomous period, only what the next course of action should be based on the other teams positions.
#image("./jws_imgs/Screenshot 2025-01-02 153549.png", height: 210pt)
Here, you can see our robot has got "base control" of 2 mogos, having scored one red ring on both, which despite being 1 less scored ring than our auton is capapble of, it's still a good controlling start to the game. We can also see Entropy (our alliance member) controlling and possessing their own mobile goal with 1 red ring being scored. (All highlighted in red)

One of the teams on the opposing alliance, Memento Mori, managed to get an impressive 2 blue rings on their mogo, (highlighted in blue) while their fellow alliance member, Gearers, didn't have an auton, and subsequently didn't move off the starting line throughout the period. This meant that, at this point in the game, we have more control over the field, but as you will soon see, this will quickly change. 

== Driver Control

#image("./jws_imgs/Screenshot 2025-01-02 154422.png", height: 210pt)

As soon as the autonomous period ends, we (represented with the green line), move towards the positive corner, in order to gain the 2 red rings while our teamate, Entropy (purple), make their way towards the negative corner, in order to try gain their mobile goal back, as they temporarily dropped it, most likely trying to score the wall stake, before changing their mind.

Looking back at this moment, I believe that we both made mistakes, as we should have perhaps gone for the unguarded centre rings, since Gearers had no way to clear the corner, and therefore cannot place a mobile goal as per \<SC5>.
#image("./jws_imgs/sc5.png", height: 132.5pt)

In my opinion, Entropy should have never dropped their mobile goal, and, although we dont know if it was a mistake or purposeful, it is a flaw in our Alliances game strategy.

#image("./jws_imgs/Screenshot 2025-01-02 154606.png", height: 210pt)

After successfully filling up our mogo with 4 red rings, we decide to head to the blue alliance side, in order to gain more red rings. We encouter Memento Mori, and attempt to block them from getting to the corner. However, our robot was not robust enough at this stage, so we were unable to, and they unfortunately managed to clear, and place their mogo in the corner. Entropy were continuing to get more rings on their possessed mogo, but were unable to. At this point Gearers were also close to a full mogo, and we observe the clear corner next to them.

Reflecting on the game, we should have signalled to Entropy to defend the right postive corner, while we should have gone to the left postive corner, as we had a much fuller mogo than Entropy.

We also took note that we would need a more robust and stronger robot for future interactions like this, and this note was factored into our design proccess for our upcoming rebuild.

#image("./jws_imgs/Screenshot 2025-01-02 154633.png", height: 210pt)

Realising too late that Gearers were trying to place a goal in the postive corner, we quickly try to move in to stop them, whilst they continue to fully fill up their mogo. It is also important to note that Memento Mori were simultaneously clearing the other corner in order to score.

I believe that we played this part well given the postion we were in, as we pre-emptively saw Gearers trying to score, and attempted to stop it. In retrospect, my only criticism would be to give more callouts to Entropy, in order to hopefully get them down this end of the field, where the majority of scoring was about to happen.

#image("./jws_imgs/Screenshot 2025-01-02 154733.png", height: 210pt)

Memento Mori successfully manage to score their mogo in their corner, while Gearers manage to do the same.

In hindsight, we should have come to the corner a little earlier, and then we could have perhaps blocked Gearers, or possibly place our own mobile goal. Once again, we should have communicated to Entropy more, and had them come down to the positive end of the field.

#image("./jws_imgs/Screenshot 2025-01-02 154854.png", height: 210pt)

Entropy finally makes their way down to the positive corner, where they have accidentally scored a blue ring on their mobile goal, giving the Blue alliance more points on that goal, at 3-1. We try to push our goal into the corner with Memento Mori fail to do so due to a lack of traction and power.

At this point the blue alliance have a huge lead on us, with many more rings scored than us, the majority being doubled because of the positive corners. Ideally, we should have prevented this from ever happening, as this puts us in an incredibly difficult position, but now we just have to try and regain some control. Unfortunately, since neither of our robots can climb, it is impossible for us to win unless we manage to remove one of the Blue Alliances goals from the corners. In order to win, we have to play offensive.

#image("./jws_imgs/Screenshot 2025-01-02 154932.png", height: 210pt)

As Gearers robot is less robust, and easier to move, Entropy begins to try and push them out of the corner, in order to allow us to place the full mogo in the positive corner. However, we quickly realise that this doesn't work due to the angle Gearers were in at, which made them very difficult to move. We decide to pivot to try and remove Memento Mori from the corner, and, as Entropy has the stronger robot, we drop our mogo to allow them to score more points, while we try to fill up the 5th mobile goal, which has not been used during driver control at all.

I believe this was the correct move to make given the circumstances, and although we were in a tough situation, we perservered and came up with a good, potentially game winning strategy.

#image("./jws_imgs/Screenshot 2025-01-02 155023.png", height: 210pt)

Despite our good strategy, this is where it all goes wrong. As you can see from the picture above, Entropy is contacting 2 mobile goals: by possessing mogo 1 and plowing mogo 2 (as illustrated). This is a direct violation of \<SG6> and since they end up plowing this goal into a corner, it is egregious and clearly intentional, making it match affecting and therefore a major violation, resulting in disqualification.
#image("./jws_imgs/sg6.png", height: 110pt)

There is nothing we could have done in this situation, and it is ultimately Entropy's mistake, and, in their defence, it was an easy one to make, which unfortunately led us to being disqualified. Keep in mind we did not know for sure if we had been disqulified, as the referees may rule it differently so we continued to play at our best and the match was far from over.

#image("./jws_imgs/Screenshot 2025-01-02 155100.png", height: 210pt)

Entropy manages to place the mobile goal in the corner, and push Memento Mori's goal out of it. Memento Mori could not fight back, due to Entropy's positioning, and end up trying to score a wall stake instead. We make a last ditch effort to try and place our mobile goal in the corner which Gearers is currently protecting, but were unable to do so.

It is important to notice the time (20 seconds left), as per \<SG11>, positive corners were protected in the last 15 seconds. I think this was a brilliant play from our alliance, especially Entropy, who managed to turn the tides on this once unwinnable game, and possibly allow us to qualify to the finals.
#image("./jws_imgs/sg11.png", height: 110pt)

#image("./jws_imgs/Screenshot 2025-01-02 155140.png", height: 210pt)

As the time hit 15 seconds, we quickly move away from the corners - Entropy and Gearers doing the same, but Memento Mori continue to try and push their mobile goal into the corner, and manage to, and also push ours out. If this had only been a few seconds earlier, this would have been a game changing play. However, as you can clearly see from the image, this was done in the last 15 seconds, and this causes Memento Mori to be in direct violation of \<SG11>, causing them to recieve a major violation, and hence a disqualification.

This was an incredibly lucky moment for our alliance, as Memento Mori were under the impression that they were going to lose, however the score at this point was actually 22-18 to them, so if they didn't make this move, they still would have been winning. Furthermore, they had not realised that we were disqualified, and if they knew this, they would have most likely made less risky plays, and not caused themselves to be disqualified too.

#image("./jws_imgs/Screenshot 2025-01-02 155310.png", height: 210pt)

Knowing Memento Mori would most likely be disqualified, we played the rest of the game safely, with Entropy cleverly scoring a red ring on top of the blue one, causing the mogo's points to switch from 1-3 (red-blue) to 4-1. Since none of the robots could climb, and 3/5 mogos were placed in corners, Memento Mori and Gearers just tried to stop us from scoring anything, and towards the end of the game, Memento Mori tried to score a wall stake, but ran out of time.

With nothing more we could do, we decided to play safe (in case we weren't already disqualified), and try to score a few more rings in the last few seconds, but were blocked by Memento Mori and Gearers.

#image("./jws_imgs/Screenshot 2025-01-02 155336.png", height: 210pt)

This image marks the end of the game, and you can clearly see that Entropy managed to get one more ring on, as well as us being blocked by Gearers and Memento Mori.

= Conclusion
In summary, it is very difficult to get a strategically perfect game, as when you're actually on the field and playing its extremely stressful and fast paced. This is especially true for the driver, who is responsible for making tough, split-second decisions all the time, and that 1:30 driver control period isn't as much time as it seems.

 Saying this, I believe that no team played at their strategic best, very much including us, and from this match there were a lot of mistakes, as well as successes, btgo with strategy and robot design, that we can take away from this experience, in order to become a stronger ally and a more threatening opponent, as well as being more careful in our future competitions.