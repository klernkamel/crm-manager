import 'package:flutter/material.dart';
import 'package:front/components/People/icon_generator.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleNameContainer extends StatelessWidget {
  PeopleNameContainer({
    Key? key,
    required this.width,
    required this.title,
    required this.bordered,
    required this.color,
    required this.onTap,
  }) : super(key: key);
  final double width;
  final String title;
  final bool bordered;
  final String color;
  final void Function()? onTap;
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: InkWell(
                    hoverColor: const Color.fromARGB(36, 255, 255, 255),
                    splashColor: const Color.fromARGB(74, 255, 255, 255),
                    onTap: onTap,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconGen(
                          color: color,
                          title: title,
                        ).padding(right: 5),
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ).padding(horizontal: 3, vertical: 3),
                  ),
                ),
              ),
            ),
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
