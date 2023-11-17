import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/bloc/bloc/people_bloc.dart';
import 'package:front/bloc/change_bloc/bloc/change_bloc_bloc.dart';
import 'package:front/components/People/people_settings/components/people_settings_body_container.dart';
import 'package:front/components/People/people_settings/components/people_settings_pop_title.dart';
import 'package:front/inh/info_inh.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:styled_widget/styled_widget.dart';

class PeopleSettingPage extends StatelessWidget {
  PeopleSettingPage({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width * 0.18;
    return Scaffold(
      body: BlocProvider(
        create: (context) => ChangeBloc(),
        child: Container(
          decoration: BoxDecoration(
            color: HexColor("#1b1b1b"),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PeopleSettingsPopTitle(
                id: id,
                h: 50,
                onTap: () {
                  Navigator.pop(context);
                },
                icon: Icons.arrow_back_ios_new_rounded,
              ).padding(bottom: 10),
              BlocBuilder<PeopleBloc, PeopleState>(
                builder: (context, state) {
                  print(state.persons[id]);
                  return InfoInherited(
                      name: state.persons[id]!.name,
                      email: state.persons[id]!.email,
                      phone: state.persons[id]!.phone,
                      city: state.persons[id]!.adress,
                      color: state.persons[id]!.color,
                      date: state.persons[id]!.date,
                      id: id,
                      child: PeopleSettingsBodyContainer());
                },
              ),
            ],
          ).padding(
              left: w,
              top: MediaQuery.of(context).size.width * 0.01045,
              bottom: MediaQuery.of(context).size.width * 0.01045,
              right: MediaQuery.of(context).size.width * 0.01045),
        ),
      ),
    );
  }
}
