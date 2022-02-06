import 'package:flutter/material.dart';

void main() {
  const MaterialApp(home: BillCounter());
}

class BillCounter extends StatefulWidget {
  const BillCounter({Key? key}) : super(key: key);

  @override
  _BillCounterState createState() => _BillCounterState();
}

class _BillCounterState extends State<BillCounter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
