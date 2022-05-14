// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RowWithFeatureOne extends StatelessWidget {
  const RowWithFeatureOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            )
          ],
        )
      ],
    );
  }
}
