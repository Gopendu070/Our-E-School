import 'package:flutter/material.dart';

class categoryBoxWidg extends StatelessWidget {
  String category;
  categoryBoxWidg({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    Color customColor(String cat) {
      if (cat == "EXAMS")
        return Colors.blueAccent;
      else if (cat == "GENERAL")
        return Colors.redAccent;
      else if (cat == "SPORTS")
        return Colors.purpleAccent;
      else if (cat == "CLASSES")
        return Colors.amber;
      else
        return Colors.blueGrey;
    }

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(category),
      ),
      decoration: BoxDecoration(
          color: customColor(category), borderRadius: BorderRadius.circular(8)),
    );
  }
}
