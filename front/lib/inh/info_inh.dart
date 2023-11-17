import 'package:flutter/material.dart';

class InfoInherited extends InheritedWidget {
  InfoInherited(
      {Key? key,
      required Widget child,
      required this.name,
      required this.email,
      required this.phone,
      required this.city,
      required this.color,
      required this.date,
      required this.id,
      })
      : super(child: child, key: key);

  final String name;
  final String email;
  final String phone;
  final String city;
  final Color color;
  final String date;
  final String id;

  @override
  bool updateShouldNotify(covariant InfoInherited oldWidget) {
    return oldWidget.name != name ||
        oldWidget.email != email ||
        oldWidget.phone != phone ||
        oldWidget.city != city ||
        oldWidget.color != color ||
        oldWidget.date != date ||
        oldWidget.id != id;
  }
}
