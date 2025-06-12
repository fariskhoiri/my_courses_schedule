import 'package:flutter/material.dart';
import 'package:my_courses_schedule2/noti_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotiService().showNotification(title: "Title", body: "Body");
          },
          child: const Text("Send Notification"),
        ),
      ),
    );
  }
}
