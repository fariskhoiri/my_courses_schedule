import 'package:flutter/material.dart';
import 'package:my_courses_schedule2/noti_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                  title: "title",
                  body: "body",
                  hour: 16, //  11pm
                  minute: 40,
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
