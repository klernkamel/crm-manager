import 'package:flutter/material.dart';
import 'package:front/settings/settings_body.dart';
import 'package:front/settings/settings_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_widget/styled_widget.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: HexColor("#1b1b1b"),
        ),
        child: Row(
          children: [
            SettingsNavBar(),
            SettingsBody(),
          ],
        ).padding(all: MediaQuery.of(context).size.width * 0.01045),
      ),
    );
  }
  
}