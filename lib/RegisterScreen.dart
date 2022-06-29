import 'package:flutter/material.dart';
import 'package:ui_design/Utility_classes/MainButton.dart';
import 'package:ui_design/Utility_classes/SecondaryButton.dart';
import 'Utility_classes/InputField.dart';
import 'SignIn.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<InputField> inputFields = [
      InputField(
          label: "Email",
          hint: "Eg. example@email.com",
          isPassword: false,
          isPhone: false),
      InputField(
          label: "Phone number",
          hint: "Eg. 812345678",
          isPassword: false,
          isPhone: true),
      InputField(
          label: "Password",
          hint: "Password",
          isPassword: true,
          isPhone: false),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: double.infinity,
              height: 160,
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
                        "Register",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  inputFields.elementAt(0),
                  inputFields.elementAt(1),
                  inputFields.elementAt(2),
                  MainButton(
                      text: "Register",
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
                        "Has any account? ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: const Text(
                            "Sign in here",
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
