part of '../../sign_in_screen.dart';

/// button with image and callback to login with third party services like google, facebook, etc.
class _ThirdPartyLoginButton extends StatelessWidget {
  const _ThirdPartyLoginButton({
    Key? key,
    required this.iconName,
    required this.onTap,
  }) : super(key: key);

  final String iconName;
  final VoidCallback onTap;

  final int buttonSize = 40;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: buttonSize.h,
        width: buttonSize.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            "assets/icons/$iconName.png",
            height: buttonSize.h,
            width: buttonSize.w,
          ),
        ),
      ),
    );
  }
}
