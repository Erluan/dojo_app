import 'package:flutter_modular/flutter_modular.dart';

class AppModuleBindings {

  void binds(Injector i) {
    // Services
    // i.addSingleton<AuthenticationClient>(() => SupabaseAuthentication());
    // i.addSingleton<LoggerClient>(() => LoggerService());

    // Providers
    // i.addSingleton<IAuthenticationProvider>(
    //       () => AuthenticationProvider(
    //     authenticationService: i.get<AuthenticationClient>(),
    //   ),
    // );
    // Repositories
    // i.addSingleton<IAuthenticationRepository>(
    //       () => AuthenticationRepository(
    //     authenticationProvider: i.get<IAuthenticationProvider>(),
    //   ),
    // );

    // UseCases
    // i.addSingleton<IAuthenticateUsecase>(
    //       () => AuthenticateUsecase(
    //     authenticationRepository: i.get<IAuthenticationRepository>(),
    //   ),
    // );
    // i.addSingleton<IGetCurrentUserUsecase>(
    //       () => GetCurrentUserUsecase(
    //     authenticationRepository: i.get<IAuthenticationRepository>(),
    //   ),
    // );
    // i.addSingleton<ILogoutUseCase>(
    //       () => LogoutUsecase(
    //     authenticationRepository: i.get<IAuthenticationRepository>(),
    //   ),
    // );

    // ViewModels
    // i.addSingleton<AuthenticationCubit>(() => AuthenticationCubit(
    //   authenticateUsecase: i.get<IAuthenticateUsecase>(),
    //   getCurrentUserUsecase: i.get<IGetCurrentUserUsecase>(),
    //   logoutUsecase: i.get<ILogoutUseCase>(),
    // ));
    // i.addSingleton<SettingsViewModel>(() => SettingsViewModel());
    // i.addLazySingleton<HomeViewModel>(() => HomeViewModel());
    // i.addLazySingleton<PriceGridViewModel>(() => PriceGridViewModel());
  }

}
