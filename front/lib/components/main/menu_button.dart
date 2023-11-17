import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class MenuButton extends StatelessWidget {
  MenuButton(
      {Key? key,
      required this.icon,
      required this.h,
      required this.onTap,
      required this.text,
      })
      : super(key: key);
  final String text;
  final double h;
  final void Function()? onTap;
  final IconData? icon;
  final Color? color = Colors.grey[600];
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          height: h,
          child: InkWell(
              hoverColor: Color.fromARGB(36, 255, 255, 255),
              splashColor: Color.fromARGB(74, 255, 255, 255),
              onTap: onTap,
              child: Align(
                  alignment: FractionalOffset.center,
                  child: Row(
                    children: [
                      Icon(icon, color: color, size: 18,).padding(right: 10),
                      Text(text, style: TextStyle(
                        color: color,
                      ),)
                    ],
                  )).padding(horizontal: 5)),
        ),
      ),
    );
  }
}
