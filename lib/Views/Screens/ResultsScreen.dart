// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Results")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Name: Riddhiman Ganguly",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Roll No: 35 ,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  SizedBox(width: 9),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Stream: Science",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Standard:12 , ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Section:A",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 28),
              Container(
                width: double.infinity,
                child: Row(children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.white12,
                      child: Text("Annual",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white30,
                      padding: EdgeInsets.all(8),
                      child: Text("Half-Yearly",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 15),
              Container(
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(122.2),
                  border: TableBorder.all(
                      color: Colors.white, style: BorderStyle.solid, width: 2),
                  children: [
                    TableRow(
                        decoration: BoxDecoration(color: Colors.white24),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Subjects",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Marks",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Grades",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("English"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("88"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A+"),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Second Lang"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("80"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A+"),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Physics"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("78"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A"),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Chemistry"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("82"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A+"),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Math"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("87"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A+"),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Computer Science"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("77"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A"),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("TOTAL",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("492/600",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("A+",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 18),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.download),
                  label: Text("Download Marksheet"))
            ],
          ),
        ),
      ),
    );
  }
}
