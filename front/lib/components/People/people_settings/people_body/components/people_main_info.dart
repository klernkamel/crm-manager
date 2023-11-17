import 'package:flutter/material.dart';
import 'package:front/inh/info_inh.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleMainInfo extends StatelessWidget {
  PeopleMainInfo({Key? key, required this.onTap}) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Color color =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.color;
    String name =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.name;
    String date =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.date;
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: color),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              name[0],
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        ClipRRect(
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
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ).padding(all: 3),
              ),
            ),
          ),
        ).padding(vertical: 5),
        Text(
          date,
          style: TextStyle(
            color: Colors.grey[600]!,
            fontSize: 12,
          ),
        )
      ],
    ).padding(top: 20);
  }
}
