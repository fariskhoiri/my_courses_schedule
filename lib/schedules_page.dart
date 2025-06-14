import 'package:flutter/material.dart';
import 'package:my_courses_schedule2/noti_service.dart';
import 'package:my_courses_schedule2/main_menu.dart';

class SchedulesPage extends StatelessWidget {
  const SchedulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          elevation: 0,
          title: Text('Jadwal Tersedia'),
          actions: [
            IconButton(
              onPressed: () {
                // Do something
              },
              icon: Icon(Icons.share),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.yellow[400],
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Text("M E N U", style: TextStyle(fontSize: 35)),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home", style: TextStyle(fontSize: 20)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainMenu()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.event_available),
                  title: Text(
                    "Jadwal Tersedia",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SchedulesPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Button -> show notification now
              ElevatedButton(
                onPressed: () {
                  NotiService().showNotification(title: "Title", body: "Body");
                },
                child: const Text("Jadwal 1"),
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
                child: const Text("Jadwal 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
