import 'package:flutter/material.dart';

class CreateInputWidget extends StatelessWidget{
  CreateInputWidget({Key? key, required this.width, required this.label, required this.contr}):super(key: key);
  final double width;
  final String label;
  final TextEditingController contr;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
          width: width,
          height: h * 0.04,
          child: TextFormField(
            controller: contr,
            cursorColor: Colors.white,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
            decoration: InputDecoration(
              hintText: label,
              hintStyle: TextStyle(
                fontSize: 13,
                color: Colors.grey[800],
              ),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[800]!)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[600]!)
              )
            ),
          ),
        );
  }

}