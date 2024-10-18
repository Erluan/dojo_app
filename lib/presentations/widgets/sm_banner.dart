import 'dart:io';

import 'package:flutter_modular_app_template/infrastructure/core/configs/config_reader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class SMBanner extends StatefulWidget {

  SMBanner({
    required this.adUnit,
    required this.sizes,
  });

  final String adUnit;
  final List<AdSize> sizes;

  @override
  State<SMBanner> createState() => _SMBannerState();
}

class _SMBannerState extends State<SMBanner> {
  late NativeAd nativeAd;
  late BannerAd bannerAd;

  bool _nativeAdIsLoaded = false;
  bool _adIsLoaded = false;

  @override
  void initState(){

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      loadBanner();
      loadNativeBanner();
    });
  }

  void loadBanner() async {

    setState(() {
      _nativeAdIsLoaded = false;
      _adIsLoaded = false;
    });

    final adUnitId = Platform.isAndroid
        ? ConfigReader.getAdUnitIdAndroid()
        : ConfigReader.getAdUnitIdIos();

    if(kDebugMode){
      if(Platform.isAndroid) {
        MobileAds.instance.updateRequestConfiguration(
            RequestConfiguration(testDeviceIds: ['9DD60BDC5FA73A987B82F7428EF43CCE']));
      }

      if(Platform.isIOS) {
        MobileAds.instance.updateRequestConfiguration(
            RequestConfiguration(testDeviceIds: ['4fbd5d3f0b6e3eca7273471873bf14fe']));
      }
    }

    bannerAd = BannerAd(
      adUnitId: adUnitId,
      request: AdRequest(),
      size: AdSize.fluid,
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('${ad.adUnitId} loaded.');
          setState(() {
            _nativeAdIsLoaded = true;
            _adIsLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$NativeAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$NativeAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$NativeAd onAdClosed.'),
      ),
    );
    bannerAd.load();

  }

  void loadNativeBanner() async {
    NativeAd(
      adUnitId: widget.adUnit,
      request: const AdRequest(),
      listener: NativeAdListener(
        onAdLoaded: (Ad ad) {
          print('${ad.adUnitId} loaded.');
          setState(() {
            nativeAd = ad as NativeAd;
            _nativeAdIsLoaded = true;
            _adIsLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('$NativeAd failedToLoad: $error');
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$NativeAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$NativeAd onAdClosed.'),
      ),
      nativeTemplateStyle: NativeTemplateStyle(
        templateType: TemplateType.medium,
        mainBackgroundColor: Colors.white12,
        callToActionTextStyle: NativeTemplateTextStyle(
          size: 16.0,
        ),
        primaryTextStyle: NativeTemplateTextStyle(
          textColor: Colors.black38,
          backgroundColor: Colors.white70,
        ),
      ),
    ).load();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      height: 100,
      child: _adIsLoaded ? AdWidget(
        ad: bannerAd,
      )
      : const Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
