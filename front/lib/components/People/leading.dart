import 'package:flutter/material.dart';

class PeopleLeading extends StatelessWidget {
  PeopleLeading({Key? key}) : super(key: key);
  final Color? color = Colors.grey[600];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      height: h * 0.05,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: Colors.grey[800]!,
      ))),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7991,
        child: Wrap(
          spacing: 6,
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.center,
          direction: Axis.horizontal,
          children: [
            Icon(
              Icons.format_list_bulleted_rounded,
              color: color,
              size: 15,
            ),
            Text(
              "All People",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color,
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),
            ),
            Icon(
              Icons.circle,
              color: color,
              size: 3,
            ),
            Text(
              "0",
              style: TextStyle(
                color: color,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: color,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
