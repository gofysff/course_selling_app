// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../welcome_screen.dart';

/// this is the welcome page that will be shown in the welcome screen
/// it takes the [title] and [subTitle] and [imagePath] and [buttonTitle]

class _WelcomePage extends StatelessWidget {
  const _WelcomePage({
    Key? key,
    required this.pageController,
    required this.index,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.buttonTitle,
    required this.pagesAmount,
  }) : super(key: key);

  final PageController pageController;
  final int index;
  final String title;
  final String subTitle;
  final String imagePath;
  final String buttonTitle;
  final int pagesAmount;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_image, _title, _subtitle, _nextButton],
    );
  }

  Container get _nextButton {
    return Container(
      margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
      width: 325.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Builder(builder: (context) {
        return TextButton(
          onPressed: () {
            _buttonFunction(context);
          },
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.normal),
          ),
        );
      }),
    );
  }

  void _buttonFunction(BuildContext context) {
    if (index < pagesAmount - 1) {
      pageController.animateToPage(index + 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, SignInScreen.routeName, (route) => false);
    }
  }

  Container get _subtitle {
    return Container(
      width: 360.w,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Center(
        child: Text(
          subTitle,
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 14.sp,
              fontWeight: FontWeight.normal),
        ),
      ),
    );
  }

  Text get _title {
    return Text(
      title,
      style: TextStyle(
          color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.normal),
    );
  }

  SizedBox get _image {
    return SizedBox(
      width: 335.r,
      height: 335.r,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
