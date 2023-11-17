import 'package:flutter/material.dart';
import 'package:front/components/main/menu_button.dart';
import 'package:front/settings/settings_page.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_widget/styled_widget.dart';

class MenuContainer extends StatelessWidget {
  MenuContainer({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    void ShowCustomDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: HexColor("#1b1b1b"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), side: BorderSide.none),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: w * 0.5,
                      height: 40,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                        cursorColor: Colors.white,
                        cursorHeight: 15,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                          labelStyle: TextStyle(
                            color: Colors.blue[200],
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.7,
                            fontSize: 14,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black12)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(width: 2, color: Colors.grey)),
                        ),
                      ),
                    ),
                    Text("Search", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),).padding(left: 30)
                  ],
                ).padding(bottom: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("#151515"),
                  ),
                  width: w * 0.57,
                  height: 300,
                )
              ],
            ).padding(all: 20),
          );
        });
    return Wrap(
      runSpacing: 5,
      children: [
        MenuButton(icon: Icons.search_rounded, text: "Search",h: 26, onTap: () {
          ShowCustomDialog(context);
          // print();
        }),
        MenuButton(icon: Icons.notifications_rounded, h: 26, onTap: () {}, text: "Notifications"),
        MenuButton(icon: Icons.settings_rounded, h: 26, onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => SettingsPage())
          );
        }, text: "Settings"),
        MenuButton(icon: Icons.task_alt_rounded, h: 26, onTap: () {}, text: "Tasks"),
      ],
    ).padding(top: 50);
  }

}