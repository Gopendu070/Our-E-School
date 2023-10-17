import 'package:flutter/material.dart';

class FeeWidget extends StatelessWidget {
  String text1;
  String text2;
  FeeWidget({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: Colors.white12,
        width: double.infinity,
        height: 55,
        child: Row(
          children: [
            SizedBox(width: 12),
            Text(
              text1,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 40),
            Text(
              text2,
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
