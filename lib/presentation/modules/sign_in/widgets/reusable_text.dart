part of '../sign_in_screen.dart';

class _ReusableText extends StatelessWidget {
  const _ReusableText(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey.withOpacity(0.5),
        fontSize: 14.spMin,
      ),
    );
  }
}
