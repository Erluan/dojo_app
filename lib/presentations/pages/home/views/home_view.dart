// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:flutter_modular_app_template/infrastructure/core/configs/config_reader.dart';
import 'package:flutter_modular_app_template/presentations/mvvm/mvvm.dart';
import 'package:flutter_modular_app_template/presentations/pages/home/bloc/home_viewmodel.dart';
import 'package:flutter_modular_app_template/presentations/utils/utils.dart';
import 'package:flutter_modular_app_template/presentations/widgets/bottom_navigation.dart';
import 'package:flutter_modular_app_template/presentations/widgets/custom_app_bar.dart';
import 'package:flutter_modular_app_template/presentations/widgets/sm_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with ViewMixin<HomeViewModel> {
  final scrollController = ScrollController();


  @override
  void initState() {
    super.initState();
  }

  // void initTheme() async {
  //   await settingsViewModel.loadSettings();
  // }
  //

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomeView oldWidget) async {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: theme.scaffoldBackgroundColor,
        systemStatusBarContrastEnforced: false,
        // statusBarBrightness: statusBarBrightness,
        // statusBarIconBrightness: statusBarIconBrightness,
        systemNavigationBarColor: theme.scaffoldBackgroundColor,
      ),
      child: ColoredBox(
        color: theme.scaffoldBackgroundColor,
        child: SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigation(path: Nav.currentPath),
            appBar: CustomAppBar(),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SMBanner(
                        adUnit: Platform.isAndroid ? ConfigReader.getAdUnitIdAndroid() : ConfigReader.getAdUnitIdIos(),
                        sizes: const [AdSize.fluid],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}