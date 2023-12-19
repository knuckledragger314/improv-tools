import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/types/games/game_filters.dart';
import 'package:flutter_project_new_mac/types/games/games.dart';
import 'package:flutter_project_new_mac/types/suggestions/how_they_know_each_other.dart';
import 'package:flutter_project_new_mac/types/suggestions/object.dart';
import 'package:flutter_project_new_mac/types/suggestions/one_word.dart';
import 'package:flutter_project_new_mac/types/suggestions/place.dart';
import 'package:flutter_project_new_mac/types/suggestions/problem_to_solve.dart';
import 'package:flutter_project_new_mac/types/suggestions/unusual_event.dart';
import 'package:flutter_project_new_mac/widgets/countdown.dart';
import 'package:flutter_project_new_mac/widgets/feedback.dart';
import 'package:flutter_project_new_mac/widgets/game_template.dart';
import 'package:flutter_project_new_mac/widgets/multi_select_choice_chip.dart';
import 'package:flutter_project_new_mac/widgets/suggestion_button.dart';
import 'package:flutter_project_new_mac/widgets/stopwatch_timer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer with Screens and Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const Suggestions(),
    const Games(),
    const Rules(),
    const Timer(),
    const EmailSender()
  ];
  final List<String> _screenNames = ['Suggestions', 'Games', 'Rules', 'Timer', 'Feedback'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // close the drawer }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Improv Tools'),
          backgroundColor: Colors.deepPurple,
        ),
        drawer: Drawer(
          child: ListView.builder(
            itemCount: _screens.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_screenNames[index]),
                onTap: () {
                  _onItemTapped(index);
                },
              );
            },
          ),
        ),
        body: Builder(
          builder: (context) => InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: _screens[_selectedIndex]),
        ));
  }
}

class Suggestions extends StatelessWidget {
  const Suggestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Suggestions',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SuggestionButton(getter: Word.getWords(), type: 'one word'),
              SuggestionButton(
                type: 'place',
                getter: Place.getPlaces(),
              ),
              SuggestionButton(
                  getter: HowTheyKnowEachOther.getHowTheyKnowEachOther(),
                  type: 'how they know each other'),
              SuggestionButton(getter: Objects.getObjects(), type: 'object'),
              SuggestionButton(
                  getter: Problem.getProblems(),
                  type: 'problem they\'re trying to solve'),
              SuggestionButton(
                  getter: UnusualEvent.getUnusualEvents(),
                  type: 'unusual event'),
            ],
          ),
        ],
      ),
    );
  }
}

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  List<String> allFiltersList = GameFilters.getGameFilters();
  List<String> selectedFilters = [];
  List<GameDescription> gameList = AllGames.getAllGames();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.deepPurple),
            child: const Text('game filter'),
            onPressed: () {
              allFiltersList = GameFilters.getGameFilters();
              showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('filter games here'),
                      content: MultiSelectChip(
                          chipFilterList: allFiltersList,
                          selectedChoices: selectedFilters,
                          onSelectionChanged: (selectedList) {
                            setState(() {
                              selectedFilters = selectedList;
                            });
                          }),
                      actions: [
                        TextButton(
                          child: const Text('clear all'),
                          onPressed: () {
                            //clear all
                            setState(() {
                              selectedFilters = [];
                              allFiltersList.removeRange(
                                  0, allFiltersList.length);
                            });
                          },
                        ),
                        TextButton(
                          child: const Text('done'),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    );
                  });
            },
          ),

          ///TODO: have put a mic icon on buttons that require an emcee, a circle or line for circle/line games, 2/3/4 dots for 2/3/4 people?
          ///mic_rounded, mic_sharp mic_off -- remove (line) -- radio_button_off (circle) -- person
          const Text(
            'Warm Up & Short Form Games',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: gameList.length,
              itemBuilder: (BuildContext context, int index) {
                return Visibility(
                  visible: selectedFilters.isEmpty ||
                      gameList[index]
                          .headers
                          .any((element) => selectedFilters.contains(element)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.deepPurple),
                    child: Text(
                      gameList[index].title,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {
                      showGeneralDialog(
                          context: context,
                          pageBuilder: (_, __, ___) {
                            return gameList[index];
                          });
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Rules extends StatelessWidget {
  const Rules({super.key});

  ///TODO: Format Rules

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  '"Rules"',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
                ),
              ),
              Text('1) Say Yes-and!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'For a story to be built, whether it is short form or long form, the players have to agree to the basic situation and set-up. The who, what, and where have to be developed for a scene to work.'),
              ),
              Text('2) After the "and", add new information.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'An improvised scene can\'t move forward or advance unless we add new information. That is why new information is added after the Yes of Yes-and!'),
              ),
              Text('3) Don\'t Block.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'The opposite of saying yes-and is blocking or denial.'),
              ),
              Text('4) Avoid Questions.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'A form of blocking (in its more subtle form) is asking questions. Questions force our partners to fill in the information or do the work. It is a way of avoiding committing to a choice or a detail. It is playing it safe. However, on more advanced levels, questions can be used to add information or tell your partner the direction to go in.'),
              ),
              Text('5) Focus on the Here and Now.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'Another useful rule is to keep the focus on the here and now. A scene is about the people in the scene. The change, the struggle, the win or loss will happen to the characters on the stage. Focus on what is going on right this at this moment.'),
              ),
              Text('6) Establish the Location!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'Good scenes take place somewhere and at sometime. They do not take place on an empty stage. A location can easily be established in one or two lines without breaking the scene.'),
              ),
              Text('7) Be Specific- Provide Details!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'Details are the lifeblood of moving a scene forward. Each detail provides clues to what is important. Details help provide beat objectives and flesh out characters.'),
              ),
              Text('8) Change, Change, Change!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'Improv is about character change. The characters in a scene must experience some type of change for the scene to be interesting. Characters need to go on journeys, be altered by revelations, experience the ramifications of their choices and be moved by emotional moments.'),
              ),
              Text(
                  '9) For serious and emotional scenes, focus on characters and relationships.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                    'A long form improv set should contain a variety of scenes. Some scenes will be emotional, some will be tense, and some should be funny. The easiest way to make a scene serious is by focusing on the relationship of those on the stage (their characters).'),
              ),
              Text(
                  '10) For humor, commit and take choices to the nth degree or focus on actions/objects.',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              Text(
                  'A good long form set is balanced. Shakespeare knew that too much pathos was wearing on the audience; hence, he had minor characters in humorous scenes such as the drunken porter in MacBeth.')
            ],
          ),
        ),
      ),
    );
  }
}

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [StopwatchTimer(), CountdownTimer()],
    ));
  }
}
