import 'package:e_school/Views/Widgets/categoryBoxWidg.dart';
import 'package:flutter/material.dart';

class AnnouncementScreen extends StatelessWidget {
  const AnnouncementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var announceList = [
      {
        "Category": "EXAMS",
        "Title":
            "Update on CS8214 - Postponed to next week due to unforeseen circumstances.",
        "Time": "10:40 AM"
      },
      {
        "Category": "GENERAL",
        "Title":
            "Students with less than 60% attendance will be reprimanded by the end of this quarter.",
        "Time": "2d ago"
      },
      {
        "Category": "SPORTS",
        "Title":
            "Introducing two new teams in our Annual Football Championship",
        "Time": "3d ago"
      },
      {
        "Category": "CLASSES",
        "Title": "Smartclass password change alert!",
        "Time": "4d ago"
      },
      {
        "Category": "GENERAL",
        "Title":
            "Students are asked to clear their dues and payments before 03/10/23.",
        "Time": "5d ago"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Announcements"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.white30,
          items: [
            BottomNavigationBarItem(
                icon: Text(
                  "All Items",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                label: "-----------------"),
            BottomNavigationBarItem(
                icon: Text("Exams",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                label: ""),
            BottomNavigationBarItem(
                icon: Text("Classes",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                label: ""),
            BottomNavigationBarItem(
                icon: Text("General",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                label: ""),
          ]),
      body: Container(
        child: ListView.builder(
          itemExtent: 130,
          itemCount: announceList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white12,
                      Color.fromARGB(54, 62, 58, 58)
                    ]),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          categoryBoxWidg(
                              category: announceList[index]["Category"]!),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          announceList[index]["Title"]!,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          announceList[index]["Time"]!,
                          style: TextStyle(color: Colors.white70),
                        ),
                      )
                    ],
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
