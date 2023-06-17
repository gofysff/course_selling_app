part of '../sign_in_screen.dart';

Widget get _getThirdPartyLoginPart {
  return Padding(
    padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _ThirdPartyLoginButton(
          iconName: 'google',
          onTap: () {},
        ),
        _ThirdPartyLoginButton(
          iconName: 'apple',
          onTap: () {},
        ),
        _ThirdPartyLoginButton(
          iconName: 'facebook',
          onTap: () {},
        ),
      ],
    ),
  );
}
