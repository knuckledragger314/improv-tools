import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/views/games.dart';
import 'package:flutter_project_new_mac/views/rules.dart';
import 'package:flutter_project_new_mac/views/suggestions.dart';
import 'package:flutter_project_new_mac/views/timer.dart' as t;
import 'package:flutter_project_new_mac/views/feedback.dart' as f;
import 'package:google_mobile_ads/google_mobile_ads.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer with Screens and Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImprovToolsHome(),
    );
  }
}

///TODO: proof read and format (bold), etc, all the games!!!
///TODO: use AI to generate more words, unusual events, "how they know each other", etc.
///TODO: currently trying to call MobileAds.instance.initialize() at main(),
///still need to remove from futureBuilder below and test
///TODO: Consider building a brand new app from scratch called improv tools not new app new mac or whatever dumb shit you called it
///or google how easy you can change the name

class ImprovToolsHome extends StatefulWidget {
  const ImprovToolsHome({Key? key}) : super(key: key);

  @override
  State<ImprovToolsHome> createState() => _ImprovToolsHomeState();
}

class _ImprovToolsHomeState extends State<ImprovToolsHome> {
  int selectedIndex = 0;
  bool splash = true;
  late final Timer timer = Timer(const Duration(milliseconds: 1), () {});
  final List<Widget> _screens = [
    const Suggestions(),
    const Games(),
    const Rules(),
    const t.Timer(),
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
      splash = false;
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
      // body: FutureBuilder<void>(
      //   future: _initGoogleMobileAds(),
      //   builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
      //     return Builder(
      //       builder: (context) => InkWell(
      //         onTap: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         child: _screens[selectedIndex],
      //       ),
      //     );
      //   },
      // ),
      body: Builder(
        builder: (context) => InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: _screens[selectedIndex],
        ),
      ),
    );
  }
}




