import 'dart:async';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hrms/bootstrap.dart';
import 'package:hrms/configs/app_configs.dart' show AppConfigs;
import 'package:hrms/firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("Handling background message: ${message.messageId}");
}

Future<void> main() async {
  await bootstrap(firebaseInitialization: () async {

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // final PushNotificationService notificationService =
    //     PushNotificationService();
    // await notificationService.setupInteractedMessage();
  },
      flavorConfiguration: () async {
    AppConfigs.configDev();
  });
}


