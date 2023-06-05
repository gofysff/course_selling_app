import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'welcome_event.dart';
part 'welcome_state.dart';

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc() : super(const WelcomeInitialState()) {
    on<WelcomeEvent>(
      (event, emit) {
        emit(WelcomeState(event.indexPage));
      },
    );
  }
}
