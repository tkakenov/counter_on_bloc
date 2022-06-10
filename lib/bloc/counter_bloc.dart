import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  CounterBloc() : super(const InitialCounterState()) {
    on<IncrementCounterEvent>((event, emit) {
      ++counter;
      emit(SuccessCounterState(counter: counter));
    });

    on<DecrementCounterEvent>((event, emit) {
      counter = max(0, --counter);
      emit(SuccessCounterState(counter: counter));
    });
  }
}

@immutable
abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {
  IncrementCounterEvent();
}

class DecrementCounterEvent extends CounterEvent {
  DecrementCounterEvent();
}

@immutable
abstract class CounterState {
  final int counter;
  const CounterState({required this.counter});
}

class InitialCounterState extends CounterState {
  const InitialCounterState({
    int counter = 0,
  }) : super(counter: counter);
}

class SuccessCounterState extends CounterState {
  const SuccessCounterState({
    required int counter,
  }) : super(counter: counter);
}
