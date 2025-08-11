import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static String splashName = "splash";
  static String splashPath = "/";
  static String onboardName = "onboarding";
  static String onboardPath = "/onboarding";
  static String loginName = "login";
  static String loginPath = "/login";

  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(routes: [
    // GoRoute(
    //   name: splashName,
    //   path: splashPath,
    //   builder: (context, state) {
    //     return const SplashScreen();
    //   },
    // ),
    // GoRoute(
    //   name: loginName,
    //   path: loginPath,
    //   builder: (context, state) {
    //     return LoginScreen();
    //   },
    // ),
    // GoRoute(
    //   name: createAccount,
    //   path: createAccountPath,
    //   builder: (context, state) {
    //     return CreateAccount();
    //   },
   // ),
  
  ]);

  static navigateToPath(String pathName, dynamic data) {
    router.pushNamed(pathName, extra: data);
  }

  static removeAll(String pathName, dynamic data) {
    router.goNamed(pathName, extra: data);
  }
}
