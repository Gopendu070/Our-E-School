import 'package:e_school/Views/Widgets/FeeWidget.dart';
import 'package:flutter/material.dart';

class FeesScreen extends StatelessWidget {
  const FeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fee Details"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(248, 42, 38, 38),
          Color.fromARGB(194, 75, 93, 102),
        ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FeeWidget(
                text1: "Fee Type  :",
                text2: "              Annual Term",
              ),
              FeeWidget(
                text1: "Student Name  :",
                text2: "    Gouri",
              ),
              FeeWidget(
                text1: "Session  :",
                text2: "               Annual Term",
              ),
              FeeWidget(
                text1: "Fee Payable  :",
                text2: "       10000.00",
              ),
              FeeWidget(
                text1: "Fee Paid  :",
                text2: "              0.00",
              ),
              FeeWidget(
                text1: "Fee Due  :",
                text2: "               10000.00",
              ),
              FeeWidget(
                text1: "Fee Due  :",
                text2: "               10000.00",
              ),
              FeeWidget(
                text1: "Fine Payable  :",
                text2: "       0.00",
              ),
              FeeWidget(
                text1: "Concession  :",
                text2: "         0.00",
              ),
              FeeWidget(
                text1: "Due Date  :",
                text2: "              7 Jan, 2024",
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: 80,
                    child: Row(
                      children: [
                        Text(" Proceed"),
                        Icon(Icons.arrow_forward_rounded)
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
