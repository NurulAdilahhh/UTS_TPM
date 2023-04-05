import 'package:flutter/material.dart';
import 'package:nuruladilah_123200022_uts_tpm/menu_profile.dart';
import 'bangun_datar.dart';
import 'calender.dart';
import 'menu_profile.dart';
import 'main.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Program'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginUI(),
                ),
              );
            },
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DatarPage(),
                  ),
                );
              },
              child: Text('Bangun Datar'),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CalendarPage(),
                  ),
                );
              },
              child: Text('Kalender'),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(name: "Nurul Adilah", nim: "123200033", photoUrl: ""),
                  ),
                );
              },
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}