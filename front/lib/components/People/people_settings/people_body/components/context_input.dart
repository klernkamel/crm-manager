import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

// ignore: must_be_immutable
class ContextInput extends StatelessWidget {
  ContextInput(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onTapOutside,
      required this.controller,
      })
      : super(key: key);
  final String title;
  final IconData? icon;
  final void Function(PointerDownEvent)? onTapOutside;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey[800]!,
          size: 18,
        ).padding(right: 10),
        SizedBox(
          width: 150,
          height: 20,
          child: TextFormField(
            controller: controller,
            onTapOutside: onTapOutside,
            cursorColor: Colors.white,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13
            ),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 7, horizontal: 3),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[800]!)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[600]!)
              )
            ),
          ),
        ),
      ],
    );
  }
}
