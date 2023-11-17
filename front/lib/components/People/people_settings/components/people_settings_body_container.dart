import 'package:flutter/material.dart';
import 'package:front/components/People/people_settings/people_body/people_settings_body.dart';
import 'package:hexcolor/hexcolor.dart';

class PeopleSettingsBodyContainer extends StatelessWidget {
  PeopleSettingsBodyContainer({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 1,
      height: h * 0.8954,
      decoration: BoxDecoration(
        color: HexColor("#151515"),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.grey[800]!,
        )
      ),
      child: PeopleSettingBody(),
    );
  }

}