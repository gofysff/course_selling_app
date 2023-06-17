part of '../welcome_screen.dart';

List<Widget> _pagesData(PageController pageController) {
  return [
    _WelcomePage(
      index: 0,
      pagesAmount: 3,
      pageController: pageController,
      title: "First See Learning",
      subTitle: "Forget about a for of paper all knowledge in one learning!",
      imagePath: "assets/images/welcome/reading.png",
      buttonTitle: "next",
    ),
    _WelcomePage(
      pagesAmount: 3,
      index: 1,
      pageController: pageController,
      title: "Connect With Everyone",
      subTitle:
          "Always keep in touch with your tutors and friends! Let's get connected",
      imagePath: "assets/images/welcome/boy.png",
      buttonTitle: "next",
    ),
    _WelcomePage(
      pagesAmount: 3,
      index: 2,
      pageController: pageController,
      title: "Always Fascinated Learning",
      subTitle:
          "Anytime, anywhere, anyplace. The time is under your control so study whenever you want",
      imagePath: "assets/images/welcome/man.png",
      buttonTitle: "get started",
    ),
  ];
}
