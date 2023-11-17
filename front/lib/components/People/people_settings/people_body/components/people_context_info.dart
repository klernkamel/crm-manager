import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/bloc/bloc/people_bloc.dart';
import 'package:front/bloc/change_bloc/bloc/change_bloc_bloc.dart';
import 'package:front/components/People/people_settings/people_body/components/context_container.dart';
import 'package:front/components/People/people_settings/people_body/components/context_input.dart';
import 'package:front/inh/info_inh.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleContextInfo extends StatelessWidget {
  PeopleContextInfo({Key? key}) : super(key: key);
  final TextEditingController emailContr = TextEditingController();
  final TextEditingController phoneContr = TextEditingController();
  final TextEditingController adressContr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String email =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.email;
    String phone =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.phone;
    String city =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.city;
    String date =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.date;
    String key =
        context.dependOnInheritedWidgetOfExactType<InfoInherited>()!.id;
    double w = MediaQuery.of(context).size.width;
    print(email);
    emailContr.text = email;
    return Container(
      margin: EdgeInsets.all(15),
      width: w * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey[800]!,
          )),
      child: BlocBuilder<ChangeBloc, ChangeState>(
        builder: (context, state) {
          return Wrap(
            spacing: 10,
            direction: Axis.vertical,
            children: [
              (state.change == false)
                  ? ContextContainer(
                      icon: Icons.mail_outline_rounded,
                      title: email,
                      onTap: () {
                        context
                            .read<ChangeBloc>()
                            .add(ChangedState(changed: true));
                      },
                      date: false,
                    )
                  : ContextInput(
                      controller: emailContr,
                      icon: Icons.mail_outline_rounded,
                      title: email,
                      onTapOutside: (p0) {
                        context.read<PeopleBloc>().add(
                            ChangeEmailInfo(key: key, email: emailContr.text));
                        context
                            .read<ChangeBloc>()
                            .add(ChangedState(changed: false));
                      },
                    ),
              (state.change == false)
                  ? ContextContainer(
                      icon: Icons.local_phone_rounded,
                      title: phone,
                      onTap: () {},
                      date: false,
                    )
                  : ContextInput(
                      controller: phoneContr,
                      icon: Icons.local_phone_rounded,
                      title: phone,
                      onTapOutside: (p0) {},
                    ),
              (state.change == false)
                  ? ContextContainer(
                      icon: Icons.maps_home_work_rounded,
                      title: city,
                      onTap: () {},
                      date: false,
                    )
                  : ContextInput(
                      controller: adressContr,
                      icon: Icons.maps_home_work_rounded,
                      title: city,
                      onTapOutside: (p0) {},
                    ),
              ContextContainer(
                icon: Icons.calendar_month_rounded,
                title: date,
                onTap: () {},
                date: true,
              )
            ],
          );
        },
      ).padding(all: 10),
    );
  }
}
