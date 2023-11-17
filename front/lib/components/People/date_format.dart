import 'package:flutter/material.dart';

class Date extends StatelessWidget {
  Date({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.04,
      width: w * 0.141,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey[600]!,
        )
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Date now", style: TextStyle(
          color: Colors.grey[600],
        ),),
      ),
    );
  }

}