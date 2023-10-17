import 'package:e_school/Views/Widgets/SettingTiles.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: ListTile(
                  tileColor: Color.fromARGB(255, 78, 73, 73),
                  title: Text("Profile"),
                  subtitle: Text("Kind of everything we know about you"),
                  trailing: Image.asset(
                    "assets/user.png",
                    height: 33,
                  ),
                ),
              ),
            ),
            SettingTiles(
                title: "Logout",
                subTitle: "You can login multiple times",
                IconWidg: Icon(
                  Icons.logout,
                  color: Colors.red,
                )),
            SettingTiles(
                title: "Dark Theme",
                subTitle: "Tap to change theme",
                IconWidg: Icon(
                  Icons.dark_mode_sharp,
                  color: Colors.red,
                )),
            SettingTiles(
                title: "Forgot Password",
                subTitle: "Send recovery mail",
                IconWidg: Icon(
                  Icons.lock_clock_rounded,
                  color: Colors.red,
                )),
            SettingTiles(
                title: "About",
                subTitle: "Contact us",
                IconWidg: Icon(
                  Icons.info,
                  color: Colors.red,
                )),
          ],
        ),
      ),
    );
  }
}
