import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/bloc/bloc/people_bloc.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleSettingsPopTitle extends StatelessWidget {
  PeopleSettingsPopTitle(
      {Key? key,
      required this.h,
      required this.onTap,
      required this.icon,
      required this.id})
      : super(key: key);
  final double h;
  final void Function()? onTap;
  final IconData? icon;
  final String id;
  final Color? color = Colors.grey[400]!;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Material(
                color: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 40,
                  width: 40,
                  child: InkWell(
                      hoverColor: Color.fromARGB(36, 255, 255, 255),
                      splashColor: Color.fromARGB(74, 255, 255, 255),
                      onTap: onTap,
                      child: Align(
                          alignment: FractionalOffset.center,
                          child: Icon(
                            icon,
                            color: color,
                            size: 18,
                          ))),
                ),
              ),
            ),
            Icon(
              Icons.people_outline_rounded,
              color: color,
            ).padding(left: 5),
            BlocBuilder<PeopleBloc, PeopleState>(
              builder: (context, state) {
                String name = state.persons[id]!.name.split(" ").sublist(0, 1).join();
                return Text(
                  name,
                  style: TextStyle(color: color, fontSize: 16),
                );
              },
            ).padding(left: 5)
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              height: 40,
              width: 40,
              child: InkWell(
                  hoverColor: Color.fromARGB(36, 255, 255, 255),
                  splashColor: Color.fromARGB(74, 255, 255, 255),
                  onTap: () {},
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: color,
                        size: 18,
                      ))),
            ),
          ),
        ),
      ],
    );
  }
}
