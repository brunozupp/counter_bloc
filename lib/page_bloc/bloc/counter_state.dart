part of 'counter_bloc.dart';

abstract class CounterState {
  
  final int counter;

  const CounterState(this.counter);
}

class CounterStateInitial extends CounterState {
  CounterStateInitial() : super(0);
}

class CounterStateDate extends CounterState {
  CounterStateDate(super.counter);
}