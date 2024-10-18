import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular_app_template/infrastructure/core/shared/state.dart';

class DashboardCubit extends Cubit<IState<String>> {
  DashboardCubit() : super(IState<String>(stateCase: 'initial'));

  Future<void> dashBoardOpenSideMenu() async {
    try {
      emit(IState<String>(
        stateCase: 'DashboardSideMenuOpened',
      ));
    } catch (e, stack) {
      emit(IState<String>(
        stateCase: 'DashboardSideMenuOpenError',
        results: stack.toString(),
      ));
    }
  }
}
