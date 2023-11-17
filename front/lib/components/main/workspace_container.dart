import 'package:flutter/material.dart';
import 'package:front/components/main/menu_button.dart';
import 'package:front/inh/page_cont_ingerited.dart';
import 'package:styled_widget/styled_widget.dart';

class WorkspaceContainer extends StatelessWidget {
  WorkspaceContainer({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
      final PageController contr = context.dependOnInheritedWidgetOfExactType<PageContrInherited>()!.contr;
     return Wrap(
      runSpacing: 5,
      children: [
        Text("WORKSPACE", style: TextStyle(color: Colors.grey[600]),).padding(left: 5),
        MenuButton(icon: Icons.maps_home_work_rounded, text: "Companies",h: 26, onTap: () {
          contr.jumpToPage(0);
        }),
        MenuButton(icon: Icons.people_outline_rounded, h: 26, onTap: () {
          contr.jumpToPage(1);
        }, text: "People"),
        MenuButton(icon: Icons.crisis_alert_rounded, h: 26, onTap: () {
          contr.jumpToPage(2);
        }, text: "Opportunities"),
      ],
    ).padding(top: 50);
  }

}