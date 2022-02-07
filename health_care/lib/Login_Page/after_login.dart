import 'package:flutter/material.dart';

class DontAccount extends StatelessWidget {
  const DontAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            const Text(
              "don't have any account? Please",
              style: TextStyle(fontSize: 15),
            ),
            TextButton(onPressed: () {}, child: const Text("Sign Up"))
          ],
        ),
      ),
    );
  }
}
