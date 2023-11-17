import 'package:flutter/foundation.dart';
import 'package:front/data/person.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

late Isar isarDB;

Future<void> isarInit() async {
  if (kIsWeb) {
    isarDB = await Isar.open(
    schemas: [PersonSchema],
  );
  } else {
    final dir = await getApplicationDocumentsDirectory();
    isarDB = await Isar.open(
    schemas: [PersonSchema],
    directory: dir.path,);
  }
  
  
}

