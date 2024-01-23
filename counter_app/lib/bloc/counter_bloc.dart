import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // this is event handler
    on<CounterIncremented>((event, emit) {
      // this updates state
      emit(state + 1);
    });
    on<CounterDecremented>((event, emit) {
      // this updates state

      if (state == 0) return;
      emit(state - 1);
    });
  }
}
