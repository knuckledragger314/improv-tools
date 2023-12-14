import '../../widgets/game_template.dart';

abstract class AllGames {
  static List<GameDescription> getAllGames() {
    var games = [
      const GameDescription(
          title: 'abc',
          headers: ['Two Person Game', 'Performance Game', 'No Emcee Needed'],
          body:
              'This is a game where the two players in the game act out a straight scene based on an audience suggestion. The only caveat is, that the '
              'first letter of each actors dialogue must happen in alphabetical order.The scene is finished when the entire alphabet is complete. Here is a partial example. \n \n'
              'Player A: Arrrrgh! I am so upset!\n \n'
              'Player B: Baby, I know you are sad you lost your job!\n \n'
              'Player A: Cant I do anything right?\n \n'
              'Player B: Don\'t worry, you will find another job soon. I love you!\n \n \n'
              'Here are a few other notes-- \n \n'
              'The dialogue does not necessarily need to start on the letter A. It is more fun if you do NOT start on the letter A. If you are practicing this for the first time, it is fine to start on A.\n \n'
              'If you are performing this game in a show, it is fun to ask the crowd what letter they should start on. Another way to play this game in a show is to have several pairs of actors play this game, and see who can get through the alphabet the fastest and/or who can get through the alphabet in under 60/90/120 seconds.\n \n'
              'As an improviser, this game alone is a good reason to study up on words that start with the letter X, Q, and Z.'),
      const GameDescription(
          title: 'buzzer debate',
          headers: ['Line Game', 'Performance Game', 'Emcee Needed'],
          body:
              'This is a fun game that can use a strong emcee, and two chairs. A bell can be handy, but is not required.\n \n'
              'In this game, one player will be moderating a "debate" between the other two players who both are fake candidates for a fake position in a fake city. The position and the city are encouraged to be made up. Fore example, Official Orange Juice Taster in Steve Martin City.\n \n'
              'The candidates each should choose a very strong character choice for themselves. They can be an 8-year old boy, a quiet librarian, a boisterous surgeon, a retired cowboy, whatever. But they should make a strong character choice to make this game fun.\n \n'
              'The setting for this game is always a town hall-like setting. The game begins when the facilitator addresses the crowd, introduces themself, and mentions the position that the candidates are debating for. Then, the facilitator will allow the first candidate to introduce themselves, and talk about why they will make the best Official OrangeJuice Taster for the residents of Steve Martin City.\n \n'
              'Now, at ANY TIME during this game, the emcee can make a buzzer sound, which forces the player to change the last thing they said. They can do this to the candidates, but also the facilitator!\n \n'
              'Here is an example\n \n'
              'Candidate: Well, where I am from, which is the great state of Montana-\n \n'
              'Emcee: Buzz!\n \n'
              'Candidate: Louisiana\n \n'
              'Emcee: Buzz!\n \n'
              'Candidate: Russia\n \n'
              'Emcee: Buzz!\n \n'
              'Candidate: Outer Space\n \n'
              'Here the emcee no longer buzzes, and the candidate must continue with this new truth - that they are from the great state of Outer Space.\n \n'
              'The point of this game is to throw the players off and force them out of their comfort zone. The players will inevitable have a little script for themselves and the characters they have created. It is up to the emcee to try to throw them off and get them to say weird things that they then have to honor as a truth in the scene.\n \n'
              'Also, these scenes should start off fairly respectable. Each candidate should give the other candidate a good 1-3 minutes to speak to introduce themselves. But as the game goes on, there can and should be people talking over one another, interrupting and trying to get the last word in - just like real political debates. It is up to the facilitator to try to keep the debate under control and not devolve into a name-calling shouting match.'),
      const GameDescription(
          title: 'challenge',
          headers: ['Line Game', 'Performance Game', 'Emcee Needed'],
          body:
              'This is a timed, emcee game. A strong emcee familiar with the game is needed in order for this game to go as well as possible. All players stand in line on stage. The emcee will get an unpopular opinion (politically correct, please) from the audience. Then the emcee will ask the players if any of them have a strong opinion about that unpopular opinion - they can agree or disagree. \n \n'
              'After hearing from all the players who have raised their hand, the emcee will decide who they want to hear from first. That player, Player A, will then go to the center of the stage, a few steps in front of the line players. It should look like one lead singer up front and a choir of backup singers behind them. Then Player A will begin speaking on the topic. \n \n'
              'At anytime, any of the players behind them can raise their hand and say CHALLENGE. Then once the emcee calls on them - and ONLY after the emcee has called on them - can that player then pitch why they are challenging Player A. After the emcee has heard all the challenges at that moment, the emcee can decide who he wants to hear from next. Or, the emcee may not like any of the challenges and will let Player A continue talking. Basically, the point of this game is be creative and argue a bunch and sell your argument to the emcee. \n \n'
              'Here is an example of how this could go.\n \n'
              'Unpopular opinion - broccoli is tasty. \n \n'
              'Emcee: Which of the players have strong feelings about this?\n \n'
              'Player A (after being called on): Broccoli is not tasty. My parents made me eat broccoli as a kid and it was over-steamed and soft and gross.\n \n'
              'Player B (after being called on): Broccoli is delicious! I love roasted broccoli tossed in olive oil, salt and pepper!\n \n'
              'Emcee: OK, I want to hear more about Player A and their gross broccoli they had to eat as a kid. Come on up Player A Player A then steps up in front.\n \n'
              'Player A: I still have nightmares about the broccoli my parents made me eat. I love my parents, but they are the worst cooks. My parents made me eat over-steamed, unseasoned, limp, gross broccoli all the time and I hated it! I swear, that brocc-\n \n'
              'Player B: Challenge!\n \n'
              'Player C: Challenge!\n \n'
              'Player D: Challenge!\n \n'
              'Player E: Challenge!\n \n'
              'Player F: Challenge!\n \n'
              'Here you can see all the different types of challenges this game can have.\n \n'
              'Player B: You cannot have nightmares about broccoli. Nightmares are for sharks, spiders, falling off buildings and serious stuff like that!\n \n'
              'Player C: I know Player As parents, and they are NOT the worst cooks. They are great cooks (Player C can say this even if they have never ever met Player As parents.)\n \n'
              'Player D: Over-steamed, unseasoned, limp broccoli is my favorite kind of broccoli. It is not gross at all.\n \n'
              'Player E: I am done hearing about broccoli and I would like to talk about how awesome the new Spiderman movie is.\n \n'
              'Player F: Player A does not love their parents. I have heard them bad mouth them sooo many times!\n \n'
              'The emcee can choose any of these challenges. As you can see,challenges can be completely arbitrary. It is up to the emcee to decide who gets to argue next, and their decision is completely subjective.\n \n'
              'The winner of Challenge is whoever is speaking when time runs out. A typical game of Challenge only lasts ONE MINUTE, but the emcee stops the clock while they are hearing challenges. So, the game usually lasts closer to 10 minutes.\n \n'
              'Here are a few other notes'),
      const GameDescription(
          title: 'character cascade',
          headers: ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
          body:
              'This game is basically like a game of "telephone," but you\'re passing around a character instead of just a sentence.\n \n'
              'All players stand in a circle. The first player creates a character and does some body movements and says a line with that character\'s voice. For example, maybe they will shape their face so it is full of anguish,  clasp their hands together and beg aloud, "Please, please. I promise I\'ll pay you next week" \n \n'
              'Then, the player immediately to their left does their best to do the exact same movements, posture, inflection, speech, syntax, etc. as the person who just acted out the line. Each player tries their best to mimic the player\'s action immediately before them, not the person who started the character cascade. The point is, inevitably, by the time it gets around back to the beginning, the character is quite different than how it started. The character should go back around to the person who started it. That means for a given character, the same person starts and finishes the cascade. Then, the next player starts a new character.\n \n'
              'Here are a few other notes.\n \n'
              'Most people insist on NOT mimicking the player before them, but instead insist on making the character more dramatic, or whatever. Please refrain from correcting this behavior.'),
      const GameDescription(
          title: 'count to 21',
          headers: ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
          body:
              'This is a bonding and listening game that is often used to end a class.\n \n'
              'All players stand in a circle with their eyes closed. Then, the players will count to 21, or any other arbitrary number. First a player will say "one", and then a player will say "two" and so on, until they reach 20.\n \n'
              'However, anytime two players speak to say a number at the exact same time, they must start all over at "one." Players must not rush, listen, step up/step back and become one to count to 21.\n \n'
              'Here are a few other notes'),
      const GameDescription(
          title: 'emo interview',
          headers: [
            'Two Person Game',
            'High Energy Game',
            'Line-ish Game',
            'No Emcee Needed'
          ],
          body:
              'First, the emcee needs to have a big list of EMOTIONS. In this game, EMOTIONS is used very, very loosely. The emcee should have their own list of EMOTIONS to start with, but they should also field more EMOTIONS from the audience. Here is a list of ACCEPTABLE emotions for this game - joyous, angry, depressed, paranoid, heartbroken, hungry, flirtatious, orange, excited. Even though the game is called Emotional Interview, really its more like adjective interview.\n \n'
              'Now that you have your list of emotions, it is time for the game. There is one interviewer in this game, and there is an interviewee. Source the crowd for what job the interviewer is interviewing for. It is more fun if the position is unconventional. For example, a stamp licker or a watermelon quality control professional. Librarian or doctor is fine too, but wouldn\'t you rather see an interview for a rodeo clown rather than a call center customer associate representative?\n \n'
              'When the scene starts, you need two chairs. The interviewer should already be sitting in the chair. After the scene starts, the interviewee should walk through the door and come and shake hands with the interviewer. From the beginning, the interactions between the interviewer and the interviewee should more or less be realistic.\n \n'
              'Hi, are you Joe? Yes, you must be Stacey. I am here for the interview, yada yada yada. Sit down, have a seat, here is my resume.\n \n'
              'Interviewer: So, tell me a little bit about yourself\n \n'
              'Emcee: paranoid\n \n'
              'Interviewee: Wait, why do you want to know about me? Who are you? Why are you out to get me?\n \n'
              'Interviewer: Im not out to get you.Ok, how about you just tell me about your last job\n \n'
              'Emcee: flirtatious\n \n'
              'Interviewee: (walks over and starts massaging the interviewer) Oh, Im so glad you asked about my last job. Oh, they didn\'t like the way I...went about my...business...\n \n'
              'and on and on\n \n'
              'When the scene is ready to end, the emcee can get on the mic and say GOTTA PEE, GOTTA PEE. Or make some allusion to having to urinate or go home to turn off some important appliance, like a stove.\n \n'
              'If more than two actors are involved, this is when the next actor would come on stage to be interviewed.\n \n'
              'Here are a few other notes'),
      const GameDescription(
          title: 'fictional forum',
          headers: ['Four Person Game', 'Performance Game', 'Emcee Not Needed'],
          body:
              'This is a goofy panel discussion on random topics with celebrities.\n \n'
              'In the four person version of this game, there is one host and three panelists. But, you also could have more panelists or more hosts!\n \n'
              'The group will need to get a suggestion for two topics that the panelists will be discussing. They should be something odd, like taxes and chocolate coins. You want two different topics so the host can switch topics if one of them seems to hit a wall.\n \n'
              'Also, we need a character suggestion for each of the panelists. Here are some examples - Madonna, Squidward, a toaster, a carrot farmer, Rocky (of Rocky and Bullwinkle), a greedy stock trader.\n \n'
              'If the player given a character has no idea who they were given, they should just do their best to pick a character it makes them think of, and go for it! Just like a good improviser does!\n \n'
              'Now the game can begin. The host begins by introducing their made up television show, and introducing the topics they will be interviewing their guests about.Then, the interviewer should ask their guests about how their thoughts on one of the topics.\n \n'
              'The panelists should be sure to stay in character and talk about these topics like their character would. Have fun. Be goofy. Don\'t be afraid to move around the room or be distracting. It is up to the host to keep the show under control and the panelists on topic! It is up to the panelists to make the show as goofy and not on topic as possible!'),
      const GameDescription(
          title: 'five things',
          headers: ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
          body:
              'All players stand in a circle. One player starts and names a player and says, "Player A, give me five things that..." And Player A has to name the five things. And even if the subject is unknown to player A, the point of this game is to name the five things with confidence. After each thing is named, the rest of the group counts.\n \n'
              'Below is an example\n \n'
              'Janice, give me five types of hot air balloons.\n \n'
              'Janice: Hot air balloons made of plastic!\n \n'
              'Group: One!\n \n'
              'Janice: Hot air balloons made of wood!\n \n'
              'Group: Two!\n \n'
              'Janice: Really colorful hot air balloons!\n \n'
              'Group: Three!\n \n'
              'Janice: Hot air balloons that have roller coasters inside of them!\n \n'
              'Group: Four!\n \n'
              'Janice: Hot air balloon spaceships!\n \n'
              'Group: Five! Five Things!\n \n'
              'Then Janice picks another player and asks them to give five other things.\n \n'
              'People can take turns by going in order around the circle, or they can be randomly picked. But, it is also nice if everyone gets to go once before people start to go a second time.\n \n'
              'The most important thing to remember is the person naming the things should do so confidently. Also, it is more fun if you are able to get creative and goofy. If you\'re asked to name five types of wood, you don\'t have to just say pine, oak, maple, cherry, and pressure treated.You can say amazing wood, that wood they make baseball bats out of, orange wood, or soundproof wood! Even if you have no idea what any types of wood are, just make it up and say it confidently, like you know your heart that this type of wood exists, and it deserves to be named!'),
      const GameDescription(
          title: 'four square',
          headers: ['Line Game', 'Performance Game', 'Emcee Needed'],
          body:
              'This is a fun performance game that is great to practice patterns, jumps in time and heightening! An emcee is needed. A bell is optional.\n \n'
              'The four players stand in a square formation. All four players face the crowd, with two in front, and two directly behind them. During any given moment, the players in front will be in a scene. The players in back will be quiet and just stand there. During the course of the game, the players will rotate. So, there are four different scenes in this game. All players will be in two different scenes.\n \n'
              'The emcee should get a suggestion for each set of players. This is up to the emcee, but a common way to do this is get a suggestion for "how do these two people know each other" for the first pair of players. Then ask the players to rotate one spot. For the next pair, get a suggestion for "where are these two people". For the third pair, get a suggestion for "what are problem are these two trying to solve." And for the last pair, just get a one word suggestion.\n \n'
              'After all the suggestions have been gotten, rotate through every pair of players and have them repeat the suggestion that will inspire their scene. This is a helpful reminder to the audience, the players, and the emcee.\n \n'
              'Generally speaking, each pair of actors will get 3 chances to play in their scene, but there is not a hard and fast rule on this. It also depends on the emcee decides to do the rotating. Some emcees prefer to just say "rotate", and the players all rotate one spot at a time Other emcees are more tricky, and will say "two spots left" or "3 spots right." This second method can cause a little more chaos but is a lot of fun to watch because players will wind up bumping into each other.\n \n'
              'The secret to this game is to make big changes to the scene each time a scene is revisited. For example, let\'s say in an example two people are on a first day. In the second scene, they could be getting married. Then in the third scene they could be getting divorced.\n \n'
              'For another example, let\'s say the first scene is about two strawberry pickers. The next time that scene is revisited, they could be working in a auto parts store together. Then in the last scene, they are bosses of a strawberry corporation.\n \n'
              'In one last example, let\'s say two people are co-workers at a normal desk job. In the second scene, one of them has gotten promoted and is the boss of the second person. In the third scene, both people have gotten fired for spending too much time pranking one another instead of working.\n \n'
              'The main thing is that when you revisit a scene, the players should not just continue where the last scene left off. It should jump forward in time, escalate or heighten the game, or change location with the same basic circumstances as before.\n \n'
              'This is also a very rare game in improv where you have time, as a player, to plan your next scene. That is totally in this game, since you have time to plan your next move while you are in the back and not in the scene.'),
      const GameDescription(
          title: 'freeze tag',
          headers: ['Line Game', 'High Energy Game', 'No Emcee Needed'],
          body:
              'All players stand at the back of the stage of off stage over to the sides. Two players start a two person scene in the middle of the stage. From other players not on the stage, get two keys that are on a keyboard as a get-for. The two players should each start in the shape of one of those keys. They should have a normal two peron scene, but should make big movements. After a few minutes, anyone from off stage can clap and say "FREEZE!" Both players on stage should freeze and stop talking. Then, the player who said "FREEZE" should assume the exact same position of one of the two players, and start a brand new two-person scene.\n \n'
              'This game requires big movements and interesting poses from its players, giving the players off stage an opportunity to interpret their position as something different. This game is not fun if both players are just "talking heads" on the stage.\n \n'
              'Here are a few other notes'),
      const GameDescription(
          title: 'interrogation',
          headers: [
            'Three Person Game',
            'Performance Game',
            'Guessing Game',
            'Emcee Helpful'
          ],
          body:
              'This is a GUESSING game. Audience members are needed to  participate and let the guesser know when they are getting close to guessing the right answer! In this game, you will need to get three suggestions from the audience. This game requires 3 players. Two of them are interrogators/police, and the other player is the suspect who committed the crime. Once that is decided, the suspect needs to leave the performance space and go somewhere where they cannot hear anything being said inside. This is imperative for the success of the game. The suspect should have no idea what is being said by the other players or the audience. Once the suspect is in a place where they cannot hear anything, the two interrogators should get the following suggestions from the audience:\n \n'
              '1. What crime the suspect committed. This should not be a normal crime, like arson. It should be a funny fake crime, like, say, "illegal use of a rake" or "talking too fast" or "playing drums at night" or "mixing ranch and bbq sauce".\n \n'
              '2. The person they committed the crime with. This is generally a celebrity, or someone famous. They can be alive or dead. Some examples are - Elon Musk, Kermit the Frog, Bugs Bunny, Dolly Parton, the Geico Gecko.\n \n'
              '3. The place they fled to after committing the crime. This can be a specific location, or just a country. Some examples are - The Metropolitan in NYC, Miami, Build a Bear Workshop HQ, France, Mars.\n \n'
              'The way this works is that the interrogators know the crime the suspect committed, who they committed the crime with, and where they fled after, but the suspect does not. And the game here is the interrogators try to lead the suspect to all these answers. The audience is critical in this game. If the suspect is getting close or "warm" to the correct answers, the audience should snap their fingers. This will let the suspect know they are guessing in the right direction. If the suspect gets the answer correct, the audience should clap loudly, so they know they got it correct. Here is a very quick example of how this can go. But in a real game you would play this a little more slowly. Suggestions - the Suspect committed the crime of "mixing ranch and bbq sauce" with Elon Musk and then they fled to Miami.\n \n'
              'Interrogator 1: I can\'t believe you would treat two condiments this way.\n \n'
              'Suspect: That\'s right! and I would do it again! I always let ketchup and mustard expire!\n \n'
              'Interrogator 2: Well we don\'t know anything about no ketchup and mustard...these are dipping sauces we\'ve got you locked up for\n \n'
              'Suspect: Well I do love BBQ sauce and ranch.\n \n'
              'Audience: (snaps fingers)\n \n'
              'Interrogator 1: Oh we know you love BBQ sauce and ranch, but clearly not one at a time...you\'re disgusting, what you\'ve done.\n \n'
              'Suspect: That\'s right! I DO love the taste of BBQ sauce and ranch mixed together.\n \n'
              'Audience: (claps wildly)\n \n'
              'Interrogator 2: So you admit it! You did mix together BBQ sauce and ranch. I can\'t believe you dragged your accomplis into this. Did you two dip fries in that disgusting combination in outer space?!\n \n'
              'Suspect: Yes, Neil Armstrong and I LOVE dipping fries in that combination in outer space.\n \n'
              'Interrogator 1: Ha! As if you were with a REAL astronaut, instead of some rich, wannabe astronaut.\n \n'
              'Suspect: Well, Will Smith was sure hungry for some ranch and BBQ sauce after shooting up all those aliens in Independence Day.\n \n'
              'Interrogator 2: Oh yeah, where did you read that? On Twitter????\n \n'
              'Suspect: Oh, Elon Musk loves ranch and BBQ sauce just like you and me\n \n'
              'Audience: (claps wildly)\n \n'
              'Interrogator 1: That\'s right. You and Elon Musk got together and mixed ranch and BBQ sauce. And then of all the places in the world you could have fled to, on his fancy spaceship, I can\'t believe you chose here.\n \n'
              'Interrogator 2: Awfully hot choice if you ask me!\n \n'
              'Suspect: That\'s right, we fled to Texas!\n \n'
              'Interrogator 2: Liar! So....did you hide at Marco Rubio\'s house when you arrived?\n \n'
              'Suspect: How did you know we fled to Florida, the Sunshine State?\n \n'
              'Audience: (snaps fingers)\n \n'
              'Interrogator 1: But of all the places in Florida you could go to, why this one?\n \n'
              'Suspect: I love Miami!\n \n'
              'Audience: (claps wildly)\n \n'
              'Suspect: OK, you got me. Elon Musk and I were mixing our ranch dressing and BBQ sauce. And when we knew the fuzz was coming, we fled to Miami!'),
      const GameDescription(
          title: 'mind meld',
          headers: ['Circle Game', 'Warm Up Game', 'Emcee Not Needed'],
          body:
              'This is a great warm up game to get connected to your teammates before a show or get your creative word-association juices flowing!\n \n'
              'All players stand in a circle. The first two players to think of a single word, say "got it" and raise their hand. Those two players then stand in the middle of the circle and look at each other while the rest of the circles counts down - "3, 2, 1" and then each of the two players say the word they were thinking of at the exact same time.\n \n'
              'Now, everyone in the circle should think about what one word CONNECTS those two words. When a word comes to mind, say "got it" and do the exact same thing. The first two players who say "got it" should step into the circle and look at each other. The rest of the circles counts down "3, 2, 1" and both those players say what word they are thinking of.\n \n'
              'The game ends when both players in the circle say the exact same word!\n \n'
              'Some rounds will go shockingly quick. Others will drag on until just moments before the end of time. Three rounds is usually a nice round number for this game. Here are some notes\n \n'
              'Make these bullets\n \n'
              'Even if you are a player who just said a word, you can say "got it" right after. However, be mindful of other players. Step up, step back! Give others a chance to get into the circle.\n \n'
              'It is supposed to be "one" word you think of, but there is some flexibility here. For example, consider New Mexico, Milky Way, GeorgeWashington, etc. These are all acceptable words to say in this game.\n \n'
              'The same word should not be repeated twice in the same round. This is a slightly more serious offense. A variation of the same word can be said, but the game should not end if the exact word was already said. Two new players should say "got it" based on the previously said words.That is part of the challenge of this game.'),
      const GameDescription(
          title: 'one person monologue',
          headers: ['Line Game', 'Performance Game', 'Emcee Not Needed'],
          body:
              'This is a fun opener for a long-form format, or just a great short form game to get the creative juices flowing!'
              'This game involves the entire ensemble telling a story, one at a time.\n \n'
              'All players stand in a line toward the middle or back of the stage.'
              'Then the ensemble needs to get a suggestion. Usually it is the name of a person, something goofy like Timmy Hammerman or something. Then you need to get a suggestion for what Timmy Hammerman is doing for the first time today. For example, changing their own oil or trying out for the circus, or going to a college graduation party.\n \n'
              'Now, one brave player will decide to start the story. That player should stand front and center of the stage. They should choose a strong character and voice for that character and begin the story of the day Timmy Hammerman went to a Britney Spears concert.'
              'The first player should be given some time to establish the character and get the story going. But after a few minutes, another player should come tap the speaker on the shoulder. The old player goes back to the line. The new player will pick up the story exactly where they left off. They need to finish the sentence if the first player was in the middle of it. But then the new player can continue the story and take it in whatever direction they want.\n \n'
              'And that\'s the game! Players should continue to tap whoever is speaking on the shoulder and continue the story. As the game goes on, the tapping should be faster and faster. '
              'Also, players are not limited to speaking only once. You can tag in, get tagged out, and then tag in again.'
              'But, just like similar group games, be mindful of your other players. Step up, step back! Give room for players who haven\'t jumped in yet!'),
      const GameDescription(
          title: 'one voice',
          headers: [
            'Three Person Game',
            'Performance Game',
            'Emcee Not Needed'
          ],
          body:
              //FIX ME FIX ME FIX ME
              'This is a goofy interview where two improvisers speak at the same time to have "one voice." \n \n'
              'The two players acting as one voice will be interviewed about a book they just wrote on a topic that they specialize in. The topic suggestion should come from the audience. The third player plays a TV host and has the "one voice" as a guest on their show to talk about the book. \n \n'
              'The TV host will open the game by introducing themselves with a fun pretend name and a fun name for the the TV show they are hosting. \n \n'),
      const GameDescription(
          title: 'sit stand lean',
          headers: ['Line Game', 'Performance Game', 'Emcee Helpful'],
          body:
              'This is a classic performance game with three players. One chair is also needed, but a bench or two chairs also works. \n \n'
              'The three players will play a "straight scene" with one caveat. At all times, one player must be sitting, one player must be standing, and one player must be leaning. The leaning player can be leaning on anything - a wall, a chair, another player, or even the ground (probably?). \n \n'
              'Now, this game is only fun and entertaining if the players are constantly changing positions, forcing the other players to take new positions. \n \n'
              'An emcee or the audience can come in handy here. If they notice that two players are both sitting (for example), they can make a buzzer sound, so the players know one of them has to change positions.'),
      const GameDescription(
          title: 'story story die',
          headers: [
            'Line Game',
            'Performance Game',
            'Elimination Game',
            'Emcee Needed'
          ],
          body:
              'All players stand in a line, near the front of the stage. The emcee will get a suggestion from the crowd for a character\'s name. They will als get a suggestion for something that character is doing for the first time today. \n \n'
              'Then, the emcee will point to one of the players, and they will begin telling the story of how Paul the Frog went about delivering his first 50 gallon drum of butter that day (or whatever the suggestion was). The emcee will then point to different players one by one. Each player will need to continue the story just as it was left off, continuing the thought or sentence as perfectly as possible. \n \n'
              'Now, here\'s where the elimination part comes in. If the player stumbles, or doesn\'t continue the sentence correctly, then the crowd can yell "DIE!!!!". And if the emcee thinks the calls for death from the audience are satisfactory, the player shall act out a painful, slow death, and fall to the ground and walk/crawl/limp off stage. The emcee will pick a new player to continue the story where it left off. The story continues, the game continues, and the eliminations continue until there is only one remaining player. And that player is the winner of the game!'),
      const GameDescription(
          title: 'three line scenes',
          headers: ['Warm Up Game', 'No Emcee Needed'],
          body:
              'This game is best played if you have a class setting, or at least 6 people. In this game, players take turns doing very short two person scenes. The scenes are so short, that they only have three lines! The goal of this game is to establish the relationship of the players in the scene, the location of the scene, and what they\'re doing. \n \n'
              'Divide all the players into two groups. Half the group goes to the left of the stage, and the other half goes to the right of the stage. The players should stand in a line so that one person is in front and each player lines up behind them. \n \n'
              'Pick a side that will initiate the scene. Let\'s say the left side. The first player from the left line will go out into the middle of the stage and begin an action. The player from the right side should observe the action for a few seconds. Then the player from the right line should go onto the stage and either start mirroring their action, or doing some complimentary action. The right player then says the first line. ONLY ONE LINE. It can be more than one sentence, but only a few. \n \n'
              'The left player will then respond with ONE LINE. Again, it can be more than one sentence, but only a couple. \n \n'
              'Then the right player will respond with ONE LINE. That\'s why it is called Three Line Scenes. \n \n'
              'Then the scene is over. The player that came from the left line should go to the back of the line on the right. The player that came from the right should go to the end of the line on the left. This ensures everyone has a turn initiating the action AND initiating the lines in Three Line Scenes! \n \n'
              'Again, the goal of this exercise is for as much information about who the actors are, where they are, and what they\'re doing in only three lines. This exercise is to help players establish the basic universe of a scene as quickly as possible - for them, and for the audience! \n \n'
              'Left Player: (goes onto the stage and starts raking the ground) \n \n'
              'Right Player: (comes onto the stage and starts raking the ground next to Left Player) \n \n'
              'Right Player: We\'re going to have a great turnip season this year, Sally, I can feel it! \n \n'
              'Left Player: I sure hope so Bill, I want to be able to buy the kids a new Playstation X for Christmas this year! \n \n'
              'Right Player: And if our crop of turnips really turns out well, maybe we can get a second Playstation X just for us! \n \n'
              'After just three lines, we know in this scene we have a husband and wife who are tending to their crop of turnips and they want to give their kids a good Christmas.'
              'Notes on scenes BULLET ME'
              'Don\'t ask questions! You only have 3 lines, don\'t waste one asking questions. You should help your scene partner quickly establish the scene!'
              'Even if you have no idea what action your scene partner is doing, yes and it! Make your best guess, mirror, and name it. Try to make the conversation natural. Don\'t take this exercise too far and try to cram everything into one line! For example, if Right Player would have come out and said "Sally, my wife, I sure hope our turnips have a good harvest so we can buy a Playstation X for our kids, and one for us!" - that would have been unnatural, and too much!If not all three pieces of the scene are established after three lines, that\'s OK! It\'s just an exercise. '),
      const GameDescription(
        title: 'whoosh',
        headers: ['Circle Game', 'Warm Up Game', 'No Emcee Needed'],
        body:
            'All players stand in a circle. One player begins by holding a ball of energy. The person who starts off with the ball must pass the ball to the person immediately to their left or right, saying "WHOOSH" as they pass it.\n \n'
            'The ball is passed around the circle, from one player to the next. The ball of energy can go to the left or the right and must be passed to the person next to you.\n \n'
            'That is the start of the game, and then other fun rules can then be applied to make the game more interesting and fun.\n \n'
            'All the following choices can be made by the player when it is their turn. -rainbow, 300, bunny bunny\n \n'
            '\u2022 Put up your hands up, palms facing the person who is passing you the ball, and say "WHOA!". This will force the ball to go back to the previous player and send the ball back the way it came\n \n'
            '\u2022 Hold up your hand over the next person\'s head and say "ramp", which will then skip the next person, but keep the ball going in its same direction of travel\n \n'
            '\u2022 Say "300" and then everyone in the circle yells "THIS IS SPARTA" and gives an air leg kick into the center of the circle. The player who called 300 will then pass the ball in the same direction it was traveling\n \n'
            '\u2022 Say "Rainbow <person in the circle>". Everyone will then look at that person with glowing appreciation and clap for them. The named person shall smile and bask in their temporary glory. The person who called "Rainbow" will then pass the ball in the same direction it was traveling\n \n'
            '\u2022 Say Bunny <person in the circle>. The person called will then hold their fingers up by their mouth and wiggle them like whiskers. The players to the left and the right of the player called will each use their fingers to put "bunny ears" on them. All 3 players will say "bunny bunny bunny bunny bunny bunny" for a few beats. The person who called "Bunny" will then pass the ball in the same direction it was traveling\n \n',
      ),
      const GameDescription(
        title: 'zip zap zop',
        headers: ['Warm Up Game', 'Circle Game', 'No Emcee Needed'],
        body: 'This is a classic Improv 101 game, and is loads of fun. \n \n'
            'All players stand in a circle. One player (Player A) begins by making eye contact with and pointing at another player (Player B) and saying "zip." Then Player B looks at another player (Player C) and says "zap." Then Player C looks at another player (Player D) and says "zop." Then Player D looks at Player E and says "zip", and the whole thing starts all over again. And that\'s the whole game. \n \n'
            'If anyone messes up and says "zip" when they should have sad "zop", the game momentarily ends and everyone should clap and celebrate the mistake. \n \n'
            'This game is all about making eye contact with your partner and listening. Here are a few other notes \n \n'
            'If someone sends you a zip, you can send them a zap right back. You are not required to send the zap to a different person than who sent you the zip. \n \n'
            'For added complexity, add a "beep" and a "bop" to this game. One person starts a "beep" and looks at the person to their left. That person can either look at the person to their left and say "beep", or look back to the person to their right and say "bop". "Beep" to the left, "bop" to the right. This beep and bop should go around the circle while zip, zap and zop are being sent across the circle.',
      )
    ];
    return games;
  }
}
