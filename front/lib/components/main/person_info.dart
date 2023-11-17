import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_widget/styled_widget.dart';

class PersonsInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: HexColor("#4a4a4a"),
          ),
          width: 40,
          height: 40,
        ),
        const Text("Kirill Maslow", style: TextStyle(
          color: Colors.white
        ),).padding(left: 20),
      ],
    );
  }

}