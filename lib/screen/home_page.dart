import 'package:custom/custom_button/custom_button.dart';
import 'package:custom/custom_text_from_fild/custom_text_from_fild.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Icon(Icons.tag_faces_rounded,
              size: 100,),
              SizedBox(height: 20,),
              CustomTextFormFild(
                emailController: _emailController,
                levelText: 'Email',
                hintText: 'Enter Your Email',
                obscurValu: false,),
              SizedBox(height: 20,),
              CustomTextFormFild(
                  emailController: _passController,
                  levelText: 'Password',
                  hintText: 'Enter Password',
                  obscurValu: true),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){

                },
                child: CustomButton(
                    btnHight: 50,
                    btnwidth: MediaQuery.of(context).size.width,
                    btnColor: Colors.teal, btnText: 'Log In',
                  btnTextColor: Colors.white,),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
