import 'package:flutter/material.dart';

class TextContrInherited extends InheritedWidget {
  TextContrInherited({Key? key, required Widget child, required this.nameContr, required this.emailContr, required this.phoneContr, required this.cityContr}):super(child: child, key: key);

  final TextEditingController nameContr;
  final TextEditingController emailContr;
  final TextEditingController phoneContr;
  final TextEditingController cityContr;

  @override
  bool updateShouldNotify(covariant TextContrInherited oldWidget) {
    return oldWidget.nameContr != nameContr || oldWidget.emailContr != emailContr || oldWidget.phoneContr != phoneContr || oldWidget.cityContr != cityContr;
  }

}