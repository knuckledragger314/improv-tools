import 'dart:io';

class AdHelper {

  static String get bannerAdUnitIdGamesTop {
    if (Platform.isAndroid) {
      //real mob ad id
      //return '';
      //test ad below
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      //real mob ad id
      //return '';
      //test ad below
      return 'ca-app-pub-3940256099942544/2934735716';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get bannerAdUnitIdSuggestionBottom {
    if (Platform.isAndroid) {
      //real mob ad id
      //return 'ca-app-pub-5192244287661345/2266663543';
      //test ad below
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      //real mob ad id
      //return 'ca-app-pub-5192244287661345/1334035459';
      //test ad below
      return 'ca-app-pub-3940256099942544/2934735716';

    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get bannerAdUnitIdRulesTop {
    if (Platform.isAndroid) {
      //real mob ad id
      //return '';
      //test ad below
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      //real mob ad id
      //return '';
      //test ad below
      return 'ca-app-pub-3940256099942544/2934735716';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get bannerAdUnitIdTimerBottom {
    if (Platform.isAndroid) {
      //real mob ad id
      //return '';
      //test ad below
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (Platform.isIOS) {
      //real mob ad id
      //return '';
      //test ad below
      return 'ca-app-pub-3940256099942544/2934735716';

    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  // static String get interstitialAdUnitId {
  //   if (Platform.isAndroid) {
  //     return '<YOUR_ANDROID_INTERSTITIAL_AD_UNIT_ID>';
  //   } else if (Platform.isIOS) {
  //     return '<YOUR_IOS_INTERSTITIAL_AD_UNIT_ID>';
  //   } else {
  //     throw UnsupportedError('Unsupported platform');
  //   }
  // }

  // static String get rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return '<YOUR_ANDROID_REWARDED_AD_UNIT_ID>';
  //   } else if (Platform.isIOS) {
  //     return '<YOUR_IOS_REWARDED_AD_UNIT_ID>';
  //   } else {
  //     throw UnsupportedError('Unsupported platform');
  //   }
  // }
}