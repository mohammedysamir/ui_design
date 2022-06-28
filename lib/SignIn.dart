import 'package:flutter/material.dart';
import 'package:ui_design/RegisterScreen.dart';

import 'InputField.dart';
import 'MainButton.dart';
import 'SecondaryButton.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.asset("assets/images/background.jpg",fit: BoxFit.fitWidth,),
            ),
            Form(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Column(
                children: [
                  //Register text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  InputField(
                      label: "Phone number",
                      hint: "Eg. 812345678",
                      isPassword: false,
                      isPhone: true),
                  MainButton(
                      text: "Sign In",
                      onPressed: () {
                        //todo: add submit action
                      }),
                  const Text(
                    "or",
                    style: TextStyle(fontSize: 15),
                  ),
                  SecondaryButton(
                      text: "Sign in with Google",
                      onPressed: () {
                        //todo: add sign in options
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Doesn't have any account? ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          child: const Text(
                            "Register here",
                            style: TextStyle(
                                color: Color.fromARGB(255, 81, 175, 171),
                                fontSize: 16),
                          ))
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
