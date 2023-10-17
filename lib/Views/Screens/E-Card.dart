// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_school/Models/studentModel.dart';
import 'package:flutter/material.dart';

class E_Card_Screen extends StatelessWidget {
  const E_Card_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final Student student = Student(
        name: "Riddhiman Ganguly",
        studentID: "SI128720231230",
        rollNo: "19350968",
        standard: "12",
        department: "Computer Science",
        imageUrl: "https://example.com/student.jpg",
        address: "Kolkata - 145, West Bengal",
        email: "ramesh268@gmail.com",
        phone: "+91 8320891565");

    return Scaffold(
      appBar: AppBar(
        title: Text("E-Card"),
      ),
      body: Container(
          child: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 16),
              ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/student.png", height: 110)),
              SizedBox(height: 12),
              Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(205, 255, 82, 82)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Student Name : ${student.name}",
                    style: TextStyle(fontSize: 15),
                  )),
              SizedBox(height: 12),
              Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(205, 255, 82, 82)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Student Roll No : ${student.rollNo}",
                    style: TextStyle(fontSize: 15),
                  )),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(205, 255, 82, 82)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "  Standard : ${student.standard}  ",
                        style: TextStyle(fontSize: 15),
                      )),
                  SizedBox(width: 10),
                  Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(205, 255, 82, 82)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "  Division : A  ",
                        style: TextStyle(fontSize: 15),
                      )),
                ],
              ),
              SizedBox(height: 12),
              Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(205, 255, 82, 82)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Guardian Name : Arindam Ganguly",
                    style: TextStyle(fontSize: 15),
                  )),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(205, 255, 82, 82)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "DOB : 2002-08-11",
                        style: TextStyle(fontSize: 15),
                      )),
                  SizedBox(width: 10),
                  Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(205, 255, 82, 82)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Blood Group : A+",
                        style: TextStyle(fontSize: 15),
                      )),
                ],
              ),
              SizedBox(height: 12),
              Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(205, 255, 82, 82)),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Mobile No : 8910356789",
                    style: TextStyle(fontSize: 15),
                  )),
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            // ignore: prefer_const_literals_to_create_immutables
            gradient: LinearGradient(colors: [
              Colors.white10,
              const Color.fromARGB(0, 158, 158, 158)
            ]),
            borderRadius: BorderRadius.circular(18),
            // color: Colors.deepOrange,
          ),
          width: 300,
          height: 440,
        ),
      )),
    );
  }
}
