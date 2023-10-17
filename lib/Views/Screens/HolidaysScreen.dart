import 'package:e_school/Models/HolidayList.dart';
import 'package:flutter/material.dart';

class HolidayScreen extends StatelessWidget {
  HolidayScreen({super.key});
  final List<Holiday> holiday = [
    Holiday(date: 9, day: "Monday", month: "March", name: "Holika Dahan"),
    Holiday(
        date: 9, day: "Monday", month: "March", name: "Hazarat Ali's Birthday"),
    Holiday(date: 10, day: "Tuesday", month: "March", name: "Holi"),
    Holiday(date: 20, day: "Friday", month: "March", name: "March Equinox"),
    Holiday(
        date: 25, day: "Wednesday", month: "March", name: "Chaitra Sukhladi"),
  ];

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.star_purple500_sharp),
      ),
      body: Stack(
        children: [
          Container(
            height: H,
            width: W,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(248, 54, 50, 50),
              Color.fromARGB(198, 87, 109, 120),
            ])),
          ),
          Positioned(
            top: 50,
            left: 7,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back_ios)),
                Text(
                  "Upcoming Holidays",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
            child: Container(
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: H * .22),
                  Expanded(
                    child: ListView.builder(
                      itemCount: holiday.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 3, bottom: 3, left: 5, right: 5),
                          child: Card(
                            child: ListTile(
                              leading: Text(
                                holiday[index].date.toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                              title: Text(holiday[index].name),
                              subtitle: Text(holiday[index].day),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_drop_down_outlined),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: H * 0.18,
            left: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 9, right: 9, top: 4, bottom: 4),
                  child: Text(
                    "March",
                    style: TextStyle(fontSize: 17.5),
                  ),
                ),
                color: Color.fromARGB(142, 108, 107, 105),
              ),
            ),
          )
        ],
      ),
    );
  }
}
