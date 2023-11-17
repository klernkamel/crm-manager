import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/bloc/bloc/people_bloc.dart';
import 'package:front/bloc/filter_bloc/bloc/filter_bloc.dart';
import 'package:front/bloc/state_bloc.dart/bloc/state_bloc.dart';
import 'package:front/datebase/database.dart';
import 'package:front/main/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await isarInit();
  runApp(ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<PeopleBloc>(
            create: (context) => PeopleBloc(),
          ),
          BlocProvider<StateBloc>(create: (context) => StateBloc()),
          BlocProvider<FilterBloc>(create: (context) => FilterBloc()),
        ],
        child: MainScreen(),
      ),
    ),
  ));
}
