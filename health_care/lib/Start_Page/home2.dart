import 'package:flutter/material.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person_add))],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Hello",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Abu Niaz",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search here what you need?"),
            )
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
