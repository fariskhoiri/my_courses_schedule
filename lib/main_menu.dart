import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          elevation: 0,
          title: Text('Home'),
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
                  leading: Icon(Icons.event_available),
                  title: Text(
                    "Jadwal Tersedia",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    // Navigate
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
