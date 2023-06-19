part of '../sign_in_screen.dart';

class _CustomTextField extends StatelessWidget {
  const _CustomTextField(
      {Key? key,
      required this.label,
      required this.hintText,
      required this.controller,
      required this.iconName,
      this.isObscure = false})
      : super(key: key);

  final TextEditingController controller;
  final Widget label;
  final String hintText;
  final String iconName;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 50.h,
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        controller: controller,
        decoration: InputDecoration(
          icon: SizedBox(
            width: 18.r,
            height: 18.r,
            child: Center(child: Image.asset('assets/icons/$iconName.png')),
          ),
          enabledBorder: _inputBorder,
          disabledBorder: _inputBorder,
          focusedBorder: _inputBorder,
          label: label,
          hintText: hintText,
          hintStyle: TextStyle(
            color: context.primarySecondaryElementText,
            fontSize: 14.sp,
          ),
        ),
        obscureText: isObscure,
      ),
    );
  }

  OutlineInputBorder get _inputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(
        // TODo: move this color to theme
        color: Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
