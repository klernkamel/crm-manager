import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:front/models/people_model.dart';
import 'package:uuid/uuid.dart';

part 'people_event.dart';
part 'people_state.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final uuid = Uuid();
  PeopleBloc() : super(PeopleState()) {
    on<AddPeople>(_onAddPeople);
    on<ChangeEmailInfo>(_onChangeEmail);
    on<ChangePhoneInfo>(_onChangePhone);
    on<ChangeAdressInfo>(_onChangeAdress);
  }

  void _onAddPeople(AddPeople event, Emitter<PeopleState> emit) {
    final newPeople = <String, Person>{
      uuid.v4(): event.person,
    };
    final Map<String, Person> updated = Map.from(state.persons);
    updated.addAll(newPeople);
    emit(PeopleState(
      persons:  updated,
    ));
  }

  void _onChangeEmail(ChangeEmailInfo event, Emitter<PeopleState> emit) {
    Map<String, Person> persons = state.persons;
    persons[event.key] = persons[event.key]!.copyWith(email: event.email);
    emit(PeopleState(
      persons: persons,
    ));
  }

  void _onChangePhone(ChangePhoneInfo event, Emitter<PeopleState> emit) {
    Map<String, Person> persons = state.persons;
    persons[event.key] = persons[event.key]!.copyWith(phone: event.phone);
    emit(PeopleState(
      persons: persons,
    ));
  }

  void _onChangeAdress(ChangeAdressInfo event, Emitter<PeopleState> emit) {
    Map<String, Person> persons = state.persons;
    persons[event.key] = persons[event.key]!.copyWith(adress: event.adress);
    emit(PeopleState(
      persons: persons,
    ));
  }
}
