import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final bool _isSelectedColor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45,
          width: 90,
          decoration: BoxDecoration(
              color: _isSelectedColor ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(30)),
          child: const Center(
              child: Text(
            'All',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          )),
        )
      ],
    );
  }
}
