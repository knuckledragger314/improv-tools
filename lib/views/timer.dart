import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/ad_helper.dart';
import 'package:flutter_project_new_mac/widgets/countdown.dart';
import 'package:flutter_project_new_mac/widgets/stopwatch_timer.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Timer extends StatefulWidget {
  const Timer({super.key});

  @override
  State<Timer> createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  BannerAd? _bannerAdTimerBottom;

  @override
  void initState() {
    super.initState();
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitIdTimerBottom,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAdTimerBottom = ad as BannerAd;
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
    _bannerAdTimerBottom?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
          title: Column(
        children: [
          (_bannerAdTimerBottom != null)
              ? Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: _bannerAdTimerBottom!.size.width.toDouble(),
                    height: _bannerAdTimerBottom!.size.height.toDouble(),
                    child: AdWidget(ad: _bannerAdTimerBottom!),
                  ),
                )
              : const SizedBox(
                  height: 50,
                ),
          const Text(
            'Timer',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
        ],
      )),
      body: Center(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StopwatchTimer(),
                SizedBox(height: 48),
                CountdownTimer(),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
