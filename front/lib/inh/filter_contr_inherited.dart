import 'package:flutter/material.dart';
import 'package:front/models/people_model.dart';

class FilterInherited extends InheritedWidget {
  FilterInherited({Key? key, required Widget child, required this.map}):super(child: child, key: key);

  final Map<String, Person> map;

  @override
  bool updateShouldNotify(covariant FilterInherited oldWidget) {
    return oldWidget.map != map;
  }

}