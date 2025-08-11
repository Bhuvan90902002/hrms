import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms/app.dart';
import 'package:hrms/core/bloc_core/app_bloc_observer.dart';
import 'package:hrms/injector/injector.dart';
import 'package:hrms/services/local_storage/shared_pref_controller.dart';
Future<void> bootstrap({
  AsyncCallback? firebaseInitialization,
  AsyncCallback? flavorConfiguration,
}) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();


    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await firebaseInitialization?.call();

    await flavorConfiguration?.call();

    Injector.init();

    await Injector.instance.allReady();
    await SharedPrefController.instance.init();
    Bloc.observer = AppBlocObserver();

    runApp(const App());
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  });
}
