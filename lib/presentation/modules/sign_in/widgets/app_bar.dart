part of '../sign_in_screen.dart';

AppBar _appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).colorScheme.background,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.h),
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        height: 1.h,
      ),
    ),
    title: Center(
      child: Text(
        appBarText,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    ),
  );
}
