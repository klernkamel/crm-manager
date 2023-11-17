part of 'state_bloc.dart';

class StatesState extends Equatable {
  final bool state;

  StatesState({
    this.state = false,
  });

  @override
  List<Object> get props => [state];
}
