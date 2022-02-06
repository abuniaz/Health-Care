import 'package:flutter/material.dart';
import 'package:health_care/Login_Page/check_box.dart';

class Body1 extends StatelessWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Please inter your account",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Inter your email",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Inter your password",
                  ),
                ),
                const CheckBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
