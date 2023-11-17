import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  FormWidget({Key? key, required this.width, required this.bordered, required this.label, required this.onChanged}):super(key: key);
  final double width;
  final bool bordered;
  final String label;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    
    return Row(
      children: [
        SizedBox(
          width: width,
          height: h * 0.04,
          child: TextFormField(
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
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[800]!)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[600]!)
              )
            ),
          ),
        ),
        (bordered == true) ? Container(
          width: 1,
          height:  h * 0.04,
          color: Colors.grey[800]!,
        ) : SizedBox(),
      ],
    );
  }

}