// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AssignmentScreen extends StatefulWidget {
  const AssignmentScreen({super.key});

  @override
  State<AssignmentScreen> createState() => _AssignmentScreenState();
}

class _AssignmentScreenState extends State<AssignmentScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload Assignments"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("Upload"),
        icon: Icon(Icons.upload_file_rounded),
      ),
      body: Container(
        decoration: BoxDecoration(
          // ignore: prefer_const_literals_to_create_immutables
          gradient: LinearGradient(
              colors: [Colors.white10, Color.fromARGB(28, 29, 27, 27)]),
        ),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 39),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Date : 11/10/23"), SizedBox(width: 20)],
                ),
                SizedBox(height: 9),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Title", border: OutlineInputBorder()),
                ),
                SizedBox(height: 8),
                TextFormField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Brief description about the assignment. . .",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "File Naame", border: OutlineInputBorder()),
                ),
                SizedBox(height: 8),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Subject", border: OutlineInputBorder()),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(14).copyWith(left: 8, right: 108),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.white38)),
                      child: Text(
                        "Standard",
                        style: TextStyle(color: Colors.white60, fontSize: 16),
                      ),
                    ),
                    SizedBox(width: 6),
                    Container(
                      padding: EdgeInsets.all(14).copyWith(left: 8, right: 110),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: Colors.white38)),
                      child: Text(
                        "Division",
                        style: TextStyle(color: Colors.white60, fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
