import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'state_event.dart';
part 'state_state.dart';

class StateBloc extends Bloc<StatesEvent, StatesState> {
  StateBloc() : super(StatesState()) {
   on<ChangeState>(_onChangeState);
  }


  void _onChangeState(ChangeState event, Emitter<StatesState> emit) {
    emit(StatesState(
      state: event.newState,
    ));
  }

}
