import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

// ignore: must_be_immutable
class ContextContainer extends StatelessWidget {
  ContextContainer(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onTap,
      required this.date})
      : super(key: key);
  final String title;
  final IconData? icon;
  final void Function()? onTap;
  bool date = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey[800]!,
          size: 18,
        ).padding(right: 10),
        (date == false)
            ? ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                      hoverColor: Color.fromARGB(36, 255, 255, 255),
                      splashColor: Color.fromARGB(74, 255, 255, 255),
                      onTap: onTap,
                      child: (title != " ")
                          ? Text(
                              title,
                              style: TextStyle(
                                color: Colors.grey[500]!,
                                fontSize: 13,
                              ),
                            ).padding(all: 3)
                          : Text(
                              "add",
                              style: TextStyle(
                                color: Colors.grey[500]!,
                                fontSize: 13,
                              ),
                            ).padding(all: 3),
                    ),
                  ),
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  color: Colors.grey[500]!,
                  fontSize: 13,
                ),
              ),
      ],
    );
  }
}
