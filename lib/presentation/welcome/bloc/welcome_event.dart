part of 'welcome_bloc.dart';

@immutable
class WelcomeEvent extends Equatable {
  final int indexPage;

  const WelcomeEvent(this.indexPage);

  @override
  List<Object?> get props => [indexPage];
}
