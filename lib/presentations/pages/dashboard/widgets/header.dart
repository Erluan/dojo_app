import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_app_template/infrastructure/core/configs/responsive.dart';
import 'package:flutter_modular_app_template/infrastructure/core/shared/state.dart';
import 'package:flutter_modular_app_template/presentations/pages/dashboard/bloc/dashboard_cubit.dart';
import 'package:flutter_modular_app_template/presentations/widgets/profile_card.dart';
import 'package:flutter_modular_app_template/presentations/widgets/search_field.dart';

class Header extends StatefulWidget {
  Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late DashboardCubit? _dashboardBloc;

  @override
  void initState() {
    _dashboardBloc = DashboardCubit();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => _dashboardBloc!,
      child: BlocListener<DashboardCubit, IState<String>>(
        listener: (context, state) {
          if (state.stateCase == 'DashboardSideMenuOpened') {
            setState(() {
              Scaffold.of(context).openDrawer();
            });
          }
        },
        child: Row(
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                onPressed: () {
                  _dashboardBloc!.dashBoardOpenSideMenu();
                },
                icon: Icon(Icons.menu),
              ),
            Text(
              "Dashboard",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
            Expanded(child: SearchField()),
            ProfileCard()
          ],
        ),
      ),
    );
  }
}
