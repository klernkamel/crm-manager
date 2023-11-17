part of 'state_bloc.dart';

abstract class StatesEvent extends Equatable {
  const StatesEvent();

  @override
  List<Object> get props => [];
}

class ChangeState extends StatesEvent {
  final bool newState;
  ChangeState({
    required this.newState,
  });
}
