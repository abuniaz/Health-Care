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
          name: '',
        ),
        Feature(
          name: '',
        ),
        Feature(
          name: '',
        )
      ],
    );
  }
}

class Feature extends StatelessWidget {
  const Feature({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
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
