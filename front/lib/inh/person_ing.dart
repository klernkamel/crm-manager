import 'package:flutter/material.dart';
import 'package:front/models/people_model.dart';

class PeopleInherited extends InheritedWidget {
 PeopleInherited({Key? key, required Widget child, required this.map}):super(child: child, key: key);

  final Map<String, Person> map;

  @override
  bool updateShouldNotify(covariant PeopleInherited oldWidget) {
    return oldWidget.map != map;
  }

}