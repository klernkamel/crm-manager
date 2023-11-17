import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

part 'person.g.dart';

@Collection()
class Person {
  int id = isarAutoIncrementId;
  late String color;
  late String name;
  late String email;
  late String phone;
  late String date;
  late String city;

  @override
  String toString() {
    return 'Contact{id: $id,color: $color, name: $name, email: $email, phone: $phone, date: $date, city: $city}';
  }
}
