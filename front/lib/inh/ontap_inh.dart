import 'package:flutter/material.dart';

class OnTapInherited extends InheritedWidget {
  OnTapInherited({Key? key, required Widget child, required this.onTap}):super(child: child, key: key);

  final void Function()? onTap;

  @override
  bool updateShouldNotify(covariant OnTapInherited oldWidget) {
    return oldWidget.onTap != onTap;
  }

}