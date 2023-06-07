part of '../../sign_in_screen.dart';

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Forgot password",
        style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue.withOpacity(0.5),
            fontSize: 14.spMin),
      ),
    );
  }
}
