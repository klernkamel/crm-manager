import 'package:flutter/material.dart';

class PageContrInherited extends InheritedWidget {
  PageContrInherited({Key? key, required Widget child, required this.contr}):super(child: child, key: key);

  final PageController contr;

  @override
  bool updateShouldNotify(covariant PageContrInherited oldWidget) {
    return oldWidget.contr != contr;
  }

}