import 'package:e_school/Models/studentModel.dart';
import 'package:e_school/Views/Screens/Settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(ProfileScreenStudent());

class ProfileScreenStudent extends StatelessWidget {
  final Student student = Student(
      name: "Riddhiman Ganguly",
      studentID: "SI128720231230",
      rollNo: "35",
      standard: "12",
      department: "Computer Science",
      imageUrl: "https://example.com/student.jpg",
      address: "Kolkata - 145, West Bengal",
      email: "ramesh268@gmail.com",
      phone: "+91 8320891565");

  @override
  Widget build(BuildContext context) {
    var H = MediaQuery.of(context).size.height;
    var W = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit_rounded),
      ),
      body: Stack(
        children: [
          Container(
            height: H,
            width: W,
          ),
          Container(
            width: W,
            height: H * .3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/school.jpg"), fit: BoxFit.cover)),
          ),
          Positioned(
              top: 19,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new))),
          Positioned(
            top: H * 0.28,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18), topRight: Radius.circular(18)),
              child: Container(
                height: H * 0.81,
                width: W,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(248, 86, 78, 78),
                  Color.fromARGB(253, 109, 140, 154),
                ])),
              ),
            ),
          ),
          Positioned(
              top: H * 0.16,
              left: W * 0.33,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("assets/student.png", height: 120))),
          Positioned(
            right: 8,
            top: 20,
            child: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ));
              },
            ),
          ),
          Positioned(
              top: H * 0.41,
              left: W * 0.24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.portrait_rounded,
                        color: Color.fromARGB(255, 112, 150, 216),
                      ),
                      SizedBox(width: 20),
                      Text(
                        student.name,
                        style: TextStyle(
                            fontSize: 17.5, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "ID : ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 112, 150, 216)),
                      ),
                      SizedBox(width: 15),
                      Text(
                        student.studentID,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Class: ",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                            color: Color.fromARGB(255, 112, 150, 216)),
                      ),
                      SizedBox(width: 15),
                      Text(
                        student.standard,
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "RollNo: ",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 112, 150, 216)),
                      ),
                      SizedBox(width: 15),
                      Text(
                        student.rollNo,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Department : ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color.fromARGB(255, 112, 150, 216)),
                      ),
                      SizedBox(width: 15),
                      Text(
                        student.department,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.email_rounded,
                        color: Color.fromARGB(255, 112, 150, 216),
                      ),
                      SizedBox(width: 20),
                      Text(
                        student.email,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 112, 150, 216),
                      ),
                      SizedBox(width: 20),
                      Text(
                        student.phone,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 112, 150, 216),
                      ),
                      SizedBox(width: 20),
                      Text(
                        student.address,
                        style: TextStyle(fontSize: 17),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
