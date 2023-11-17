import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IconGen extends StatelessWidget {
  const IconGen({Key? key, required this.color, required this.title}):super(key: key);
  final String color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: HexColor(color),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(title[0].toUpperCase(), style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),),
      )
    );
  }

}