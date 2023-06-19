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
        forgotPasswordButtonText,
        style: TextStyle(
            color: context.primaryText,
            decoration: TextDecoration.underline,
            decorationColor:
                Theme.of(context).extension<AppTextColors>()!.primaryText,
            fontSize: 14.spMin),
      ),
    );
  }
}
