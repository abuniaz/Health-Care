import 'package:flutter/material.dart';
import 'package:health_care/constant.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_add),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
      ),
      drawer: const Drawer(),
    );
  }
}
