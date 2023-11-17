import 'package:flutter/material.dart';
import 'package:front/body/page_build_container.dart';
import 'package:front/inh/page_cont_ingerited.dart';
import 'package:front/main/main_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_widget/styled_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}):super(key: key);
  final PageController contr = PageController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: HexColor("#1b1b1b")
        ),
        width: w,
        height: h,
        child: PageContrInherited(
          contr: contr,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainNavBar(),
              PageBuildContainer(),
            ],
          ).padding(all: MediaQuery.of(context).size.width * 0.01045),
        ),
      ),
    );
  }

}