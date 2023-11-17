import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'change_bloc_event.dart';
part 'change_bloc_state.dart';

class ChangeBloc extends Bloc<ChangeEvent, ChangeState> {
  ChangeBloc() : super(ChangeState()) {
    on<ChangedState>(_onChanged);
  }


  void _onChanged(ChangedState event, Emitter<ChangeState> emit) {
    emit(ChangeState(
      change: event.changed,
    ));
  }
}
