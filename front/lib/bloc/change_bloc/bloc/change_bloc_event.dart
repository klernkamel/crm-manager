part of 'change_bloc_bloc.dart';

abstract class ChangeEvent extends Equatable {
  const ChangeEvent();

  @override
  List<Object> get props => [];
}

class ChangedState extends ChangeEvent {
  final bool changed;
  ChangedState({
    required this.changed,
  });
}