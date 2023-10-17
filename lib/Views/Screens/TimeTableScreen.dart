// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_school/Models/TimeTable.dart';
import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Table"),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 1, items: [
        BottomNavigationBarItem(icon: Text("Monday"), label: "Monday"),
        BottomNavigationBarItem(icon: Text("Tuesday"), label: "Tuesday"),
        BottomNavigationBarItem(icon: Text("Wednesday"), label: "Wednesday"),
        BottomNavigationBarItem(icon: Text("Thusday"), label: "Thusday"),
      ]),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 40, 37, 37),
          Color.fromARGB(172, 22, 49, 69)
        ])),
        child: ListView.builder(
          itemCount: Timetable.timeTable.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                child: ListTile(
                  tileColor: Colors.black54,
                  title: Text(Timetable.timeTable[index]["Lecture"]!),
                  subtitle: Text(Timetable.timeTable[index]["Standard"]!),
                  trailing: Text(
                    Timetable.timeTable[index]["Time"]!,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
