part of 'people_bloc.dart';

class PeopleState extends Equatable {
  final Map<String, Person> persons;

  const PeopleState({
    this.persons = const <String, Person>{},
  });

  @override
  List<Object> get props => [persons];
}
