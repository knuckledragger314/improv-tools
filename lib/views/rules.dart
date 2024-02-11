import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/ad_helper.dart';
import 'package:flutter_project_new_mac/types/rules/rules.dart';
import 'package:flutter_project_new_mac/widgets/rule_description.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Rules extends StatefulWidget {
  const Rules({super.key});

  @override
  State<Rules> createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  BannerAd? _bannerAdRulesTop;
  List<RuleDescription> ruleList = AllRules.getAllRules();

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
          title: Column(
            children: [
              (_bannerAdRulesTop != null)
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
            ],
          )),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: ruleList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, top:8.0, bottom: 4.0),
                              child: Text(
                                ruleList[index].topLine,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0, right: 8.0),
                              child: Text(
                                ruleList[index].summary,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        );
                      })),
            ),
          ),
        ],
      ),
    );
  }
}
