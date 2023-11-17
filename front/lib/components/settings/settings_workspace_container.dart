import 'package:flutter/material.dart';
import 'package:front/components/main/menu_button.dart';
import 'package:styled_widget/styled_widget.dart';

class SettingsWorkspaceCont extends StatelessWidget {
  SettingsWorkspaceCont({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
     return Wrap(
      runSpacing: 5,
      children: [
        Text("WORKSPACE", style: TextStyle(color: Colors.grey[600]),).padding(left: 5),
        MenuButton(icon: Icons.settings_rounded, text: "General",h: 26, onTap: () {}),
        MenuButton(icon: Icons.people_outline_rounded, h: 26, onTap: () {}, text: "Memvers"),
        MenuButton(icon: Icons.account_tree_rounded, h: 26, onTap: () {}, text: "Data model"),
      ],
    ).padding(top: 50);
  }

}