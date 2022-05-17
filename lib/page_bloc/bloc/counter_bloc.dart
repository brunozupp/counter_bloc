
import 'package:bloc/bloc.dart';

part 'counter_event.dart'; 
part 'counter_state.dart'; 

class CounterBloc extends Bloc<CounterEvent,CounterState> {
  
  CounterBloc() : super(CounterStateInitial()) {
    on<CounterIncrement>(_incremente);
    on<CounterDecrement>(_decrement);
  }

  void _incremente(CounterIncrement event, Emitter<CounterState> emit) {
    // state -> pega o último estado
    emit(CounterStateDate(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(CounterStateDate(state.counter - 1));
  }
}