import 'package:flutter/material.dart';

class CustomTextFormFild extends StatefulWidget {
  TextEditingController emailController;
  String levelText;
  String hintText;
  bool obscurValu;
   CustomTextFormFild({Key? key,
     required this.emailController,
     required this.levelText,
     required this.hintText,
     required this.obscurValu,
   }) : super(key: key);

  @override
  _CustomTextFormFildState createState() => _CustomTextFormFildState();
}

class _CustomTextFormFildState extends State<CustomTextFormFild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30),
      child: TextFormField(
        controller: widget.emailController,
        obscureText: widget.obscurValu,
        decoration: InputDecoration(
          labelText: widget.levelText,
          hintText: widget.hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide()
          )
        ),
      ),
    );
  }
}

