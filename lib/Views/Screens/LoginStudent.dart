//Loging
import 'package:e_school/Views/Screens/DashboardStudent.dart';
import 'package:flutter/material.dart';

import '../Widgets/TField.dart';

class StudentLoginScreen extends StatefulWidget {
  const StudentLoginScreen();

  @override
  State<StudentLoginScreen> createState() => _StudentLoginScreenState();
}

class _StudentLoginScreenState extends State<StudentLoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _studentIdController = TextEditingController();
  final TextEditingController _studentEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      // authentication logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => DashboardStudent()));
        },
        label: Text("Login"),
      ),
      body: Stack(children: [
        Positioned(
          top: 33,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14)),
            child: Container(
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "   Student Login    ",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                    child: Image.asset("assets/student.png", height: 120),
                    borderRadius: BorderRadius.circular(40)),
                SizedBox(height: 30.0),
                //Student ID
                T_Field(controll: _studentIdController, text: "Student ID"),
                SizedBox(height: 20.0),
                //Email
                T_Field(controll: _studentEmailController, text: "Email"),
                SizedBox(height: 20.0),
                T_Field(controll: _passwordController, text: "Password"),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Not Registered?"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Need Help?"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
