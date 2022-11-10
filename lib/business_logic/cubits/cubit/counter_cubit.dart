import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(number: 0));

  void increament() {
    emit(CounterState(number: state.number + 1));
  }

  void decreament() {
    emit(CounterState(number: state.number - 1));
  }
}
