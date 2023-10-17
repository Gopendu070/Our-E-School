import 'package:flutter/material.dart';

class SettingTiles extends StatelessWidget {
  String title;
  String subTitle;
  Widget IconWidg;
  SettingTiles(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.IconWidg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: ListTile(
          tileColor: Color.fromARGB(255, 78, 73, 73),
          title: Text(title),
          subtitle: Text(subTitle),
          trailing: IconWidg,
        ),
      ),
    );
  }
}
