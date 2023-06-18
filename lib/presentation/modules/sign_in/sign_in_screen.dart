// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'res.dart';

part 'widgets/buttons/forgot_password_button.dart';
part 'widgets/buttons/third_party_login_button.dart';
part 'widgets/buttons/login_and_registration_button.dart';
part 'widgets/app_bar.dart';
part 'widgets/custom_text_field.dart';
part 'widgets/reusable_text.dart';
part 'widgets/third_party_login.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const routeName = "/sign_in_screen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar,
        body: _body,
      ),
    );
  }

  SingleChildScrollView get _body {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getThirdPartyLoginPart,
          const _ReusableText(useEmailToLoginText),
          Padding(
            padding: EdgeInsets.only(top: 100.h, left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _CustomTextField(
                  iconName: "user",
                  label: const _ReusableText(emailTextFieldLabelText),
                  hintText: emailTextFieldHintText,
                  controller: _emailController,
                ),
                SizedBox(height: 30.h),
                _CustomTextField(
                  iconName: "lock",
                  label: const _ReusableText(passwordTextFieldLabelText),
                  hintText: passwordTextFieldHintText,
                  controller: _passwordController,
                  isObscure: true,
                ),

                // text button to reset password
                _ForgotPasswordButton(onPressed: () {}),

                SizedBox(height: 70.h),
                // login button
                _LoginAndRegistrationButton(
                  onPressed: () {},
                  text: loginButtonText,
                  color: Colors.black,
                  textColor: Colors.white,
                ),
                // registration button
                SizedBox(height: 20.h),
                _LoginAndRegistrationButton(
                  onPressed: () {},
                  text: registrationButtonText,
                  color: Colors.white,
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
