import 'package:bloc_test/bloc_test.dart';
import 'package:course_selling_app/logic/blocs/welcome/welcome_bloc.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group(
    'Testing welcome bloc',
    () {
      late WelcomeBloc bloc;

      setUp(() => bloc = WelcomeBloc());

      tearDown(() => bloc.close());

      test(
        'Initial state should be WelcomeState',
        () {
          expect(bloc.state is WelcomeInitialState, true);
        },
      );

      blocTest("emits states with same value as we add in event",
          build: () => bloc,
          act: (bloc) => bloc.add(const WelcomeEvent(1)),
          expect: () => [const WelcomeState(1)]);
    },
  );
}
