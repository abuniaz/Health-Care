import 'package:flutter/material.dart';
import 'package:health_care/doctor_booking/d_booking.dart';

class ServiceDetails extends StatelessWidget {
  const ServiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Doctor List"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: ListView(
          children: [
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Md. Hafizur Rahman",
                "MBBS (DMC), DEM ,MACE (USA)",
                "Diabetes, Thyroid & Hormone\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
            buildColumn(
                "D1.png",
                "Prof. Dr. Syed Atiqul Haq",
                "MBBS, FCPS (Medicine), FRCP",
                "Rheumatology & Medicine\n Specialist",
                "Chittagong Medical College\n & Hospital",
                "Sun, Mon: ",
                "3:00-6:00",
                context),
          ],
        ));
  }

  GestureDetector buildColumn(String img, String name, String title,
      String list, String hos, String day, String time, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const GetBooking()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 170,
          color: Colors.white70,
          child: Row(
            children: [
              Image.asset(
                "images/$img",
                height: 80,
                width: 90,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                        fontSize: 16),
                  ),
                  Text(title),
                  Text(list,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text(
                    hos,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [Text(day), Text(time)],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
