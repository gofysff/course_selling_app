part of '../welcome_screen.dart';

DotsDecorator _dotsDecorator(BuildContext context) {
  return DotsDecorator(
    activeColor: Theme.of(context).colorScheme.primary,
    size: Size.square(7.r),
    activeSize: Size(18.r, 7.r),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.r),
    ),
  );
}
