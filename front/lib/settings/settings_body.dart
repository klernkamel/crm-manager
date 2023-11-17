import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SettingsBody extends StatelessWidget {
  SettingsBody({Key? key}):super(key: key);

  @override
 Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 0.5791,
      height: h * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: HexColor("#151515"),
      ),
    );
  }
  
}