import 'package:flutter/material.dart';
import 'package:health_care/mainPage/service.dart';

class FirstBody extends StatelessWidget {
  const FirstBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 20),
          child: Container(
            height: 80,
            width: double.infinity,
            color: Colors.white38,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 20, color: Colors.pink),
                ),
                Text("What are you looking for?",
                    style: TextStyle(fontSize: 26, color: Colors.black))
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 20, right: 35, bottom: 20),
          child: Container(
            height: 30,
            color: Colors.white10,
            child: const TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search here what you needed"),
            ),
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServiceDetails()));
                  },
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/D1.png",
                          height: 100,
                          width: 100,
                        ),
                        const Text("Doctors Time")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white70,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/D2.png",
                          height: 100,
                          width: 100,
                        ),
                        const Text("Blood Donate")
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white70,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/D3.jpg",
                          height: 100,
                          width: 100,
                        ),
                        const Text(
                          "Ambulance\n Service",
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white70,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/D4.jpg",
                          height: 100,
                          width: 100,
                        ),
                        const Text("Hospitals\n Details")
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white70,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/D5.jpg",
                          height: 100,
                          width: 100,
                        ),
                        const Text("Medicine\n Service")
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.white70,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/D7.png",
                          height: 100,
                          width: 100,
                        ),
                        const Text("e-Consultation")
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
