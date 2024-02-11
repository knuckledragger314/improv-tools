import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/ad_helper.dart';
import 'package:flutter_project_new_mac/types/suggestions/how_they_know_each_other.dart';
import 'package:flutter_project_new_mac/types/suggestions/object.dart';
import 'package:flutter_project_new_mac/types/suggestions/one_word.dart';
import 'package:flutter_project_new_mac/types/suggestions/place.dart';
import 'package:flutter_project_new_mac/types/suggestions/problem_to_solve.dart';
import 'package:flutter_project_new_mac/types/suggestions/unusual_event.dart';
import 'package:flutter_project_new_mac/widgets/suggestion_button.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({super.key});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  BannerAd? _bannerAdSuggestionBottom;

  @override
  void initState() {
    super.initState();
    // COMPLETE: Load a banner ad
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdSuggestionBottom,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAdSuggestionBottom = ad as BannerAd;
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
    _bannerAdSuggestionBottom?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Text(
          'Suggestions',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SuggestionButton(
                                getter: Word.getWords(), type: 'one word'),
                            SuggestionButton(
                              type: 'place',
                              getter: Place.getPlaces(),
                            ),
                            SuggestionButton(
                                getter:
                                    HowTheyKnowEachOther.getHowTheyKnowEachOther(),
                                type: 'how they know each other'),
                            SuggestionButton(
                                getter: Objects.getObjects(), type: 'object'),
                            SuggestionButton(
                                getter: Problem.getProblems(),
                                type: 'problem they\'re trying to solve'),
                            SuggestionButton(
                                getter: UnusualEvent.getUnusualEvents(),
                                type: 'unusual event'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              (_bannerAdSuggestionBottom != null)
                  ? Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: _bannerAdSuggestionBottom!.size.width.toDouble(),
                  height: _bannerAdSuggestionBottom!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAdSuggestionBottom!),
                ),
              )
                  : const SizedBox(
                height: 50,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
