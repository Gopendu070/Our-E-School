import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class T_Field extends StatelessWidget {
  TextEditingController controll;
  String text;
  T_Field({required this.controll, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controll,
      obscureText: text == "Password",
      decoration: InputDecoration(
        labelText: text,
        prefixIcon: Icon(Icons.email_rounded),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      ),
      validator: _validate,
    );
  }

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your $text';
    }
    return null;
  }
}
