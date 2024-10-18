import 'package:flutter/material.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/responsive.dart';
import 'package:flutter_modular_app_template/infrastructure/core/shared/constants.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/header.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/my_files.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/recent_files.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/side_menu.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/widgets/storage_details.dart';

class DashboardView extends StatefulWidget {
  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                key: Key('singleChildScrollView'),
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Header(),
                    SizedBox(height: defaultPadding),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              MyFiles(),
                              SizedBox(height: defaultPadding),
                              RecentFiles(),
                              if (Responsive.isMobile(context))
                                SizedBox(height: defaultPadding),
                              if (Responsive.isMobile(context))
                                StorageDetails(),
                            ],
                          ),
                        ),
                        SizedBox(width: defaultPadding),
                        if (!Responsive.isMobile(context))
                          Expanded(
                            flex: 2,
                            child: StorageDetails(),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
