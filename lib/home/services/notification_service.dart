import 'dart:typed_data' show Int64List;
import 'package:quiz/home/constants/theme.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  late final InitializationSettings initializationSettings;
  late final AndroidNotificationDetails androidPlatformChannelSpecifics;
  late final NotificationDetails platformChannelSpecifics;

  NotificationService() {
    initNotification();
  }

  /// initial main notification channels & details service
  void initNotification() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

    /// inital main Settings Option
    initializationSettings = const InitializationSettings(
      android: AndroidInitializationSettings('app_icon'),
      iOS: IOSInitializationSettings(),
      macOS: MacOSInitializationSettings(),
    );
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);

    /// vibration structure
    Int64List vibrationPattern = Int64List(4);
    vibrationPattern[0] = 0;
    vibrationPattern[1] = 1000;
    vibrationPattern[2] = 5000;
    vibrationPattern[3] = 2000;

    /// generate Android Notification detils
    androidPlatformChannelSpecifics = AndroidNotificationDetails(
      '0',
      'main',
      channelDescription: 'main channel',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      vibrationPattern: vibrationPattern,
      color: kThemeEnableIconColor,
      timeoutAfter: 5000,
    );

    /// initial android channel Specifics
    platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
  }

  /// show new notification from [title,content] in main channel
  showNotification(String title, String content) async {
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      content,
      platformChannelSpecifics,
      payload: '',
    );
  }
}
