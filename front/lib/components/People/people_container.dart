import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleContainer extends StatelessWidget {
  PeopleContainer(
      {Key? key,
      required this.width,
      required this.title,
      required this.bordered})
      : super(key: key);
  final double width;
  final String title;
  final bool bordered;
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[800]!)),
          ),
          width: width,
          height: h * 0.04,
          child: Align(
            alignment: FractionalOffset.centerLeft,
            child: Text(title, style: TextStyle(
              fontSize: 13,
              color: Colors.grey[400],
            ),),
          ).padding(left: 5),
        ),
        (bordered == true)
            ? Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(color: Colors.grey[800]!),
                )),
                width: 1,
                height: h * 0.04,
              )
            : Container(),
      ],
    );
  }
}
