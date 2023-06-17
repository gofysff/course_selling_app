part of '../sign_in_screen.dart';

AppBar get _appBar {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(1.h),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1.h,
      ),
    ),
    title: Center(
      child: Text(
        "Log In",
        style: TextStyle(color: Colors.black, fontSize: 16.spMin),
      ),
    ),
  );
}
