import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/ad_helper.dart';
import 'package:flutter_project_new_mac/types/games/game_filters.dart';
import 'package:flutter_project_new_mac/types/games/games.dart';
import 'package:flutter_project_new_mac/widgets/game_description.dart';
import 'package:flutter_project_new_mac/widgets/multi_select_choice_chip.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Games extends StatefulWidget {
  const Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  List<String> allFiltersList = GameFilters.getGameFilters();
  List<String> selectedFilters = [];
  List<GameDescription> gameList = AllGames.getAllGames();
  BannerAd? _bannerAdGamesTop;

  @override
  void initState() {
    super.initState();
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdGamesTop,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAdGamesTop = ad as BannerAd;
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
    _bannerAdGamesTop?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          (_bannerAdGamesTop != null)
              ? Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: _bannerAdGamesTop!.size.width.toDouble(),
                    height: _bannerAdGamesTop!.size.height.toDouble(),
                    child: AdWidget(ad: _bannerAdGamesTop!),
                  ),
                )
              : const SizedBox(
                  height: 50,
                ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: ElevatedButton(
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
                        title: const Text('filter games by type', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.deepPurple)),
                        content: MultiSelectChip(
                            chipFilterList: allFiltersList,
                            selectedChoices: selectedFilters,
                            onSelectionChanged: (selectedList) {
                              setState(() {
                                selectedFilters = selectedList;
                              });
                            }),
                      );
                    });
              },
            ),
          ),
          const Text(
            'Warm Up &',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Text(
              'Short Form Games',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
            ),
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
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
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
