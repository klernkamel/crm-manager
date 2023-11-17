import 'package:flutter/material.dart';
import 'package:front/components/main/menu_button.dart';
import 'package:styled_widget/styled_widget.dart';

class SettingsOtherContainer extends StatelessWidget {
  SettingsOtherContainer({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
     return Wrap(
      runSpacing: 5,
      children: [
        Text("OTHER", style: TextStyle(color: Colors.grey[600]),).padding(left: 5),
        MenuButton(icon: Icons.logout_rounded, text: "Logout",h: 26, onTap: () {}),
      ],
    ).padding(top: 50);
  }

}