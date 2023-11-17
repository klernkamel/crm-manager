part of 'people_bloc.dart';

abstract class PeopleEvent extends Equatable {
  const PeopleEvent();

  @override
  List<Object> get props => [];
}

class AddPeople extends PeopleEvent {
  final Person person;
  AddPeople({
    required this.person,
  });
}

class ChangeEmailInfo extends PeopleEvent {
  final String key;
  final String email;
  ChangeEmailInfo({
    required this.key,
    required this.email
  });
}

class ChangePhoneInfo extends PeopleEvent {
  final String key;
  final String phone;
  ChangePhoneInfo({
    required this.key,
    required this.phone,
  });
}

class ChangeAdressInfo extends PeopleEvent {
  final String key;
  final String adress;
  ChangeAdressInfo({
    required this.key,
    required this.adress,
  });
}