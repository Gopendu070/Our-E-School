import 'package:flutter/material.dart';

class RectBox extends StatelessWidget {
  double H;
  String label;
  IconData icon;
  Color colr;

  RectBox(
      {super.key,
      required this.H,
      required this.icon,
      required this.label,
      required this.colr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        color: colr,
        height: H,
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(icon),
            SizedBox(height: 7),
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    );
  }
}
