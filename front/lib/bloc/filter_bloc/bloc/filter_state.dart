part of 'filter_bloc.dart';

class FilterState extends Equatable {
  final Map<String, Person> filtered;

  FilterState({
    this.filtered = const <String, Person>{},
  });

  @override
  List<Object> get props => [filtered];
}