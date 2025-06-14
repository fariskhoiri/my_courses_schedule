import 'package:flutter/material.dart';
import 'package:my_courses_schedule2/noti_service.dart';

class SchedulesPage extends StatelessWidget {
  const SchedulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Button -> show notification now
            ElevatedButton(
              onPressed: () {
                NotiService().showNotification(title: "Title", body: "Body");
              },
              child: const Text("Send Notification"),
            ),

            // Button -> schedule notification for later
            ElevatedButton(
              onPressed: () {
                NotiService().scheduleNotification(
                  title: "Title",
                  body: "Body",
                  hour: 3, //  11pm
                  minute: 27,
                );
              },
              child: const Text("Schedule Notif"),
            ),
          ],
        ),
      ),
    );
  }
}
