part of 'change_bloc_bloc.dart';

class ChangeState extends Equatable {
  final bool change;

  const ChangeState({
    this.change = false,
  });

  @override
  List<Object> get props => [change];
}
