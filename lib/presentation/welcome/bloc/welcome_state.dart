part of 'welcome_bloc.dart';

@immutable
class WelcomeState extends Equatable {
  final int indexPage;

  const WelcomeState(this.indexPage);

  @override
  List<Object?> get props => [indexPage];
}

class WelcomeInitialState extends WelcomeState {
  const WelcomeInitialState() : super(0);
}
