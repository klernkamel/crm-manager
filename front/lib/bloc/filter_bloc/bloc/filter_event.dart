part of 'filter_bloc.dart';

abstract class FilterEvent extends Equatable {
  const FilterEvent();

  @override
  List<Object> get props => [];
}

class AddFiltered extends FilterEvent {
  final Map<String, Person> current;
  AddFiltered({
    required this.current,
  });
}
