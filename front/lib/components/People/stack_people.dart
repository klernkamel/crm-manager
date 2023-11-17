import 'package:flutter/material.dart';
import 'package:front/components/People/people_container.dart';
import 'package:front/components/People/people_name_container.dart';
import 'package:front/inh/ontap_inh.dart';

class StackPeople extends StatelessWidget {
  StackPeople({Key? key, required this.name,required this.email, required this.phone, required this.date,required this.city, required this.color}):super(key: key);
  final String name;
  final String email;
  final String phone;
  final String date;
  final String city;
  final String color;

  @override
  Widget build(BuildContext context) {
    void Function()? onTap = context.dependOnInheritedWidgetOfExactType<OnTapInherited>()!.onTap;
    double w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        PeopleNameContainer(width: w * 0.17, title: name, bordered: true, color: color, onTap: onTap,),
        PeopleContainer(width: w * 0.16, title: email, bordered: true),
        PeopleContainer(width: w * 0.16, title: phone, bordered: true),
        PeopleContainer(width: w * 0.141, title: date, bordered: true),
        PeopleContainer(width: w * 0.15, title: city, bordered: false),
      ],
    );
  }

}