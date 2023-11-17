import 'package:flutter/material.dart';
import 'package:front/components/main/menu_button.dart';
import 'package:styled_widget/styled_widget.dart';

class SettingsUserMenu extends StatelessWidget {
  SettingsUserMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 5,
      children: [
        Text("USER", style: TextStyle(
          color: Colors.grey[600],
        ),).padding(left: 5),
        MenuButton(
            icon: Icons.account_circle_rounded, text: "Profile", h: 26, onTap: () {}),
        MenuButton(
            icon: Icons.article_rounded,
            h: 26,
            onTap: () {},
            text: "Expirience"),
      ],
    ).padding(top: 50);
  }
}
