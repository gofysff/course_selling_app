part of 'welcome_bloc.dart';

@immutable
class WelcomeState {
  final int indexPage;

  const WelcomeState({required this.indexPage});
}

class WelcomeInitial extends WelcomeState {
  const WelcomeInitial() : super(indexPage: 0);
}
