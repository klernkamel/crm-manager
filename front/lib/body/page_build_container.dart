import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:front/bloc/bloc/people_bloc.dart';
import 'package:front/bloc/filter_bloc/bloc/filter_bloc.dart';
import 'package:front/bloc/state_bloc.dart/bloc/state_bloc.dart';
import 'package:front/body/body_container.dart';
import 'package:front/components/People/create_input_container.dart';
import 'package:front/components/People/form_container.dart';
import 'package:front/components/People/leading.dart';
import 'package:front/components/People/people_body_container.dart';
import 'package:front/components/People/people_list_container.dart';
import 'package:front/data/person.dart';
import 'package:front/datebase/database.dart';
import 'package:front/inh/filter_contr_inherited.dart';
import 'package:front/inh/page_cont_ingerited.dart';
import 'package:front/inh/person_ing.dart';
import 'package:front/inh/text_contr.inherit.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';

// ignore: must_be_immutable
class PageBuildContainer extends StatelessWidget {
  PageBuildContainer({Key? key}) : super(key: key);
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController city = TextEditingController();
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    final PageController contr =
        context.dependOnInheritedWidgetOfExactType<PageContrInherited>()!.contr;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SizedBox(
      width: w * 0.7991,
      height: h * 1,
      child: PageView(
        controller: contr,
        children: [
          BodyContainer(
            onTap: () {},
            icon: Icons.maps_home_work_rounded,
            title: "Companies",
          ),
          BlocBuilder<StateBloc, StatesState>(
            builder: (context, state) {
              bool m = state.state;
              return TextContrInherited(
                nameContr: name,
                emailContr: email,
                phoneContr: phone,
                cityContr: city,
                child: BlocBuilder<FilterBloc, FilterState>(
                  builder: (context, state) {
                    return FilterInherited(
                      map: state.filtered,
                      child: BodyContainer(
                        onTap: (m == false)
                            ? () {
                                context
                                    .read<StateBloc>()
                                    .add(ChangeState(newState: true));
                              }
                            : () async {
                                final now = new DateTime.now();
                                String formatter =
                                    DateFormat('yMd').format(now);
                                String generateRandomHexColor() {
                                  int length = 6;
                                  String chars = '0123456789ABCDEF';
                                  String hex = '#';
                                  while (length-- > 0)
                                    hex += chars[(random.nextInt(16)) | 0];
                                  return hex;
                                }
                                
                                final newPerson = Person()
                                  ..color = generateRandomHexColor()
                                  ..name = name.text
                                  ..email = email.text
                                  ..phone = phone.text
                                  ..date = formatter
                                  ..city = city.text;
                                await isarDB.writeTxn((isar) async {
                                  await isar.persons.put(newPerson);
                                });
                                name.clear();
                                email.clear();
                                phone.clear();
                                city.clear();
                                context.read<StateBloc>().add(ChangeState(newState: false));
                              },
                        icon: Icons.people_outline_rounded,
                        title: "People",
                        child: BlocBuilder<PeopleBloc, PeopleState>(
                          builder: (context, state) {
                            return PeopleInherited(
                              map: state.persons,
                              child: PeopleBodyContainer(
                                children: [
                                  PeopleLeading(),
                                  FormContainer(),
                                  (m == true)
                                      ? Align(
                                          alignment:
                                              AlignmentDirectional.center,
                                          child: CreateInput().padding(
                                            top: 10,
                                            bottom: 10,
                                          ))
                                      : Container(),
                                  PeopleListContainer(),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
          BodyContainer(
            icon: Icons.crisis_alert_rounded,
            title: "Opportunities",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
