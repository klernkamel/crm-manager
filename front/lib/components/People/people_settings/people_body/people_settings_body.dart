import 'package:flutter/material.dart';
import 'package:front/components/People/people_settings/people_body/components/people_about.dart';
import 'package:front/components/People/people_settings/people_body/components/people_actions.dart';

class PeopleSettingBody extends StatelessWidget {
  PeopleSettingBody({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PeopleAbout(),
        PeopleActions(),
      ],
    );
  }

}