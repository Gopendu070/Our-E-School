// ignore_for_file: curly_braces_in_flow_control_structures, unused_element

import 'package:e_school/Models/BusModel.dart';
import 'package:flutter/material.dart';

class TransportationScreen extends StatelessWidget {
  const TransportationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Buses = [
      {
        "BusNo": "192038",
        "From": "School",
        "To": "Sector 5",
        "Dept": "4:30 P.M.",
        "Arriv": "5:30 P.M.",
        "Status": "Departed",
      },
      {
        "BusNo": "172090",
        "From": "Bus Stop 1",
        "To": "School",
        "Dept": "8:30 A.M.",
        "Arriv": "9:20 A.M.",
        "Status": "Arrived",
      },
      {
        "BusNo": "197678",
        "From": "Bus Stop 2",
        "To": "School",
        "Dept": "8:30 A.M.",
        "Arriv": "9:20 A.M.",
        "Status": "Delayed",
      },
      {
        "BusNo": "187677",
        "From": "School",
        "To": "Bus Stop 2",
        "Dept": "4:30 P.M.",
        "Arriv": "5:30 P.M.",
        "Status": "Delayed",
      },
      {
        "BusNo": "187697",
        "From": "School",
        "To": "Sector 3",
        "Dept": "4:30 P.M.",
        "Arriv": "6:00 P.M.",
        "Status": "Arrived",
      },
    ];
    Color statusColor(String status) {
      if (status == "Departed")
        return Colors.greenAccent;
      else if (status == "Arrived")
        return Colors.orangeAccent;
      else if (status == "Delayed")
        return Colors.redAccent;
      else
        return Colors.white;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Bus Timings"),
        actions: [
          MenuItemButton(
            child: Icon(Icons.more_vert_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemExtent: 150,
          itemCount: Buses.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white10, Colors.transparent]),
                    border: Border.all(color: Colors.white38, width: 2.5),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "•",
                            style: TextStyle(fontSize: 26),
                          ),
                          Icon(Icons.directions_bus_sharp),
                          SizedBox(width: 8),
                          Text(
                            Buses[index]["BusNo"]!,
                            style: TextStyle(
                                color: Color.fromARGB(255, 197, 195, 195),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 190),
                          Text(
                            "11 Oct.",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "From : ${Buses[index]["From"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 9.0),
                          child: Text(
                            "To : ${Buses[index]["To"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Dept. : ${Buses[index]["Dept"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 9.0),
                          child: Text(
                            "Arriv. : ${Buses[index]["Arriv"]}",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.all(7.5),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Status : ",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 15)),
                        TextSpan(
                            text: Buses[index]["Status"],
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: statusColor(
                                    Buses[index]["Status"].toString()))),
                      ])),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
