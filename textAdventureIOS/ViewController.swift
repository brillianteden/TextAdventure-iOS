//
//  ViewController.swift
//  textAdventureIOS
//
//  Created by Eden on 7/22/18.
//  Copyright © 2018 Eden Mugg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: - Our strings
    let End_Story = "Your journey has ended for now. The game has been reset and is ready for you to try again when you are ready."
    let End_Ans1 = "" // both buttons are hidden
    let End_Ans2 = ""
    
    let T1_Story = "You've taken a break from studying to do some geocaching downtown. Nothing calms the nerves like hiding the small collectibles you find at garage sales, knowing that it may be years before someone else stumbles upon your secret. Speaking of secrets, that's an unusual looking manhole cover. It must be at least 50 years old, and judging by the dust covering it, it hasn't been opened in years. You always have a small flashlight on you, and you're tempted to go in now. Or should you find a friend to come with you?"
    let T1_Ans1 = "Go in now!" // leads to T2_Story
    let T1_Ans2 = "Safety in numbers. Find a friend." // leads to T3_Story
    
    
    let T2_Story = "With some serious tugging, the manhole cover lifts off and exposes a 10 foot deep hole. The stone wall has some rusty metal rungs suitable for climbing. As you carefully lower yourself to the uneven stone floor below, you turn on your flashlight with a slight click. These tunnels have seen better days for sure! Do you examine the immediate area, or move on?"
    let T2_Ans1 = "Examine the area." // leads to T4_Story
    let T2_Ans2 = "Move on." // leads to T5_Story
    
    let T3_Story = "Despite your curiosity, you realize that no one knows where you are. It would be wise to bring someone with you in case something happens underground. Two of your friends come to mind, either Elaine or Greg. Elaine is likely studying at the library right now, and she has a lot of knowledge about the city's history. Greg is usually at the gym at this hour. He's always up for an adventure, and his strength could come in handy."
    let T3_Ans1 = "Take Elaine." // leads to E6_Story
    let T3_Ans2 = "Take Greg." // leads to G7_Story
    
    let T4_Story = "After spending a few moments poking under some loose rocks, you do not find anything useful. A few tiny bugs scurry off, perturbed by your rough handling of their hiding spots. While investigating the area, you do hear a faint indiscernible noise down the left tunnel. However, the right tunnel seems ominously quiet. Which way do you go?"
    let T4_Ans1 = "Go left" // leads to T8_Story
    let T4_Ans2 = "Go right" // leads to T9_Story
    
    let T5_Story = "Lets not waste time turning over rocks. You can go left or right. Which do you choose?"
    let T5_Ans1 = "Go left" // leads to T8_Story
    let T5_Ans2 = "Go right" // leads to T9_Story
    
    let E6_Story = "Elaine is nervous about going underground, but she can't resist the opportunity to discover more of your city's history. She packs a backpack that would make a certain umbrella carrying nanny proud, and you return to start your adventure. With some serious tugging, the manhole cover lifts off and exposes a 10 foot deep hole. The stone wall has metal rungs suitable for climbing. You carefully lower yourself to the uneven stone floor below and Elaine timidly follows. Your flashlight beam shows a wide passage to the left and another to the right."
    let E6_Ans1 = "Check out the area." // leads to E10_Story
    let E6_Ans2 = "Move on." // leads to E11_Story
    
    let G7_Story = "Greg doesn't take any convincing. With little delay, you return to the site you discovered. Greg lifts the manhole cover with ease and clambers down the metal rungs, skipping most of them before hopping to the uneven floor below. You hurriedly follow. Your flashlight beam shows a wide passage to the left and another to the right."
    let G7_Ans1 = "Go left." // leads to G12_Story
    let G7_Ans2 = "Go right." // leads to G13_Story
    
    let T8_Story = "The left passage opens into a small room in which the walls and ceiling have somewhat crumbled away with time. All around the floor you see trash and debris of times gone by - various rusty bits of cans, silverware, etc., along with faded and torn papers... old newspapers maybe? Further down the tunnels sounds the running water. Do you take the time to go through the debris, or move on down the tunnels? Your flashlight beam shows the tunnel continues forward, or you can go through the crack in the wall to your right."
    let T8_Ans1 = "Search the debris." // leads to T14_Story
    let T8_Ans2 = "Move on!" // leads to T15_Story
    
    let T9_Story = "You follow the right passage, which soon opens into a large underground area. Mining cart tracks can be seen running as far as you can see to the left, but to the right it seems there was a cave in of some sort which has buried the tracks and blocked the path. One of the carts sits still on its tracks. Nearby you see what looks to be a lift."
    let T9_Ans1 = "Inspect the area." // leads to T20_Story
    let T9_Ans2 = "Follow the tracks." // leads to T21_Story
    
    let E10_Story = "After spending a few moments poking under some loose rocks, you do not find anything useful. A few tiny bugs scurry off, perturbed by your rough handling of their hiding spots. While investigating the area, you do hear a faint indiscernible noise down the left tunnel. However, the right tunnel seems ominously quiet. Which way do you go?"
    let E10_Ans1 = "Go left." // leads to E16_Story
    let E10_Ans2 = "Go right." // leads to E17_Story
    
    let E11_Story = "Lets not waste time turning over rocks. You can go left or right. Which do you choose?"
    let E11_Ans1 = "Go left." // leads to E16_Story
    let E11_Ans2 = "Go right." // leads to E17_Story
    
    let G12_Story = "The left passage opens into a small room containing various pieces of trash and debris. Greg seems to have found something further on down the tunnel! Do you catch up with your friend or take some time to rummage through the debris for clues?"
    let G12_Ans1 = "Follow Greg!" // leads to G
    let G12_Ans2 = "Rummage for clues." // leads to G
    
    let G13_Story = "You follow the right passage, which soon opens into a large underground area. Iron cart tracks can be seen running as far as you can see to the left and to the right. To the left one of the carts sits still on its tracks."
    let G13_Ans1 = "Go left." // leads to G
    let G13_Ans2 = "Go right." // leads to G
    
    let T14_Story = "One of the stones moves slightly underfoot. Underneath you find an aged letter which seems to be somewhat intact! It reads: 'Dear Stranger, Herein you will find the last will and testament of James --- As I have no living heirs, I leave my trea--- to you. That is to say that it is yours if you can --- Where the eye is before the E, the stars surround her. In God she trusts, but --- believes in one ideal above others. Find it, and a small fortune --- yours.' Let's go find it! Straight ahead, the tunnel continues on, but there is a crack in the wall to the right."
    let T14_Ans1 = "Go forward." // leads to T26_Story
    let T14_Ans2 = "Go right." // leads to T27_Story
    
    let T15_Story = "Lets not waste time digging through newspapers. You can continue forward down the tunnel, or explore a crack in the wall to your right."
    let T15_Ans1 = "Go forward." // leads to T26_Story
    let T15_Ans2 = "Go right." // leads to T27_Story
    
    let E16_Story = "The left passage opens into a small room. One of the stones moves slightly underfoot. Underneath Elaine finds an aged letter, mostly intact. It reads: 'Dear Stranger, Herein you will find the last will and testament of James ---  As I have no living heirs, I leave my trea--- to you. That is to say that it is yours if you can --- Where the eye is before the E, the stars surround her. In God she trusts, but --- believes in one ideal above others. Find it, and a small fortune --- yours.' Straight ahead, the passage continues on, but there is an additional larger passage to the right."
    let E16_Ans1 = "Go forward." // leads to E22_Story
    let E16_Ans2 = "Go right." // leads to E23_Story
    
    let E17_Story = "You follow the right passage, which soon opens into a large underground area. Mining cart tracks can be seen running as far as you can see to the left, but to the right it seems there was a cave in of some sort which has buried the tracks and blocked the path. One of the carts sits still on its tracks. Nearby you see what looks to be a lift. Elaine thinks this used to be where ore would be brought to be smelted in the building above, and that this used to be an active silver mine ages ago. Shall we look around for some goodies? Or follow the tracks?"
    let E17_Ans1 = "Inspect the area." // leads to E28_Story
    let E17_Ans2 = "Follow the tracks." // leads to E29_Story
    
    let G18_Story = ""
    let G18_Ans1 = ""
    let G18_Ans2 = ""
    
    let G19_Story = ""
    let G19_Ans1 = ""
    let G19_Ans2 = ""
    
    let T20_Story = "Upon further inspection, it looks like the lift has seen better days. The chains and levers that work it seem to have rusted and become unusable. You check the mine cart, but it's empty and rusted. As you look at the rocks, you see something flash white very briefly. You hop up on the rocks and look at it at an angle, and see that some poor unfortunate person from days past got trapped under rocks! You briefly give your condolences before hurriedly making your way down the tracks."
    let T20_Ans1 = "" // this button will be hidden
    let T20_Ans2 = "Continue." // leads to T21_Story
    
    let T21_Story = "You continue down the wide tunnel and follow the tracks. The dirt and rocks crunch loudly beneath your shoes, emphasized by the echo they make. Various faint foreign noises float through the tunnels, like whispers of times gone by. Some 'orbs' float past your light and give the place an eerie feel, so you quicken your pace just a bit and hurry on."
    let T21_Ans1 = "" // this button will be hidden
    let T21_Ans2 = "Continue." // leads to T32_Story
    
    let E22_Story = "As you continue exploring, the sound of rushing water is unmistakable; you imagine not too much further down you should be able to see it soon! Meanwhile the tunnels have become a lot rougher... as if this area was haphazardly chipped away by some diggers. All around are various chunks of rock, and some scattered tracks of small critters. Elaine shies away from the tracks, but you assure her you've seen no recent evidence of vermin. Elaine thinks this area might have been a mine at some point. Do you wish to go straight, towards the sound of water? Or explore where the diggers went, and go left?"
    let E22_Ans1 = "Go straight." // leads to E34_Story
    let E22_Ans2 = "Go left." // leads to E35_Story
    
    let E23_Story = "You squeeze your way into the crack, but Elaine gets a look on her face which indicates that's not going to happen with her! This opens up into a small cave, and as you start exploring the cave, from the opening you hear a scream from Elaine, and then a startled \"Hello? Is someone down here?\" Inevitibly you see a light shine your way, and with a sigh they say \"Excuse me, you are trespassing here and need to leave. Please come with me.\" Uh oh... busted! Do you want to play again?"
    let E23_Ans1 = "Try again." // Leads to T1_Story
    let E23_Ans2 = "Play later." // Ends game and leads to End_Story
    
    let G24_Story = ""
    let G24_Ans1 = ""
    let G24_Ans2 = ""
    
    let G25_Story = ""
    let G25_Ans1 = ""
    let G25_Ans2 = ""
    
    let T26_Story = "As you continue exploring, the sound of rushing water is unmistakable; you imagine not too much further down you should be able to see it soon! Meanwhile the tunnels have become a lot rougher... as if this area was haphazardly chipped away by some diggers. All around are various chunks of rock, and some scattered tracks of small critters. Do you wish to go straight, towards the sound of water? Or explore where the diggers went, and go left?"
    let T26_Ans1 = "Go straight." // leads to T33_Story
    let T26_Ans2 = "Go left." // leads to T38_Story
    
    let T27_Story = "You squeeze your way into the crack, which opens up into a small cave. As you start exploring the cave, from the opening you hear someone say \"Hello? Is someone down here?\" Though you may try to hide, there really isn't anywhere else to go. Inevitibly you see a light shine your way, and with a sigh they say \"Excuse me, you are tresspassing here and need to leave. Please come with me.\" Uh oh... busted!"
    let T27_Ans1 = "Try again!." // leads to T1_Story
    let T27_Ans2 = "Play later." // quits the game
    
    let E28_Story = "Upon further inspection, it looks like the lift has seen better days. The chains and levers that work it seem to have rusted and become unusable. You check the mine cart, but it's empty and rusted. As you look at the rocks, you see something flash white very briefly. You hop up on the rocks and look at it at an angle, and see that some poor unfortunate person from days past got trapped under rocks! You don't want to spook Elaine this quickly into the exploration, so you mumble something about \"...big, heavy, rocks...\" and hurriedly make your way down the tracks."
    let E28_Ans1 = "" // This button will be hidden
    let E28_Ans2 = "Continue." // leads to E29_Story
    
    let E29_Story = "You continue down the wide tunnel and follow the tracks. The dirt and rocks crunch loudly beneath your shoes, emphasized by the echo they make. Various faint foreign noises float through the tunnels, like whispers of times gone by. Some 'orbs' float past your light and give the place an eerie feel. Elaine grasps onto your arm while you walk. She mentions that she read that orbs can sometimes be spirits floating by, but that just nonsense, right? You both look at each other for a moment, and then quicken your pace a bit."
    let E29_Ans1 = "" // This button will be hidden
    let E29_Ans2 = "Continue." // leads to E40_Story
    
    let G30_Story = ""
    let G30_Ans1 = ""
    let G30_Ans2 = ""
    
    let G31_Story = ""
    let G31_Ans1 = ""
    let G31_Ans2 = ""
    
    let T32_Story = "After what seemed like an eternity of following the tracks, but was probably only 15 minutes or so, you notice an odd tunnel veering off diagonally to the left of you. It looks like whoever was digging down here found something interesting and carved out a spidery path. Flecks of something metallic can be seen coating the floor. Do you wish to examine the area better? Maybe go down this tunnel and away from the tracks? Or keep following the tracks and see where they go? Hmm."
    let T32_Ans1 = "Investigate the flecks." // leads to T39_Story
    let T32_Ans2 = "Move on!" // leads to T44_Story
    
    let T33_Story = "The tunnel breaks into an underwater river that rushes merrily past you. You flash your light across the water and notice a natural cave entrance on the other side angling up and going further in. You would have to cross the river, but it looks to be shallow in enough spots to safely cross. To your left a dug out tunnel continues which might be worth exploring. Which way do you go?"
    let T33_Ans1 = "Cross the river." // leads to T45_Story
    let T33_Ans2 = "Explore the tunnels." // leads to T50_Story
    
    let E34_Story = "The tunnel breaks into an underwater river that rushes merrily past you. You flash your light across the water and notice a natural cave entrance on the other side angling up and going further in. You would have to cross the river, but it looks to be shallow in enough spots to safely cross. Elaine looks at the cave, and then back to you before saying \"There is no way I am crossing that! You are on your own if you want to cross and poke around in there!\" To your left a dug out tunnel continues which might be worth exploring. Which way do you go?"
    let E34_Ans1 = "Cross alone." // leads to E41_Story
    let E34_Ans2 = "Go left with Elaine." // leads to E58_Story
    
    let E35_Story = "Going left following the tunnel"
    let E35_Ans1 = "" // leads to E46_Story
    let E35_Ans2 = "" // leads to E47_Story
    
    let G36_Story = ""
    let G36_Ans1 = ""
    let G36_Ans2 = ""
    
    let G37_Story = ""
    let G37_Ans1 = ""
    let G37_Ans2 = ""
    
    let T38_Story = "Going left following the diggers tunnel"
    let T38_Ans1 = "" // leads to T51_Story
    let T38_Ans2 = "" // leads to T56_Story
    
    let T39_Story = "You lightly touch the dust and rub it between your fingers a bit. Is this silver? Not sure, but interesting nevertheless. While checking that out, something else catches your eye as another metallic glint. You make your way over to where you saw the glint, and with a bit of poking around, you manage to find a small silvery-looking rock! You decide to bring it with you for good luck. Now where to go next? I wonder if the tunnel will have more neat things like the silvery rock, or if the tracks will lead to someplace interesting."
    let T39_Ans1 = "Explore the tunnel." // leads to T57_Story
    let T39_Ans2 = "Follow the tracks." // leads to T62_Story
    
    let E40_Story = "After what seemed like an eternity of following the tracks, but was probably only 15 minutes or so, you both notice an odd tunnel veering off diagonally to the left of you. It looks like whoever was digging down here found something interesting and carved out a spidery path. Elaine mentions this was definitely a mine vein! Flecks of something metallic can be seen coating the floor which Elaine suspects to be either Iron or Silver. Do you wish to examine the area better? Maybe go down this tunnel and away from the tracks? Or keep following the tracks and see where they go?"
    let E40_Ans1 = "Investigate the flecks." // leads to E52_Story
    let E40_Ans2 = "Move on!" // leads to E53_Story
    
    let E41_Story = "You wade into the river a bit -- ooh that's cold! -- and make your way across using the shallow spots to guide you. The water is moving rather powerfully, moreso than you expected, but by keeping out of the deep spots you manage to make your way across and into the cave. Hopefully nothing got too wet! The cave itself it's definitely interesting, especially since you've never seen what stalagtites and stalagmites looked like in person before. Angling to your right there is another cave opening that you think you could reach if you climbed just a bit. Let's see where this goes..."
    let E41_Ans1 = "" // This button will be hidden
    let E41_Ans2 = "Continue" // leads to E59_Story
    
    let G42_Story = ""
    let G42_Ans1 = ""
    let G42_Ans2 = ""
    
    let G43_Story = ""
    let G43_Ans1 = ""
    let G43_Ans2 = ""
    
    let T44_Story = "Lets not waste time digging through metallic flecks."
    let T44_Ans1 = "Explore the tunnel." // leads to T57_Story
    let T44_Ans2 = "Follow the tracks." // leads to T62_Story
    
    let T45_Story = "You wade into the river a bit -- ooh that's cold! -- and make your way across using the shallow spots to guide you. The water is moving rather powerfully, moreso than you expected, but by keeping out of the deep spots you manage to make your way across and into the cave. Hopefully nothing got too wet! The cave itself it's definitely interesting, especially since you've never seen what stalagtites and stalagmites looked like in person before. Angling to your right there is another cave opening that you think you could reach if you climbed just a bit. Let's see where this goes..."
    let T45_Ans1 = "" // this button will be hidden
    let T45_Ans2 = "Continue." // leads to T63_Story
    
    let E46_Story = "Following tunnel with Elaine"
    let E46_Ans1 = "" // leads to E
    let E46_Ans2 = "" // leads to E
    
    let E47_Story = "Following tunnel with Elaine"
    let E47_Ans1 = "" // leads to E
    let E47_Ans2 = "" // leads to E
    
    let G48_Story = ""
    let G48_Ans1 = ""
    let G48_Ans2 = ""
    
    let G49_Story = ""
    let G49_Ans1 = ""
    let G49_Ans2 = ""
    
    let T50_Story = "Tunnels by river"
    let T50_Ans1 = "" // leads to T68_Story
    let T50_Ans2 = "" // leads to T69_Story
    
    let T51_Story = "Following diggers tunnel"
    let T51_Ans1 = "" // leads to T74_Story
    let T51_Ans2 = "" // leads to T75_Story
    
    let E52_Story = "Elaine lightly touch the dust and rubs it between her fingers a bit. This is definitely silver! While she is checking that out, something else catches your eye as another metallic glint. You make your way over to where you saw the glint, and with a bit of poking around, you manage to find a small chunk of silver! You decide to bring it with you for good luck. Now where to go next? I wonder if the tunnel will have more neat things, or if the tracks will lead to someplace interesting."
    let E52_Ans1 = "Explore the tunnel." // leads to E70_Story
    let E52_Ans2 = "Follow the tracks." // leads to E71_Story
    
    let E53_Story = "Lets not waste time digging through metallic flecks."
    let E53_Ans1 = "Explore the tunnel." // leads to E70_Story
    let E53_Ans2 = "Follow the tracks." // leads to E71_Story
    
    let G54_Story = ""
    let G54_Ans1 = ""
    let G54_Ans2 = ""
    
    let G55_Story = ""
    let G55_Ans1 = ""
    let G55_Ans2 = ""
    
    let T56_Story = "following diggers tunnel"
    let T56_Ans1 = "" // leads to T
    let T56_Ans2 = "" // leads to T
    
    let T57_Story = "Exploring tunnel near tracks"
    let T57_Ans1 = "" // leads to T80_Story
    let T57_Ans2 = "" // leads to T81_Story
    
    let E58_Story = "Exploring the tunnel with Elaine"
    let E58_Ans1 = "" // leads to E76_Story
    let E58_Ans2 = "" // leads to E77_Story
    
    let E59_Story = "As you work your way up, the climb takes about as much effort as a steep hike, and you make your way to the top... a bit muddy if nothing else. As you continue on, there is a natural arch that overlooks the river where you can hear the water quickly rushing - how cool! But wait, what's that further on down? Another cave? Another dig site? It looks like someone setup a camp here, but decades ago. What catches your eye is another glint of something metallic, near a sack of some sort. Coins? The river looks particularly dangerous here, in a tighter spot than where you crossed last. Do you want to brave it and go check out the camp site? Or turn back because it could be really dangerous this time?"
    let E59_Ans1 = "Brave the river." // leads to E64_Story
    let E59_Ans2 = "Return to Elaine." // leads to E65_Story
    
    let G60_Story = ""
    let G60_Ans1 = ""
    let G60_Ans2 = ""
    
    let G61_Story = ""
    let G61_Ans1 = ""
    let G61_Ans2 = ""
    
    let T62_Story = "Following animal tracks"
    let T62_Ans1 = "" // leads to T86_Story
    let T62_Ans2 = "" // leads to T87_Story
    
    let T63_Story = "As you work your way up, the climb takes about as much effort as a steep hike, and you make your way to the top... a bit muddy if nothing else. As you continue on, there is a natural arch that overlooks the river where you can hear the water quickly rushing - how cool! But wait, what's that further on down? Another cave? Another dig site? It looks like someone setup a camp here, but decades ago. What catches your eye is another glint of something metallic, near a sack of some sort. Coins? The river looks particularly dangerous here, in a tighter spot than where you crossed last. Do you want to brave it and go check out the camp site? Or turn back because it could be really dangerous this time?"
    let T63_Ans1 = "Brave the river!" // leads to T92_Story
    let T63_Ans2 = "Turn back." // leads to T93_Story
    
    let E64_Story = "You look around for a way down, and manage to find a rocky area that seems to have enough hand and foot holds to get down to the river. As you start to climb down, the rocks come out from your grasp! OH NO! *SPLASH!* You fall into the river and briefly try to orient yourself before hitting your head on something that hurts! ...as all goes black... another soul claimed by the temptations of these ancient tunnels."
    let E64_Ans1 = "Try again?" // leads to T1_Story
    let E64_Ans2 = "Play later." // quits the game
    
    let E65_Story = "Returning to Elaine."
    let E65_Ans1 = "" // leads to E
    let E65_Ans2 = "" // leads to E
    
    let G66_Story = ""
    let G66_Ans1 = ""
    let G66_Ans2 = ""
    
    let G67_Story = ""
    let G67_Ans1 = ""
    let G67_Ans2 = ""
    
    let T68_Story = "Continue tunnels by river"
    let T68_Ans1 = "" // leads to T
    let T68_Ans2 = "" // leads to T
    
    let T69_Story = "Continue tunnels by river"
    let T69_Ans1 = "" // leads to T
    let T69_Ans2 = "" // leads to T
    
    let E70_Story = "Exploring the tunnel."
    let E70_Ans1 = "" // leads to E
    let E70_Ans2 = "" // leads to E
    
    let E71_Story = "Following the animal tracks."
    let E71_Ans1 = "" // leads to E
    let E71_Ans2 = "" // leads to E
    
    let G72_Story = ""
    let G72_Ans1 = ""
    let G72_Ans2 = ""
    
    let G73_Story = ""
    let G73_Ans1 = ""
    let G73_Ans2 = ""
    
    let T74_Story = "Continue diggers tunnel"
    let T74_Ans1 = "" // leads to T
    let T74_Ans2 = "" // leads to T
    
    let T75_Story = "Continue diggers tunnel"
    let T75_Ans1 = "" // leads to T
    let T75_Ans2 = "" // leads to T
    
    let E76_Story = "Continued tunnel with Elaine"
    let E76_Ans1 = "" // leads to E
    let E76_Ans2 = "" // leads to E
    
    let E77_Story = "Continued tunnel with Elaine"
    let E77_Ans1 = "" // leads to E
    let E77_Ans2 = "" // leads to E
    
    let G78_Story = ""
    let G78_Ans1 = ""
    let G78_Ans2 = ""
    
    let G79_Story = ""
    let G79_Ans1 = ""
    let G79_Ans2 = ""
    
    let T80_Story = "Continue tunnel near tracks"
    let T80_Ans1 = "" // leads to T
    let T80_Ans2 = "" // leads to T
    
    let T81_Story = ""
    let T81_Ans1 = ""
    let T81_Ans2 = ""
    
    let E82_Story = ""
    let E82_Ans1 = ""
    let E82_Ans2 = ""
    
    let E83_Story = ""
    let E83_Ans1 = ""
    let E83_Ans2 = ""
    
    let G84_Story = ""
    let G84_Ans1 = ""
    let G84_Ans2 = ""
    
    let G85_Story = ""
    let G85_Ans1 = ""
    let G85_Ans2 = ""
    
    let T86_Story = "Continue animal tracks"
    let T86_Ans1 = "" // leads to T
    let T86_Ans2 = "" // leads to T
    
    let T87_Story = "Continue animal tracks"
    let T87_Ans1 = "" // leads to T
    let T87_Ans2 = "" // leads to T
    
    let E88_Story = ""
    let E88_Ans1 = ""
    let E88_Ans2 = ""
    
    let E89_Story = ""
    let E89_Ans1 = ""
    let E89_Ans2 = ""
    
    let G90_Story = ""
    let G90_Ans1 = ""
    let G90_Ans2 = ""
    
    let G91_Story = ""
    let G91_Ans1 = ""
    let G91_Ans2 = ""
    
    let T92_Story = "You look around for a way down, and manage to find a rocky area that seems to have enough hand and foot holds to get down to the river. As you start to climb down, the rocks come out from your grasp! OH NO! *SPLASH!* You fall into the river and briefly try to orient yourself before hitting your head on something that hurts! ...as all goes black... another soul claimed by the temptations of these ancient tunnels."
    let T92_Ans1 = "Try again!" // leads to T1_Story
    let T92_Ans2 = "Play later." // quits the game
    
    let T93_Story = "Turning back from second crossing"
    let T93_Ans1 = "" // leads to T
    let T93_Ans2 = "" // leads to T
    
    // TODO: Initialise instance variables here
    var storyIndex: Int = 1

    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var storyTextView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the text for the storyTextView, topButton, bottomButton
        updateUI(textView: T1_Story, topButtonText: T1_Ans1, bottomButtonText: T1_Ans2, index: 1)
    }
    
    @IBAction func topButton(_ sender: UIButton) {
        switch storyIndex {
        case 1:
            updateUI(textView: T2_Story, topButtonText: T2_Ans1, bottomButtonText: T2_Ans2, index: 2)
        case 2:
            updateUI(textView: T4_Story, topButtonText: T4_Ans1, bottomButtonText: T4_Ans2, index: 4)
        case 3:
            updateUI(textView: E6_Story, topButtonText: E6_Ans1, bottomButtonText: E6_Ans2, index: 6)
        case 4...5:
            updateUI(textView: T8_Story, topButtonText: T8_Ans1, bottomButtonText: T8_Ans2, index: 8)
        case 6:
            updateUI(textView: E10_Story, topButtonText: E10_Ans1, bottomButtonText: E10_Ans2, index: 10)
        case 7:
            updateUI(textView: G12_Story, topButtonText: G12_Ans1, bottomButtonText: G12_Ans2, index: 12)
        case 8:
            updateUI(textView: T14_Story, topButtonText: T14_Ans1, bottomButtonText: T14_Ans2, index: 14)
        case 9:
            topButton.isHidden = true
            updateUI(textView: T20_Story, topButtonText: T20_Ans1, bottomButtonText: T20_Ans2, index: 20)
        case 10...11:
            updateUI(textView: E16_Story, topButtonText: E16_Ans1, bottomButtonText: E16_Ans2, index: 16)
        case 14...15:
            updateUI(textView: T26_Story, topButtonText: T26_Ans1, bottomButtonText: T26_Ans2, index: 26)
        case 16:
            updateUI(textView: E22_Story, topButtonText: E22_Ans1, bottomButtonText: E22_Ans2, index: 22)
        case 17:
            updateUI(textView: E28_Story, topButtonText: E28_Ans1, bottomButtonText: E28_Ans2, index: 28)
        case 22:
            updateUI(textView: E34_Story, topButtonText: E34_Ans1, bottomButtonText: E34_Ans2, index: 34)
//        case 23:
//            updateUI(textView: T1_Story, topButtonText: T1_Ans1, bottomButtonText: T1_Ans2, index: 1)
        case 26:
            updateUI(textView: T33_Story, topButtonText: T33_Ans1, bottomButtonText: T33_Ans2, index: 33)
//        case 27:
//            updateUI(textView: T1_Story, topButtonText: T1_Ans1, bottomButtonText: T1_Ans2, index: 1)
        default:
            updateUI(textView: T1_Story, topButtonText: T1_Ans1, bottomButtonText: T1_Ans2, index: 1)
        }
    }
    
    @IBAction func bottomButton(_ sender: UIButton) {
        switch storyIndex {
        case 1:
            updateUI(textView: T3_Story, topButtonText: T3_Ans1, bottomButtonText: T3_Ans2, index: 3)
        case 2:
            updateUI(textView: T5_Story, topButtonText: T5_Ans1, bottomButtonText: T5_Ans2, index: 5)
        case 3:
            updateUI(textView: G7_Story, topButtonText: G7_Ans1, bottomButtonText: G7_Ans2, index: 7)
        case 4...5:
            updateUI(textView: T9_Story, topButtonText: T9_Ans1, bottomButtonText: T9_Ans2, index: 9)
        case 6:
            updateUI(textView: E11_Story, topButtonText: E11_Ans1, bottomButtonText: E11_Ans2, index: 11)
        case 7:
            updateUI(textView: G13_Story, topButtonText: G13_Ans1, bottomButtonText: G13_Ans2, index: 13)
        case 8:
            updateUI(textView: T15_Story, topButtonText: T15_Ans1, bottomButtonText: T15_Ans2, index: 15)
        case 9:
            updateUI(textView: T21_Story, topButtonText: T21_Ans1, bottomButtonText: T21_Ans2, index: 21)
        case 10...11:
            updateUI(textView: E17_Story, topButtonText: E17_Ans1, bottomButtonText: E17_Ans2, index: 17)
        case 14...15:
            updateUI(textView: T27_Story, topButtonText: T27_Ans1, bottomButtonText: T27_Ans2, index: 27)
        case 16:
            updateUI(textView: E23_Story, topButtonText: E23_Ans1, bottomButtonText: E23_Ans2, index: 23)
        case 17:
            updateUI(textView: E29_Story, topButtonText: E29_Ans1, bottomButtonText: E29_Ans2, index: 29)
        case 20:
            topButton.isHidden = true
            updateUI(textView: T21_Story, topButtonText: T21_Ans1, bottomButtonText: T21_Ans2, index: 21)
        case 21:
            updateUI(textView: T32_Story, topButtonText: T32_Ans1, bottomButtonText: T32_Ans2, index: 32)
        case 22:
            updateUI(textView: E35_Story, topButtonText: E35_Ans1, bottomButtonText: E35_Ans2, index: 35)
        case 23:
            topButton.isHidden = true
            bottomButton.isHidden = true
            updateUI(textView: End_Story, topButtonText: End_Ans1, bottomButtonText: End_Ans2, index: 1)
        case 27:
            topButton.isHidden = true
            bottomButton.isHidden = true
            updateUI(textView: End_Story, topButtonText: End_Ans1, bottomButtonText: End_Ans2, index: 1)
        case 28:
            updateUI(textView: E29_Story, topButtonText: E29_Ans1, bottomButtonText: E29_Ans2, index: 29)
        default:
            updateUI(textView: T1_Story, topButtonText: T1_Ans1, bottomButtonText: T1_Ans2, index: 1)
        }
    }

    func updateUI(textView: String, topButtonText: String, bottomButtonText: String, index: Int) {
        storyTextView.text = textView
        topButton.setTitle(topButtonText, for: .normal)
        bottomButton.setTitle(bottomButtonText, for: .normal)
        storyIndex = index
    }
}


