import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class PushNotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static String? notificationToken;
  Future<void> setupInteractedMessage() async {
    FirebaseMessaging.onMessageOpenedApp.listen(
          (RemoteMessage message) {},
    );
    await enableIOSNotifications();
    await requestPermission();
    await getToken();
    await registerNotificationListeners();
  }

  static Future<void> getToken() async {
    try {
      FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
      String? token = await firebaseMessaging.getToken();
      if (token != null) {
        notificationToken = token;
        print('Device token: $token');
      } else {
        print('Failed to get device token');
      }
    } catch (e) {
      print('Error fetching token: $e');
    }
  }

  Future<void> registerNotificationListeners() async {
    const AndroidInitializationSettings androidSettings =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    const DarwinInitializationSettings iOSSettings =
    DarwinInitializationSettings();
    const InitializationSettings initSettings =
    InitializationSettings(android: androidSettings, iOS: iOSSettings);
    await flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (NotificationResponse details) {

      },
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      if (message == null) {
        print('Received null message');
        return;
      }

      final RemoteNotification? notification = message.notification;

      if (notification == null) {
        print('Notification is null');
        return;
      }


      showNotification(
        notification: notification,
        message: message,
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? event) {
      if (event == null) {
        print('Opened app with null event');
        return;
      }

    });
  }

  Future<dynamic> backgroundMessageHandler(RemoteMessage message) async {
    if (message.notification != null) {
      await showNotification(notification: message.notification!, message: message);
    }
  }

  Future<void> enableIOSNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("User granted permission");
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print("User granted provisional permission");
    } else {
      print("User declined permission");
    }
  }

  Future<void> showNotification({
    required RemoteNotification notification,
    required RemoteMessage message,
  }) async {
    print("shownotification");
    final String title = notification.title ?? 'Default Title';
    final String body = notification.body ?? 'Default Body';

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          "srijayaimpex",
          "srijayaimpex",
          playSound: true,
          importance: Importance.max,
          priority: Priority.max,
          fullScreenIntent: true,
          visibility: NotificationVisibility.public,
        ),
        iOS: DarwinNotificationDetails(
          categoryIdentifier: "srijayaimpex",
        ),
      ),
      payload: message.data.toString(),
    );
  }
}
