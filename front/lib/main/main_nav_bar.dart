import 'package:flutter/material.dart';
import 'package:front/components/main/menu_container.dart';
import 'package:front/components/main/person_info.dart';
import 'package:front/components/main/workspace_container.dart';

class MainNavBar extends StatelessWidget {
  MainNavBar({Key? key}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(right: 5),
      width: w * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonsInfo(),
          MenuContainer(),
          WorkspaceContainer(),
        ],
      ),
    );
  }

}