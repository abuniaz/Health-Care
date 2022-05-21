// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class RowWithFeatureOne extends StatelessWidget {
  const RowWithFeatureOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Feature(
          name: '    Seat\n Booking',
          img: 'images/bed.png',
        ),
        Feature(
          name: 'Medicine',
          img: 'images/medi2.jpg',
        ),
        Feature(
          name: 'Dental',
          img: 'images/den.jpg',
        )
      ],
    );
  }
}

class Feature extends StatelessWidget {
  const Feature({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);
  final String name;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
                image: AssetImage(
                  img,
                ),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )
      ],
    );
  }
}
