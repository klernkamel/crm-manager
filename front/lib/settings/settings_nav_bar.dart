import 'package:flutter/material.dart';
import 'package:front/components/settings/settings_other_container.dart';
import 'package:front/components/settings/settings_title_btn.dart';
import 'package:front/components/settings/settings_workspace_container.dart';
import 'package:front/components/settings/user_menu_container.dart';
import 'package:styled_widget/styled_widget.dart';

class SettingsNavBar extends StatelessWidget {
  SettingsNavBar({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(right: 5),
      margin: EdgeInsets.only(left: w * 0.22),
      width: w * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingsTitleBtn(icon: Icons.arrow_back_ios_new_rounded, h: 50, onTap: () {
            Navigator.pop(context);
          }, text: "Settings"),
          SettingsUserMenu(),
          SettingsWorkspaceCont(),
          SettingsOtherContainer(),
        ],
      ).padding(top: 30),
    );
  }

}