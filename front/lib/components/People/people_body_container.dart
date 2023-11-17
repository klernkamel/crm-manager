import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleBodyContainer extends StatelessWidget {
  PeopleBodyContainer({Key? key, required this.children}):super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
    ).padding(horizontal: 10);
  }

}