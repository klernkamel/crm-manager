import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:front/models/people_model.dart';

part 'filter_event.dart';
part 'filter_state.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterState()) {
    on<AddFiltered>(_onAddFiltered);
  }

  _onAddFiltered(AddFiltered event, Emitter<FilterState> emit) {
    emit(FilterState(
      filtered: event.current
    ));
  }
}
