import 'package:flutter/material.dart';

import 'package:flutter_project_new_mac/widgets/game_description.dart';
import 'package:styled_text/styled_text.dart';

abstract class AllGames {
  static List<GameDescription> getAllGames() {
    var games = [
      GameDescription(
        title: 'abc',
        headers: const [
          'Two Person Game',
          'Performance Game',
          'No Emcee Needed'
        ],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a game where the two players act out a scene based on an audience suggestion. The only rule is - <b>the '
              'first letter of each actor\'s dialogue must happen in alphabetical order.</b> The scene is finished when the entire alphabet is complete.\n \n'
              'Here is a partial example: \n \n'
              '<b>Player A:</b> <b>A</b>m I having a bad day, or what?! I am so upset!\n \n'
              '<b>Player B:</b> <b>B</b>aby, I know you are sad you lost your job!\n \n'
              '<b>Player A:</b> <b>C</b>an\'t I do anything right?\n \n'
              '<b>Player B:</b> <b>D</b>on\'t worry, you will find another job soon. I love you!\n \n '
              'And the dialogue would continue until finally the entire alphabet has been completed. \n \n'
              '<b>Here are a few other notes:</b> \n'
              '\u2022 The dialogue does <b>not</b> need to start on the letter A. In fact, it can be more fun if you do NOT start on the letter A!\n'
              '\u2022 If you are performing this game in a show, ask the audience what letter to start on. \n'
              '\u2022 Another way to play this game in a show is to have several pairs of actors play this game, and see who can get through the alphabet the fastest, or which pair can get through the alphabet in under 60/90/120 seconds.\n'
              '\u2022 This game gives good reason to study up on words that start with the letter X, Q, and Z.\n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
          title: 'buzzer debate',
          headers: const ['Line Game', 'Performance Game', 'Emcee Needed'],
          body: StyledText(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            text:
                'It can be useful to have a strong emcee, and two chairs (but not required). A bell can be handy, but is also not required.\n \n'
                '<b>In this game, one player will be moderating a "debate" between the other two players</b> who both are pretending to be candidates for a fake position in a fake city. The position and the city are encouraged to be creative. For example, Official Orange Juice Taster in Steve Martin City.\n \n'
                '<b>The candidates should choose a very strong character for themselves.</b> They can be an 8-year old boy, a quiet librarian, a boisterous surgeon, a retired cowboy, whatever. A strong character choice will make this game fun.\n \n'
                '<b>The setting for this game is always a town hall-like setting.</b> The game begins when the moderator addresses the crowd, introduces themself, and mentions the position that the candidates are campaigning for. Then, the moderator will allow the first candidate to introduce themselves, and talk about why they will make the best Official OrangeJuice Taster for the residents of Steve Martin City.\n \n'
                'Now, at ANY TIME during this game, the emcee can make a buzzer sound (or ring the bell), which forces the player to change the last thing they said. They can do this to the candidates, but also the moderator!\n \n'
                'Here is an example:\n \n'
                '<b>Candidate:</b> Well, where I am from, which is the great state of Montana-\n \n'
                '<b>Emcee:</b> Buzz!\n \n'
                '<b>Candidate:</b> Louisiana\n \n'
                '<b>Emcee:</b> Buzz!\n \n'
                '<b>Candidate:</b> Russia\n \n'
                '<b>Emcee:</b> Buzz!\n \n'
                '<b>Candidate:</b> Outer Space\n \n'
                'When the emcee is satisfied with the dialogue, they stop buzzing. Then the candidate must continue with this new truth - that they are from the great state of Outer Space!\n \n'
                '<b>The point of this game is to throw the players off and force them out of their comfort zone.</b> The players will inevitably have a little script for themselves and the characters they have created. It is up to the emcee to try to throw them off and get them to say weird things that they then have to justify as a truth in the scene.\n \n'
                'Also, these scenes should start off fairly calm and respectable. Each candidate should give the other candidate a good 1-3 minutes to speak to introduce themselves. But as the game goes on, it should get a little unruly - just like real political debates. Candidates may wind up talking over and interrupting one another. It is up to the moderator to try to keep the debate under control and not devolve into a chaotic shouting match.\n \n',
            tags: {
              'b': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.bold))
            },
          )),
      GameDescription(
        title: 'challenge',
        headers: const ['Line Game', 'Performance Game', 'Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a timed, emcee game. A strong emcee familiar with the game is needed in order for this game to go as well as possible. All players stand in a line across the stage. The emcee will get an unpopular opinion (politically correct, please) from the audience. Then the emcee will ask the players if any of them have a strong opinion about that unpopular opinion - they can agree or disagree. \n \n'
              'After hearing from all the players who have raised their hand, the emcee will decide who they want to hear from first. That player, Player A, will then go to the center of the stage, a few steps in front of the line players. It should look like one lead singer up front and a choir of backup singers behind them. Then Player A will begin speaking on the topic. \n \n'
              'At anytime, any of the players behind them can raise their hand and say, "CHALLENGE". Then, once the emcee calls on them - <i>and ONLY after the emcee has called on them<i> - that player can then pitch why they are challenging Player A. After the emcee has heard all the challenges at that moment, the emcee can decide who he wants to hear from next. Or, the emcee may not like any of the challenges and will let Player A continue talking. Basically, the point of this game is be creative, argue a bunch, and sell your argument to the emcee. This part of the game is not super important. It just kicks off the game.  \n \n'
              'Here is an example of how this could go:\n \n'
              'Unpopular opinion - broccoli is tasty. \n \n'
              '<b>Emcee:</b> Which of the players have strong feelings about this?\n \n'
              '<b>Player A</b> (<i>after being called on</i>):</b> Broccoli is not tasty. My parents made me eat broccoli as a kid and it was over-steamed and soft and gross.\n \n'
              '<b>Player B</b> (<i>after being called on</i>):</b> Broccoli is delicious! I love roasted broccoli tossed in olive oil, salt and pepper!\n \n'
              '<b>Emcee:</b> OK, I want to hear more about Player A and their gross broccoli they had to eat as a kid. Come on up Player A.\n \n'
              '<i>Player A steps up to the front of the stage.<i>\n \n'
              '<b>Player A:</b> I still have nightmares about the broccoli my parents made me eat. I love my parents, but they are the worst cooks. My parents made me eat over-steamed, unseasoned, limp, gross broccoli all the time and I hated it! I swear, that brocc-\n \n'
              '<b>Player B:</b> Challenge!\n \n'
              '<b>Player C:</b> Challenge!\n \n'
              '<b>Player D:</b> Challenge!\n \n'
              '<b>Player E:</b> Challenge!\n \n'
              '<b>Player F:</b> Challenge!\n \n \n'
              'Here are some examples of the varied types of challenges this could invoke:\n \n'
              '<b>Player B:</b> You cannot have nightmares about broccoli. Nightmares are for sharks, spiders, falling off buildings, and serious stuff like that!\n \n'
              '<b>Player C:</b> I know Player A\'s parents, and they are NOT the worst cooks. They are great cooks! (Player C can say this even if they have never ever met Player A\'s parents!)\n \n'
              '<b>Player D:</b> Over-steamed, unseasoned, limp broccoli is my favorite kind of broccoli. It is not gross at all.\n \n'
              '<b>Player E:</b> I am done hearing about broccoli and I would like to talk about how awesome the new Spiderman movie is.\n \n'
              '<b>Player F:</b> Player A does not love their parents. I have heard them bad mouth their parents sooo many times!\n \n'
              '<b>The emcee can choose any of these challenges.</b> As you can see, <b>challenges can be completely subjective and arbitrary</b>. It is up to the emcee to decide who gets to argue next, and their decision is also completely subjective and arbitrary.\n \n'
              'The winner of Challenge is whoever is speaking when time runs out. A typical game of Challenge only lasts ONE MINUTE, but the emcee should stop the clock while they are hearing challenges. <b>The game usually lasts closer to 10 minutes.</b>\n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold)),
            'i': StyledTextTag(
                style: const TextStyle(fontStyle: FontStyle.italic))
          },
        ),
      ),
      GameDescription(
          title: 'character cascade',
          headers: const ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
          body: StyledText(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            text:
                'This game is basically like a game of "telephone," but you\'re passing around a character instead of a sentence. The character "cascades" around the circle. \n \n'
                'All players stand in a circle. The first player creates a character and does some body movements and says a line with that character\'s voice. The whole thing should only be like 5 seconds at the most. \n \n '
                'For example, maybe they will shape their face so it is full of anguish,  clasp their hands together and beg aloud, "Please, please. I promise I\'ll pay you next week" \n \n'
                'Then, the player immediately to their left does their best to <b>act out the exact same movements, speech, tone, posture, inflection, syntax, etc. as the person who just acted out the line</b>. \n \n '
                'Each player tries their best to mimic the player\'s action immediately before them - <b>not the person who started the character cascade</b>. <b>The point is, inevitably, by the time it gets around back to the beginning, the character is quite different than how it started.</b> The movements will be different, even the sounds or dialogue may have changed. The character should go back around to the person who started it. That means for a given character, the same person starts and finishes the cascade. Then, the next player starts a new character.\n \n'
                'Here are a few other notes:\n \n'
                '\u2022 This is a great warmup game before a show or at the beginning of a class \n \n'
                '\u2022 Most people insist on NOT mimicking the player before them, but instead insist on making the character more dramatic, or whatever. It can be a little much. But just go with it. You\'re hanging out with theater people. What do you expect? \n \n',
            tags: {
              'b': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.bold))
            },
          )),
      GameDescription(
        title: 'count to 21',
        headers: const ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a team bonding and listening game. It is a good exercise to end a class with.\n \n'
              'All players stand in a circle with their eyes closed. Then, the players will count to 21, or any other arbitrary number. <b>But only one player may count at a time.</b> First a player will say "one", and then a player will say "two" and so on, until they reach 21.\n \n'
              '<b>However, anytime two players speak to say a number at the exact same time, they must start all over at "one."</b> \n \n'
              'This can take a while.\n\n'
              'Players must be patient, listen, step up/step back to count to 21.\n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
        title: 'emo interview',
        headers: const [
          'Two Person Game',
          'High Energy Game',
          'Line-ish Game',
          'No Emcee Needed'
        ],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'In this game, an interviewer will interview candidates for a job. While the interview is happening, the emcee will yell out an EMOTION, and the interviewee will then embody that emotion. \n\n'
              'First, the emcee needs to have a big list of EMOTIONS. <b>In this game, EMOTIONS is used very, very loosely.</b> The emcee should have their own list of EMOTIONS to start with, but they should also ask the audience for more suggestions of EMOTIONS. \n \n '
              'Here is a list of acceptable emotions for this game - joyous, angry, depressed, paranoid, heartbroken, hungry, flirtatious, orange, excited. Even though the game is called Emotional Interview, "adjective interview" would be more accurate.\n \n'
              'Now that you have your list of emotions, it is time for the game. There is one interviewer in this game, and they interview one person at a time. Ask the crowd for a suggestion for what job the candidates are interviewing for. It is more fun if the position is unconventional. For example, a stamp licker or a watermelon quality control professional. Librarian or doctor is fine too, but wouldn\'t you rather see an interview for a rodeo clown rather than a call center customer associate representative?\n \n'
              'When the scene starts, you need two chairs. The interviewer should already be sitting in the chair. After the scene starts, the interviewee will walk through the door, and shake hands with the interviewer. At the beginning, the interactions between the interviewer and the interviewee should more or less be realistic.\n \n'
              'For example:\n \n'
              '<b>Interviewer:</b> Hi, are you Joe? \n \n'
              '<b>Interviewee:</b> Yes, you must be Stacey. I am here for the interview. I am pleased to meet you. Thank you for this opportunity to interview for this position. \n \n'
              '<b>Interviewer:</b> Thanks for taking the time to come down and see us.\n \n'
              'Then, the game starts. \n \n'
              '<b>Interviewer:</b> So, tell me a little bit about yourself.\n \n'
              '<b>Emcee:</b> PARANOID\n \n'
              '<b>Interviewee:</b> Wait, why do you want to know about me? Who are you? Why are you out to get me? (looks around the room nervously)\n \n'
              '<b>Interviewer:</b> I\'m not out to get you. OK, how about you just tell me about your last job?\n \n'
              '<b>Emcee:</b> FLIRTATIOUS\n \n'
              '<b>Interviewee:</b> <i>(walks over and starts massaging the interviewer)</i> Oh, I\'m so glad you asked about my last job. Oh, they really liked the way I...went about my...business...\n \n'
              'And on and on.\n \n'
              'When the scene is ready to end, the emcee should say some key phrase that lets the interviewee know it is their time to get off the stage. Some common examples are "left the stove on", or "gotta pee".\n \n'
              'If more than two actors are involved, this is when the next actor would come on stage to be interviewed.\n \n'
              'Here are a few other notes:\n \n'
              'The interviewees need to go big with their emotions. If the emotion is "sad", the interviewee should be falling out of their chair, crying on the ground. If the emotion is "scared", the interviewee should get up, and back up against the imaginary wall of the office. The humor of this game is in the emotional physicality.',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold)),
            'i': StyledTextTag(
                style: const TextStyle(fontStyle: FontStyle.italic))
          },
        ),
      ),
      GameDescription(
        title: 'fictional forum',
        headers: const [
          'Four Person Game',
          'Performance Game',
          'Emcee Not Needed'
        ],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a goofy panel discussion on random topics with celebrities.\n \n'
              'In the four person version of this game, there is one host and three panelists. But, you also could have more panelists or more hosts!\n \n'
              'The group will need to get suggestions for two topics that the panelists will be discussing. They should be very distinct from one another, like taxes and chocolate bunnies. You want two different topics so the host can switch topics if one of them seems to hit a wall.\n \n'
              'Also, we need a character suggestion for each of the panelists. Here are some examples - Madonna, SpongeBob SquarePants, or Beyonce. You also can use non-celebrities, like a toaster, a carrot farmer, or a greedy stock trader.\n \n'
              '<b>Now the game can begin.</b> The host begins by introducing their television show, and introducing the topics they will be interviewing their guests about. Then, the interviewer should ask their guests to talk about their thoughts on one of the topics.\n \n'
              '<b>The panelists should be sure to stay in character and talk about these topics like their character would.</b> For example, SpongeBob SquarePants would probably relate any topic to how it would work under the sea. A toaster would relate any topic to whether it can be toasted, or toasting the topic would improve it. \n \n'
              'Have fun. Be goofy. Don\'t be afraid to move around the room or be distracting. It is up to the host to keep the show under control and the panelists on topic! It is up to the panelists to make the show as goofy and not on topic as possible! \n \n'
              'Here are a few other notes: \n'
              '\u2022 If the improviser is suggested a celebrity they have never heard of, the improviser should just do their best to pick a character it makes them think of, and go for it! Just like a good improviser does!\n \n'
              '\u2022 The same advice applies to a topic you have no idea about! If you are stuck discussing a topic you have no clue about, just decide what your strong feelings on it and go with it! Improvise!\n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
        title: 'five things',
        headers: const ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a great warmup game that helps get the creative juices flowing, and gives each player the chance to speak without any interruption. \n \n'
              'All players stand in a circle. One player starts and names a player and says, "Player A, give me five things that..." And Player A has to name the five things. And even if the subject is unknown to player A, the point of this game is to name the five things with confidence. After each thing is named, the rest of the group counts.\n \n'
              'Here is an example:\n \n'
              '<b>Player A:</b> Janice, give me five types of hot air balloons.\n \n'
              '<b>Janice:</b> Hot air balloons made of plastic!\n \n'
              '<b>Group:</b> One!\n \n'
              '<b>Janice:</b> Hot air balloons made of wood!\n \n'
              '<b>Group:</b> Two!\n \n'
              '<b>Janice:</b> Really colorful hot air balloons!\n \n'
              '<b>Group:</b> Three!\n \n'
              '<b>Janice:</b> Hot air balloons that have roller coasters inside of them!\n \n'
              '<b>Group:</b> Four!\n \n'
              '<b>Janice:</b> Hot air balloon spaceships!\n \n'
              '<b>Group:</b> Five! Five Things!\n \n'
              'Then Janice picks another player and asks them to name five things.\n \n'
              'Here are a few other notes:\n'
              '\u2022 People in the circle can take turns by going in order around the circle, or they can randomly pick one another. Either way, be sure everyone gets a turn!\n \n'
              '\u2022 The most important thing to remember is the person naming the things should do so <b>confidently</b>. Also, it is more fun if you are able to get creative and goofy. If you\'re asked to name five types of wood, you don\'t have to just say pine, oak, maple, cherry, and pressure treated.You can say amazing wood, that wood they make baseball bats out of, orange wood, or soundproof wood! Even if you have no idea what any types of wood are, just make it up and say it confidently, like you know in your heart that this type of wood exists, and it deserves to be named! \n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
        title: 'four square',
        headers: const ['Line Game', 'Performance Game', 'Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a fun performance game that is great to practice patterns, jumps in time, and heightening! Four improvisers are required, plus an emcee. A bell is optional.\n \n'
              'The four players stand in a square formation. All four players face the crowd, with two in front, and two directly behind them. During any given moment, the players in front will be in a scene. The players in back are NOT in the scene, and will just stand there and be quiet. During the course of the game, the players will rotate. Each set of players in front will be a separate scene. <b>So, there are four different scenes in this game. All players will be in two different scenes.</b>\n \n'
              '<b>The emcee will get a suggestion for each set of players.</b> This is up to the emcee, but a common way to do this is get a suggestion for <i>"how do these two people know each other?"</i> for the first pair of players. Then ask the players to rotate one spot. For the next pair, get a suggestion for <i>"where are these two people?"</i>. For the third pair, get a suggestion for <i>"what are problem are these two trying to solve?"</i> And for the last pair, just get a one word suggestion.\n \n'
              'After all the suggestions have been gotten, rotate through every pair of players and have them repeat the suggestion that will inspire their scene. This is a helpful reminder to the audience, the players, and the emcee.\n \n'
              'Generally speaking, each pair of actors will get 3 chances to play in their scene, but this is not a hard and fast rule. It also depends on the emcee decides to do the rotating. Some emcees prefer to just say "rotate", and the players all rotate one spot at a time Other emcees are more tricky, and will say "two spots left" or "three spots right." This second method can cause a little more chaos but is a lot of fun to watch because players will inevitably rotate the wrong way.\n \n'
              '<b>The secret to this game is to make big changes to the scene each time a scene is revisited.</b> For example, in the first scene, the two people could be on a first date. In their second scene, they could be getting married. Then in the third scene they could be getting divorced.\n \n'
              'For another example, let\'s say the first scene is about two strawberry pickers. The next time that scene is revisited, they could be working in a auto parts store together. Then in the last scene, they are bosses of a strawberry corporation.\n \n'
              'In one last example, let\'s say two people are co-workers at a normal desk job. In the second scene, one of them has gotten promoted and is the boss of the second person. In the third scene, both people have gotten fired for spending too much time pranking one another instead of working.\n \n'
              '<b>The main thing is that when you revisit a scene, the players should not just continue where the last scene left off.</b> The next scene should jump forward in time, escalate or heighten the "game" of the scene, or change location with the same basic circumstances as before.\n \n'
              'This is also a very rare game in improv where you have time, as a player, to plan your next scene. Planning your next scene is totally fair and encouraged in this game, since you have time to plan your next move while you are in the back and not in the scene. \n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold)),
            'i': StyledTextTag(
                style: const TextStyle(fontStyle: FontStyle.italic))
          },
        ),
      ),
      GameDescription(
        title: 'freeze tag',
        headers: const ['Line Game', 'High Energy Game', 'No Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This game can be played at a performance. It is best played with five or more people. \n \n'
              'All players stand at the back of the stage of the stage, or  off-stage. Two players start a two person scene in the middle of the stage. \n \n'
              'To begin, you need a suggestion of two keys that are on a keyboard. The two players should each start in the shape of one of those keys. They should have a normal two person scene, but should make big movements. After a few minutes, anyone from off stage can clap and say "FREEZE!" Both players on stage should freeze and stop talking. <b>Then, the player who said "FREEZE" should assume the exact same position of one of the two players, and start a brand new two-person scene.</b>\n \n'
              '<b>This game requires big movements and interesting poses from its players</b>, giving the players off stage an opportunity to interpret their position as something different. This game is not fun if both players are just "talking heads" on the stage.\n \n'
              'This game can go on and on until the improvisers are tired of playing. \n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
        title: 'interrogation',
        headers: const [
          'Three Person Game',
          'Performance Game',
          'Guessing Game',
          'Emcee Helpful'
        ],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a GUESSING game - meaning one of the improvisers needs to guess what is going on. Audience members are needed to participate and let the guesser know when they are getting close to guessing the right answer! In this game, you will need to get three suggestions from the audience. A chair is helpful to have for this game, but not technically required. \n \n'
              '<b>This game requires three players.</b> Two of them are interrogators/police, and the other player is the suspect who committed the crime. Once that it is decided which improvisers will be the interrogators, and which will be the suspect, the suspect needs to leave the performance space and go somewhere where they cannot hear anything being said inside. <b>This is imperative for the success of the game.</b> The suspect should have no idea what is being said by the other players or the audience. \n \n'
              'Once the suspect is in a place where they cannot hear anything, the two interrogators should get the following suggestions from the audience:\n \n'
              '1. <b>What crime the suspect committed.</b> This should NOT be a normal crime, like arson. It should be a funny fake crime. For example: \n'
              '\u2022 Illegal use of a rake\n'
              '\u2022 Talking dangerously fast with a French accent\n'
              '\u2022 Playing drums with chicken bones instead of drumsticks\n'
              '\u2022 Mixing BBQ sauce and ranch\n \n'
              '2. <b>The person they committed the crime with.</b> This is generally a celebrity, or someone famous. They can be alive or dead. Some examples are - Elon Musk, Kermit the Frog, Bugs Bunny, Dolly Parton, the Geico Gecko.\n \n'
              '3. <b>The place they fled to after committing the crime.</b> This can be a specific location, or just a country. Some examples are - The Metropolitan in NYC, Miami, Build-a-Bear Workshop HQ, France, Mars, Chick-fil-A.\n \n'
              'The way this works is that the interrogators know the crime the suspect committed, who they committed the crime with, and where they fled after, <b>but the suspect does not.</b> And the game here is the interrogators try to lead the suspect to all these answers.\n \n'
              '<b>The audience is critical in this game.</b> If the suspect is getting close or "warm" to the correct answers, the audience should snap their fingers. <b>This will let the suspect know they are guessing in the right direction.</b> If the suspect gets the answer correct, the audience should clap loudly, so they know they got it correct. \n \n'
              'Here is a short example of how this can go. But in a real game you would play this a little more slowly. \n \n'
              '<b>Suggestions - </b> the suspect committed the crime of <b>mixing BBQ sauce and ranch</b> with <b>Elon Musk</b> and then they fled to <b>Miami</b>.\n \n'
              'Now that the interrogators know the crime that the suspect committed, who they committed the crime with, and the place they fled to afterwards, it is time to bring the suspect back out and start the game. \n \n'
              'The suspect should come out and sit in a chair, while the interrogators do their interrogating. \n \n'
              '<b>Interrogator 1:</b> I can\'t believe you would treat two condiments this way.\n \n'
              '<b>Suspect:</b> That\'s right! and I would do it again! I always let ketchup and mustard expire!\n \n'
              '<b>Interrogator 2:</b> Well, we don\'t know anything about no ketchup and mustard...those are not the dipping sauces we\'ve got you locked up for.\n \n'
              '<b>Suspect:</b> Well, I do love BBQ sauce and ranch.\n \n'
              '<b>Audience:</b> <i>(snaps fingers)</i>\n \n'
              '<b>Interrogator 1:</b> Oh, we know you love BBQ sauce and ranch, but clearly not one at a time...you\'re disgusting, what you\'ve done.\n \n'
              '<b>Suspect:</b> That\'s right! I DO love the taste of BBQ sauce and ranch mixed together!\n \n'
              '<b>Audience:</b> <i>(claps wildly)</i>\n \n'
              '<b>Interrogator 2:</b> So you admit it! \n \n'
              '<b>Suspect:</b> That\'s right! I love the taste of BBQ sauce and ranch mixed together. I\'d do it again if I had the chance! \n \n'
              '<b>Audience:</b> <i>(claps more)</i> \n \n'
              '<b>Interrogator 1:</b> I can\'t believe you dragged your accomplice into this. Did you two dip fries in that disgusting combination in outer space?!\n \n'
              '<b>Suspect:</b> Yes, Neil Armstrong and I LOVE dipping fries in that combination in outer space.\n \n'
              '<b>Interrogator 1:</b> Ha! As if you were with a REAL astronaut, instead of some rich, wannabe astronaut.\n \n'
              '<b>Suspect:</b> What can I say? Will Smith was sure hungry for some BBQ sauce and ranch after shooting up all those aliens in Independence Day.\n \n'
              '<b>Interrogator 2:</b> Oh yeah, where did you read that? On Twitter????\n \n'
              '<b>Suspect:</b> Oh! Well, yeah, Elon Musk loves BBQ sauce and ranch just like you and me.\n \n'
              '<b>Audience:</b> <i>(claps wildly)</i>\n \n'
              '<b>Suspect:</b> That\'s right. Elon Musk and I were mixing BBQ sauce and ranch together. \n \n'
              '<b>Audience:</b> <i>(claps more)</i> \n \n'
              '<b>Interrogator 1:</b> And then of all the places in the world you could have fled to, on his fancy spaceship, I can\'t believe you chose here.\n \n'
              '<b>Interrogator 2:</b> Awfully hot choice if you ask me!\n \n'
              '<b>Suspect:</b> That\'s right, we fled to Texas!\n \n'
              '<b>Interrogator 2:</b> Liar! So....did you hide at Marco Rubio\'s house when you arrived?\n \n'
              '<b>Suspect:</b> How did you know we fled to Florida, the Sunshine State?\n \n'
              '<b>Audience:</b> <i>(snaps fingers)</i>\n \n'
              '<b>Interrogator 1:</b> But of all the places in Florida you could go to, why this one?\n \n'
              '<b>Suspect:</b> I love Miami!\n \n'
              '<b>Audience:</b> <i>(claps wildly)</i>\n \n'
              '<b>Suspect:</b> OK, you got me. Elon Musk and I were mixing our BBQ sauce and ranch dressing. And when we knew the fuzz was coming, we fled to Miami! \n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold)),
            'i': StyledTextTag(
                style: const TextStyle(fontStyle: FontStyle.italic))
          },
        ),
      ),
      GameDescription(
        title: 'mind meld',
        headers: const ['Circle Game', 'Warm Up Game', 'Emcee Not Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a great warm up game to get connected to your teammates before a show or get your creative word association juices flowing!\n \n'
              'All players stand in a circle. The game starts when two players think of the first word that pops in their head, say "got it", and raise their hand. Those two players then stand in the middle of the circle and look at each other while the rest of the circle counts down - "3, 2, 1" and then each of the two players say the word they were thinking of at the exact same time.\n \n'
              '<b>Now, everyone in the circle should think about what one word CONNECTS those two words.</b> When a word comes to mind, say "got it" and do the exact same thing. The first two players who say "got it" should step into the circle and look at each other. The rest of the circle counts down, "3, 2, 1" and both those players say what word they are thinking of simultaneously.\n \n'
              'The game ends when <b>both players in the circle say the exact same word!</b>\n \n'
              'Some rounds will go shockingly quick. Others will drag on until just moments before the end of time. Three rounds is usually a nice round number for this game. \n \n'
              '<b>Here are some notes:</b> \n'
              '\u2022 <b>The same word should not be repeated twice in the same round.</b> This is a slightly serious offense. If all the players are paying attention, none of them would repeat the same word. A variation of the same word can be said, but it is best if even that is avoided. If someone says a word that was already said, two new players should say "got it" based on the <i>previously said words</i>. That is part of the challenge of this game. \n \n'
              '\u2022 Even if you are a player who just said a word, you can say "got it" right after. However, be mindful of other players. Step up, step back! Give others a chance to get into the circle.\n \n'
              '\u2022 It is supposed to be "one" word you think of, but there is some flexibility here. For example, consider New Mexico, Milky Way, George Washington, etc. These are all acceptable words to say in this game.\n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
        title: 'one person monologue',
        headers: const ['Line Game', 'Performance Game', 'Emcee Not Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a fun opener for a long-form improv show, or just a great short form game to get the creative juices flowing! \n \n'
              'This game involves the entire cast telling a story, one at a time.\n \n'
              'All players stand in a line toward the middle or back of the stage. \n \n'
              'Then, the cast needs to get some suggestions. <b>The first suggestion is the name of a person</b>, the name of the protagonist in our story. It is usually something goofy like Timmy Hammerman or something. Then you need to <b>get a suggestion for what Timmy Hammerman is doing for the first time today</b>. Some examples are: \n'
              '\u2022 Going to a Taylor Swift concert \n'
              '\u2022 Changing their own oil \n'
              '\u2022 Trying out for the circus \n'
              '\u2022 Going to a college graduation party.\n \n'
              'Now, one player will decide to start the story. That player should stand front and center of the stage. They should choose a strong character and voice for that character and begin the story of when <b>Timmy Hammerman went to a Taylor Swift concert.</b> \n \n'
              'The first player should be given some time to establish the character and get the story going. But after a few minutes, another player should come tap the speaker on the shoulder. The old player goes back to the line. The new player will pick up the story EXACTLY where they left off. This is very, very important. Even if the current story teller was mid-sentence, <b>the new story teller need to finish the sentence before continuing the story</b>. But then the new player can continue the story and take it in whatever direction they want.\n \n'
              'And that\'s the game! Players should continue to tap whoever is speaking on the shoulder and continue the story. As the game goes on, the tapping should be faster and faster. \n \n'
              'Also, players are not limited to speaking only once. You can tag in, get tagged out, and then tag in again. \n \n'
              'But, just like similar group games, <b>be mindful of your other players.</b> Step up, step back! Give room for players who haven\'t jumped in yet! \n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
        title: 'one voice',
        headers: const [
          'Three Person Game',
          'Performance Game',
          'Emcee Not Needed'
        ],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a goofy interview where two improvisers speak at the same time to have "one voice." \n \n'
              'The two players acting as one voice will be interviewed about a book they just wrote on a topic that they specialize in. The topic suggestion should come from the audience. For example, honeybees, an emerging fashion trend, or stool-making. \n \n'
              'The third player plays a TV host and has the "one voice" as a guest on their show to talk about the book. \n \n'
              'The TV host will open the game by introducing themselves with a fun pretend name and a fun name for the the TV show they are hosting. \n \n'
              'The two "one voice" players should sit very close to one another and make eye contact when they speak.  Some players like to hold hands to escalate the appearance of being one person.'
              'The two "on voice" players will speak at the exact same time. This is difficult, because this is improv, so neither player knows what the other improviser wants to say.'
              'When this game begins, the host should introduce the guest and their new book. \n \n'
              'Here\'s an example:'
              'Host: Thank you for joining me, your host, Abbey McAbberson on my weekly television program, "Our Green Friends". Our guest today is here to talk about their new book. Please, introduce yourself \n \n'
              'The characters playing the one voice should always follow the pattern of re-stating their name and their book. This helps get the two one voice characters some easy practice speaking at the same time.'
              '<b>One Voice:</b> Hi. My name is Dr. Hamilton Humphries. My new book is called "The Lives of Salamanders" \n \n'
              '<b>Host:</b> How long have you been studying salamanders? \n \n'
              '<b>One Voice:</b> I have been studying salamanders for over 10 years. \n \n'
              '<b>Host:</b> Tell us a little more about your background with salamanders. \n \n'
              'And on and on. \n \n'
              'Here are some notes: \n \n'
              '\u2022 This game is very goofy and difficult, but that is what makes it fun \n'
              '\u2022 Inevitably, one person will "lead" the conversation while the other one tries to keep up and say the same words. Ideally the "leader" of the dialogue will alternate between answers, or maybe even between sentences! \n'
              '\u2022 It will take a lot of practice to get good at this game. It is helpful to talk slowly and enunciate clearly. This will help your partner know where you are taking the dialogue. \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      ),
      GameDescription(
          title: 'sit stand lean',
          headers: const ['Line Game', 'Performance Game', 'Emcee Helpful'],
          body: StyledText(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            text:
                'This is a classic performance game with three players. This game needs one chair or a bench. \n \n'
                'The three players will improvise a scene with one caveat. At all times, one player must be sitting, one player must be standing, and one player must be leaning. The leaning player can be leaning on anything - a wall, a chair, another player, or even the ground. \n \n'
                'Now, <b>this game is only fun and entertaining if the players are constantly changing positions</b>, forcing the other players to take new positions. \n \n'
                'An emcee or the audience can come in handy here. If they notice that two players are both sitting (for example), they can make a buzzer sound, so the players know one of them has to change positions. \n \n'
                'And that\'s it! That\'s the game. \n \n',
            tags: {
              'b': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.bold))
            },
          )),
      GameDescription(
          title: 'story story die',
          headers: const [
            'Line Game',
            'Performance Game',
            'Elimination Game',
            'Emcee Needed'
          ],
          body: StyledText(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            text:
                'This is a fun performance game, and is best played with at least 5 people.'
                'This game is similar to "one person monologue", but has an elimination component to it.'
                'All players stand in a line, near the front of the stage. The emcee will get a suggestion from the crowd for a character\'s name. They will als get a suggestion for something that character is doing for the first time today. \n \n'
                'Then, the emcee will point to one of the players, and they will begin telling the story of how - for example - Paul the Frog went about delivering his butter. The emcee will then point to a player to start the story. After a while, the emcee will point to a different player, who will need to <b>pick up the story exactly after the last player</b>. Each player will need to continue the story just as it was left off, continuing the thought or sentence as perfectly as possible. Even if the emcee switches story tellers mid-sentence, the new story teller must continue the dialogue so it fits with what the last story teller was saying. \n \n'
                '<b>Now, here\'s where the elimination part comes in.</b> If the player stumbles, or doesn\'t continue the sentence correctly, then the crowd can yell "DIE!!!!". And if the emcee thinks the calls for death from the audience are satisfactory, the player shall act out a painful, slow death, and fall to the ground and walk/crawl/limp off stage. \n \n'
                'The emcee will pick a new player to continue the story where it left off. The story and eliminations continue until there is only one remaining player. And that player is the winner of the game! \n \n',
            tags: {
              'b': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.bold))
            },
          )),
      GameDescription(
          title: 'three line scenes',
          headers: const ['Warm Up Game', 'No Emcee Needed'],
          body: StyledText(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            text:
                'This game is best played if you have a class setting, or at least 6 people. In this game, players take turns doing very short two person scenes. The scenes are so short that they only have three lines! <b>The goal of this game is to establish the relationship of the players in the scene, the location of the scene, and what they\'re doing.</b> \n \n'
                'Divide all the players into two groups. Half the group goes to the left of the stage, and the other half goes to the right of the stage. The players should stand in a line so that one person is in front and each player lines up behind them. \n \n'
                'Pick a side that will initiate the scene. Let\'s say the left side. The first player from the left line will go out into the middle of the stage and begin an action. The player from the right side should observe the action for a few seconds. Then the player from the right line should go onto the stage and either mirror their action, or do some complimentary action. The right player then says the first line. ONLY ONE LINE. It can be more than one sentence, but only a few. \n \n'
                'The left player will then respond with ONE LINE. Again, it can be more than one sentence, but only a couple. \n \n'
                'Then the right player will respond with ONE LINE. That\'s why it is called Three Line Scenes. \n \n'
                'Then the scene is over. <b>The player that came from the left line should go to the back of the line on the right.</b> The player that came from the right should go to the end of the line on the left. This ensures everyone has a turn initiating the action AND initiating the dialogue in Three Line Scenes! \n \n'
                'Again, the goal of this exercise is to establish as much information as possible - WHO the characters are, WHERE they are, and WHAT they\'re doing in <i>only three lines</i>. This exercise is to help players establish the basic universe of a scene as quickly as possible - for them, and for the audience! \n \n'
                '<b>Left Player:</b> <i>(goes onto the stage and starts raking the ground)</i> \n \n'
                '<b>Right Player:</b> <i>(comes onto the stage and starts raking the ground next to Left Player)</i> \n \n'
                '<b>Right Player:</b> Our family farm is going to have a great turnip season this year, Sally, I can feel it! \n \n'
                '<b>Left Player:</b> I sure hope so Bill, I want to be able to buy the kids a new Playstation X for Christmas this year! \n \n'
                '<b>Right Player:</b> And if our crop of turnips really turns out well, maybe we can get a second Playstation X just for us! \n \n'
                'After just three lines, we know in this scene we have a husband and wife who are tending to their crop of turnips on their family farm, and they want to give their kids a good Christmas. \n \n'
                'Are are a few more notes: \n'
                '\u2022 <b>Don\'t ask questions!</b> You only have 3 lines - don\'t waste one asking questions. You should help your scene partner quickly establish the scene! \n'
                '\u2022 Even if you have no idea what action your scene partner is doing, do your best to mirror the action, or do a complimentary action. '
                '\u2022 Try to make the dialogue natural. Don\'t try to cram everything into one line! For example, if Right Player would have come out and said "Sally, my wife, I sure hope our turnips have a good harvest so we can buy a Playstation X for our kids, and one for us!" - that would have been unnatural, and too much! If not all three pieces of the scene are established after three lines, that\'s OK! It\'s just an exercise. \n \n',
            tags: {
              'b': StyledTextTag(
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              'i': StyledTextTag(
                  style: const TextStyle(fontStyle: FontStyle.italic))
            },
          )),
      GameDescription(
        title: 'whoosh',
        headers: const ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text:
              'This is a classic beginner improv warmup game. But it is fun no matter how experienced you are! \n \n'
              'All players stand in a circle. One player begins by holding an invisible ball of energy. The person who starts off with the ball must pass the ball to the person immediately to their left or right, saying WHOOSH as they pass it.\n \n'
              'The ball is passed around the circle, from one player to the next. The ball of energy must travel in the same direction it was started - it must always be passed to the person next to the person with the ball of energy. And they must say WHOOSH when they pass it.\n \n'
              'That is the start of the game, and then other fun rules can then be applied to make the game more interesting and fun.\n \n'
              'Here are the next basic rules to apply after you have the first one down:'
              '\u2022 When the ball of energy is passed to you, put up your hands up - with your palms facing the person who is passing you the ball - and say WHOA! This will force the ball to go back to the previous player and send the ball back the way it came\n \n'
              '\u2022 Hold up your hand over the next person\'s head and say "ramp", which will then skip the next person, but keep the ball going in its same direction of travel\n \n'
              'Now, you can add on even MORE rules to make the game more fun. All these choices can be made <i>only by the person who has the ball of energy.</i>\n \n'
              '\u2022 Say "300" and then everyone in the circle yells THIS IS SPARTA and gives and kicks the air in front of them. The player who called 300 will then pass the ball in the same direction it was traveling\n \n'
              '\u2022 Say "Rainbow &lt;person in the circle&gt;". Everyone will then look at that person with glowing appreciation and clap for them. The named person shall smile and bask in their temporary glory. The person who called "Rainbow" will then pass the ball in the same direction it was traveling\n \n'
              '\u2022 Say "Bunny &lt;person in the circle&gt;". The person called will then hold their fingers up by their mouth and wiggle them like whiskers. The players to the left and the right of the player called will each use their fingers to put "bunny ears" on them. All three players will say "bunny bunny bunny bunny bunny bunny" for a few beats. The person who called "Bunny" will then pass the ball in the same direction it was traveling\n \n'
              '\u2022 You can make up even more rules that can be used!',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold)),
            'i': StyledTextTag(
                style: const TextStyle(fontStyle: FontStyle.italic))
          },
        ),
      ),
      GameDescription(
        title: 'zip zap zop',
        headers: const ['Warm Up Game', 'Circle Game', 'No Emcee Needed'],
        body: StyledText(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          text: 'This is a classic Improv 101 game, and is loads of fun. \n \n'
              'All players stand in a circle. One player (Player A) begins by making eye contact with and pointing at another player (Player B) and saying "zip." Then Player B looks at another player (Player C) and says "zap." Then Player C looks at another player (Player D) and says "zop." Then Player D looks at Player E and says "zip", and the whole thing starts all over again. And that\'s the whole game. \n \n'
              'If anyone messes up and says "zip" when they should have sad "zop", the game momentarily ends and everyone should clap and celebrate the mistake. \n \n'
              '<b>This game is all about making eye contact with your partner and listening.</b> \n \n'
              '<b>Here are a few other notes: </b> \n'
              '\u2022 If someone sends you a zip, you can send them a zap right back. You are not required to send the zap to a different person than who sent you the zip. \n \n'
              '\u2022 For added complexity, add a "beep" and a "bop" to this game. One person starts a "beep" and looks at the person to their left. That person can either look at the person to their left and say "beep", or look back to the person to their right and say "bop". "Beep" to the left, "bop" to the right. This beep and bop should go around the circle while zip, zap and zop are being sent across the circle. \n \n',
          tags: {
            'b': StyledTextTag(
                style: const TextStyle(fontWeight: FontWeight.bold))
          },
        ),
      )
    ];
    return games;
  }
}
