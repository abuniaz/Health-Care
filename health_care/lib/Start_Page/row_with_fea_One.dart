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
          name: 'Seat Booking',
          img: 'images/bed.png',
        ),
        Feature(
          name: 'Medicine',
          img: '',
        ),
        Feature(
          name: '',
          img: '',
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
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image(
            image: AssetImage(img),
          ),
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
