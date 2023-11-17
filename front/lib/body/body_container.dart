import 'package:flutter/material.dart';
import 'package:front/components/main/add_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_widget/styled_widget.dart';

class BodyContainer extends StatelessWidget {
  BodyContainer({Key? key, required this.icon, required this.title, this.child, required this.onTap}) : super(key: key);
  final IconData? icon;
  final String title;
  final Widget? child;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: w * 0.7991,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 25,
                  ).padding(right: 15),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Addbutton(onTap: onTap),
            ],
          ).padding(bottom: 10),
        ),
        Container(
          width: w * 0.7991,
          height: h * 0.9,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[800]!,
            ),
              borderRadius: BorderRadius.circular(5),
              color: HexColor("#151515")),
              child: child,
        ),
      ],
    );
  }
}
