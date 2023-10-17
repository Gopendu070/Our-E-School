// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_school/Views/Screens/AnnouncementScreen.dart';
import 'package:e_school/Views/Screens/AssignmentScreen.dart';
import 'package:e_school/Views/Screens/E-Card.dart';
import 'package:e_school/Views/Screens/FeesScreen.dart';
import 'package:e_school/Views/Screens/HolidaysScreen.dart';
import 'package:e_school/Views/Screens/ProfileScreenStudent.dart';
import 'package:e_school/Views/Screens/ResultsScreen.dart';
import 'package:e_school/Views/Screens/TimeTableScreen.dart';
import 'package:e_school/Views/Screens/TransportationScreen.dart';
import 'package:e_school/Views/Widgets/RectBox.dart';
import 'package:flutter/material.dart';

class DashboardStudent extends StatelessWidget {
  const DashboardStudent({super.key});

  @override
  Widget build(BuildContext context) {
    const double h1 = 100;
    const double h2 = 80;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Container(
          child: Center(
            child: Text(
              "Dashboard",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  bottomRight: Radius.circular(14))),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreenStudent(),
                  ));
            },
            icon: Image.asset("assets/user.png"),
          ),
          SizedBox(width: 5)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => E_Card_Screen()));
                      },
                      child: RectBox(
                          colr: const Color.fromARGB(255, 255, 81, 0)!,
                          H: h1,
                          icon: Icons.account_box_rounded,
                          label: "E-Card"),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimeTableScreen())),
                      child: RectBox(
                          colr: Colors.orangeAccent,
                          H: h1,
                          icon: Icons.watch_later_outlined,
                          label: "Time Table"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AnnouncementScreen())),
                  child: Container(
                    height: h2,
                    color: Colors.orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.announcement_rounded),
                        Text(
                          "Announcement",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HolidayScreen())),
                      child: RectBox(
                          colr: Color.fromARGB(255, 122, 159, 178),
                          H: h1,
                          icon: Icons.celebration_outlined,
                          label: "Holidays"),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultsScreen(),
                          )),
                      child: RectBox(
                          colr: Colors.orangeAccent,
                          H: h1,
                          icon: Icons.bar_chart,
                          label: "Results"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AssignmentScreen(),
                          )),
                      child: RectBox(
                          colr: Colors.greenAccent,
                          H: h1,
                          icon: Icons.sticky_note_2_sharp,
                          label: "Assignment"),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeesScreen())),
                      child: RectBox(
                          colr: const Color.fromARGB(255, 208, 240, 105),
                          H: h1,
                          icon: Icons.attach_money,
                          label: "Fees"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransportationScreen())),
                  child: Container(
                    height: h2,
                    color: Colors.grey,
                    // ignore: prefer_const_constructors
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.bus_alert_rounded),
                        // ignore: prefer_const_constructors
                        Text(
                          "Transportation",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RectBox(
                        colr: Colors.pink,
                        H: h1,
                        icon: Icons.flag,
                        label: "Exams"),
                  ),
                  Expanded(
                    child: RectBox(
                        colr: Color.fromARGB(209, 68, 255, 243),
                        H: h1,
                        icon: Icons.book_rounded,
                        label: "E-Book"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: RectBox(
                        colr: Colors.pinkAccent,
                        H: h1,
                        icon: Icons.boy_outlined,
                        label: "Parenting Guide"),
                  ),
                  Expanded(
                    child: RectBox(
                        colr: Colors.redAccent,
                        H: h1,
                        icon: Icons.medical_information_rounded,
                        label: "Health Tips"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
