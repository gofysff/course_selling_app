part of '../welcome_screen.dart';

List<Widget> _pagesData(PageController pageController) {
  return [
    _WelcomePage(
        index: 0,
        pagesAmount: 3,
        pageController: pageController,
        title: title1,
        subTitle: subtitle1,
        imagePath: imagePath1,
        buttonTitle: buttonTitle1),
    _WelcomePage(
        index: 1,
        pagesAmount: 3,
        pageController: pageController,
        title: title2,
        subTitle: subtitle2,
        imagePath: imagePath2,
        buttonTitle: buttonTitle2),
    _WelcomePage(
        index: 2,
        pagesAmount: 3,
        pageController: pageController,
        title: title3,
        subTitle: subtitle3,
        imagePath: imagePath3,
        buttonTitle: buttonTitle3)
  ];
}
