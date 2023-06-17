part of '../../sign_in_screen.dart';

/// LoginAndRegistrationButton is a custom button for login and registration
/// it accepts [onPressed] function to be executed when the button is pressed
/// it accepts [text] to be displayed on the button
/// it accepts [color] to be the background color of the button
/// it accepts [textColor] to be the color of the text on the button
class _LoginAndRegistrationButton extends StatelessWidget {
  const _LoginAndRegistrationButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 330.w,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: const BorderSide(),
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16.spMin,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
