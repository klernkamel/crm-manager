import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/bloc/bloc/people_bloc.dart';
import 'package:front/bloc/state_bloc.dart/bloc/state_bloc.dart';
import 'package:front/components/People/people_settings/people_settings_page.dart';
import 'package:front/components/People/stack_people.dart';
import 'package:front/data/person.dart';
import 'package:front/inh/ontap_inh.dart';
import 'package:front/provider/provider.dart';

class PeopleListContainer extends ConsumerStatefulWidget {
  const PeopleListContainer({Key? key}) : super(key: key);

  @override
  ConsumerState<PeopleListContainer> createState() =>
      _PeopleListContainerState();
}

class _PeopleListContainerState extends ConsumerState<PeopleListContainer> {
  @override
  void initState() {
    super.initState();
    ref.read(personList.notifier).init();
    ref.read(personList.notifier).streamDB();
  }

  List<Person> list = [];
  Widget build(BuildContext context) {
    final list = ref.watch(personList).list;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return (list.isNotEmpty)
        ? BlocBuilder<StateBloc, StatesState>(
            builder: (context, state) {
              return SizedBox(
                width: w * 0.7991,
                height: (state.state == false) ? h * 0.807 : h * 0.807 - 50.4,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, index) {
                      return OnTapInherited(
                        onTap: () {},
                        child: StackPeople(
                          color: list[index].color,
                          name: list[index].name,
                          email: list[index].email,
                          phone: list[index].phone,
                          date: list[index].date,
                          city: list[index].city,
                        ),
                      );
                    }),
              );
            },
          )
        : Text('No persons yet');
  }
}
