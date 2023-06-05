// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/welcome_bloc.dart';

part 'welcome_page.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: 34.h),
          width: 360.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Builder(builder: (context) {
                return PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    context.read<WelcomeBloc>().add(WelcomeEvent(index));
                  },
                  children: _pages,
                );
              }),
              Positioned(
                bottom: 80.h,
                child: _dotsIndicator,
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> get _pages {
    return [
      _WelcomePage(
        index: 0,
        pageController: _pageController,
        title: "First See Learning",
        subTitle: "Forget about a for of paper all knowledge in one learning!",
        imagePath: "assets/images/welcome/reading.png",
        buttonTitle: "next",
      ),
      _WelcomePage(
        index: 1,
        pageController: _pageController,
        title: "Connect With Everyone",
        subTitle:
            "Always keep in touch with your tutors and friends! Let's get connected",
        imagePath: "assets/images/welcome/boy.png",
        buttonTitle: "next",
      ),
      _WelcomePage(
        index: 2,
        pageController: _pageController,
        title: "Always Fascinated Learning",
        subTitle:
            "Anytime, anywhere, anyplace. The time is under your control so study whenever you want",
        imagePath: "assets/images/welcome/man.png",
        buttonTitle: "get started",
      ),
    ];
  }

  Widget get _dotsIndicator {
    return Builder(
      builder: (context) {
        return BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return DotsIndicator(
              dotsCount: _pages.length,
              position: state.indexPage,
              decorator: DotsDecorator(
                activeColor: Colors.blue,
                size: Size.square(7.r),
                activeSize: Size(18.r, 7.r),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
