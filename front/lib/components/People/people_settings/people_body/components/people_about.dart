import 'package:flutter/material.dart';
import 'package:front/components/People/people_settings/people_body/components/people_context_info.dart';
import 'package:front/components/People/people_settings/people_body/components/people_main_info.dart';
import 'package:hexcolor/hexcolor.dart';

class PeopleAbout extends StatelessWidget {
  PeopleAbout({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), topLeft: Radius.circular(5), topRight: Radius.zero, bottomRight: Radius.zero),
            color: HexColor("#1b1b1b")
          ),
          width: w * 0.25,
          height: h * 0.8931,
          child: Column(
            children: [
              PeopleMainInfo(
                onTap: () {
                  
                },
              ),
              PeopleContextInfo(),
            ],
          ),
        ),
        Container(
          width: 1,
          height: h * 0.8931,
          color: Colors.grey[800]!,
    )
      ],
    );
  }

}