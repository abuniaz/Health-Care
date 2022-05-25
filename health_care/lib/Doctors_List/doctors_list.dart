import 'package:flutter/material.dart';

class DoctorsHome extends StatelessWidget {
  const DoctorsHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Doctors List',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                decoration: const InputDecoration(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
