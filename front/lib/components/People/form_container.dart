import 'package:flutter/material.dart';
import 'package:front/components/People/form_widget.dart';

class FormContainer extends StatelessWidget {
  FormContainer({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        FormWidget(width: w * 0.17, bordered: true, label: "People", onChanged: (p0) {
          
        },),
        FormWidget(width: w * 0.16, bordered: true, label: "Email", onChanged: (p0) {
          
        },),
        FormWidget(width: w * 0.16, bordered: true, label: "Phone", onChanged: (p0) {
          
        },),
        FormWidget(width: w * 0.141, bordered: true, label: "Date", onChanged: (p0) {
          
        },),
        FormWidget(width: w * 0.15, bordered: false, label: "City", onChanged: (p0) {
          
        },),
      ],
    );
  }

}