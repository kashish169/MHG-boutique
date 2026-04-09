import 'dart:math' as math;
import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../app/app.dart';
import '../../main.dart';

class NotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static FirebaseMessaging messaging = FirebaseMessaging.instance;

  static void init() {
    const android = AndroidInitializationSettings('app_icon');
    const iOS = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(
      settings: initSettings,
    );
    registerNotification();
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? message) {
      print(message);
      if (message != null) {
        showNotification(
          title: message.notification!.title!,
          body: message.notification!.body!,
        );
      }
    });
    messaging.getToken().then(
          (value) => {
            if (value != null)
              {
                App.fcmToken = value,
                log("___FCM TOKEN IS : $value"),
              },
          },
        );
  }

  static void registerNotification() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        log('Message title: ${message.notification?.title}, body: ${message.notification?.body}, data: ${message.data}');
        // ignore: unnecessary_null_comparison
        if (message != null) {
          showNotification(
            title: message.notification!.title!,
            body: message.notification!.body!,
          );
        }
      });
    } else {
      print('User declined or has not accepted permission');
    }
  }

  static checkForInitialMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {}
  }

  static Future<void> showNotification({
    required String title,
    required String body,
  }) async {
    const android = AndroidNotificationDetails(
      'channel id',
      'channel name',
      priority: Priority.high,
      importance: Importance.max,
      channelShowBadge: false,
      onlyAlertOnce: true,
    );
    const iOS = DarwinNotificationDetails();
    const platform = NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin.show(
        id: math.Random().nextInt(100),
        title: title,
        body: body,
        notificationDetails: platform);
  }
}
