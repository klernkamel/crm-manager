import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:front/data/person.dart';
import 'package:front/datebase/database.dart';
import 'package:isar/isar.dart';

class PersonListNotifier extends ChangeNotifier {
  final persons = isarDB.persons;
  List<Person> list = [];

  Future<void> init() async {
    await persons.where().findAll().then((value) {
      list.clear();
      list = value;
      notifyListeners();
    });
  }

  Future<void> streamDB() async {
    Stream<void> stream = isarDB.persons.watchLazy();
    stream.listen((event) async { 
      await persons.where().findAll().then((value) {
        list.clear();
        list = value;
        notifyListeners();
      });
    });
  }
}

final personList = ChangeNotifierProvider<PersonListNotifier>((ref) => PersonListNotifier());