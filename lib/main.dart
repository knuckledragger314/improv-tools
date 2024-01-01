import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/views/games.dart';
import 'package:flutter_project_new_mac/views/rules.dart';
import 'package:flutter_project_new_mac/views/suggestions.dart';
import 'package:flutter_project_new_mac/views/timer.dart';
import 'package:flutter_project_new_mac/views/feedback.dart' as f;
import 'package:google_mobile_ads/google_mobile_ads.dart';


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

///TODO: Add banner ad to top of games, rules, timer, suggestions. Need new ad for each. Name them in ad unit creation
///_ios_games_top, etc
///TODO: proof read and format (bold), etc, all the games!!!
///TODO: use AI to generate more words, unusual events, "how they know each other", etc.
///TODO: Initiate splash screen to allow ads to load

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final List<Widget> _screens = [
    const Suggestions(),
    const Games(),
    const Rules(),
    const Timer(),
    const f.Feedback()
  ];
  final List<String> _screenNames = [
    'Suggestions',
    'Games',
    'Rules',
    'Timer',
    'Feedback'
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.pop(context); // close the drawer }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Improv Tools',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
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
      body: FutureBuilder<void>(
        future: _initGoogleMobileAds(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          return Builder(
            builder: (context) => InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: _screens[selectedIndex],
            ),
          );
        },
      ),
    );
  }

  Future<InitializationStatus> _initGoogleMobileAds() {
    return MobileAds.instance.initialize();
  }
}




