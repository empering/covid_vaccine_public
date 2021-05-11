import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class AppNotification {
  AppNotification._();

  static final FlutterLocalNotificationsPlugin _instance =
      FlutterLocalNotificationsPlugin();

  static final NotificationDetails platformChannelSpecifics =
      NotificationDetails(
    android: AndroidNotificationDetails(
      'covid vaccine notification id',
      'scheduled notification',
      'scheduled notification',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: false,
    ),
  );

  static initialize() async {
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation('Asia/Seoul'));

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('logo');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await _instance.initialize(initializationSettings);
  }

  static zonedSchedule({
    required String title,
    required String body,
    tz.TZDateTime? scheduledDate,
  }) async {
    await _instance.zonedSchedule(
      0,
      title,
      body,
      scheduledDate ?? getDrawSchedule(),
      platformChannelSpecifics,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  static cancelNotification() {
    _instance.cancelAll();
  }

  static tz.TZDateTime getDrawSchedule() {
    var now = DateTime.now();
    tz.TZDateTime scheduledDate =
        tz.TZDateTime(tz.local, now.year, now.month, now.day, 09, 45);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }
}
