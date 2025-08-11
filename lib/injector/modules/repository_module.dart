
import 'package:hrms/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    var instance = Injector.instance;

    // instance
    //   ..registerLazySingleton<AuthRepo>(
    //       () => AuthRepoImpl(apiClient: Injector.instance()))
    //   ..registerLazySingleton<HomeRepo>(
    //       () => HomeRepoImpl(apiClient: Injector.instance()))
    //   ..registerLazySingleton<CartRepo>(
    //       () => CartRepoImpl(apiClient: Injector.instance()))
    //   ..registerLazySingleton<SalesPersonRepo>(
    //       () => SalesPersonImpl(apiClient: Injector.instance()));
  }
}
