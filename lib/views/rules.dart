import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/ad_helper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Rules extends StatefulWidget {
  const Rules({super.key});

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  BannerAd? _bannerAdRulesTop;

  ///TODO: Format Rules text

  @override
  void initState() {
    super.initState();
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdRulesTop,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAdRulesTop = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  void dispose() {
    _bannerAdRulesTop?.dispose();
    super.dispose();
  }


  ///TODO: Fix this. Preferred Size and/or toolbarHeight. Not sure if you need both.
  ///TODO: put all the damn rules in a list so you can use a listview builder like the games

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        title:Column(children: [(_bannerAdRulesTop != null)
            ? Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: _bannerAdRulesTop!.size.width.toDouble(),
            height: _bannerAdRulesTop!.size.height.toDouble(),
            child: AdWidget(ad: _bannerAdRulesTop!),
          ),
        )
            : const SizedBox(
          height: 50,
        ),
          const Center(
            child: Text(
              '"Rules"',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
            ),
          ),

        ],)
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('1) Say "Yes-and"!',
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
              Text('7) Be Specific - Provide Details!',
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
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                    'A good long form set is balanced. Shakespeare knew that too much pathos was wearing on the audience; hence, he had minor characters in humorous scenes such as the drunken porter in MacBeth.'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
