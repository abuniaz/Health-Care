import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:health_care/main.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: [
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text("Create Your Account Its free"),
            ),
            buildInputFile(lable: "Full Name"),
            buildInputFile(lable: "Phone Number"),
            buildInputFile(lable: "Gender"),
            buildInputFile(lable: "District"),
            buildInputFile(lable: "Road No."),
            buildInputFile(lable: "House No."),
            buildInputFile(lable: "Password", obscureText: true),
            buildInputFile(lable: "Password", obscureText: true),
            MaterialButton(
              height: 35,
              minWidth: 80,
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: const Text("Sign Up"),
              shape: const StadiumBorder(side: BorderSide.none),
            ),
          ],
        ),
      ]),
    );
  }
}

Widget buildInputFile({lable, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          lable,
          style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black38),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 50),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400))),
        ),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
