part of '../welcome_screen.dart';

DotsDecorator get _dotsDecorator {
  return DotsDecorator(
    activeColor: Colors.blue,
    size: Size.square(7.r),
    activeSize: Size(18.r, 7.r),
    activeShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.r),
    ),
  );
}
