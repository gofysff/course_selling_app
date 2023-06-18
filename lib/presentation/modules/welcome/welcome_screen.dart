// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sign_in/sign_in_screen.dart';
import 'bloc/welcome_bloc.dart';
import 'res.dart';

part 'widgets/welcome_page.dart';
part 'widgets/dots_decorator.dart';
part 'widgets/pages_data.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  static const routeName = "/welcome_screen";

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeBloc(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            margin: EdgeInsets.only(top: 34.h),
            width: 360.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                _pagesPartOfScreen,
                Positioned(
                  bottom: 80.h,
                  child: _dotsIndicator,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Builder get _pagesPartOfScreen {
    return Builder(builder: (context) {
      return PageView(
        controller: _pageController,
        onPageChanged: (index) {
          context.read<WelcomeBloc>().add(WelcomeEvent(index));
        },
        children: _pagesData(_pageController),
      );
    });
  }

  Widget get _dotsIndicator {
    return Builder(
      builder: (context) {
        return BlocBuilder<WelcomeBloc, WelcomeState>(
          builder: (context, state) {
            return DotsIndicator(
              dotsCount: _pagesData(_pageController).length,
              position: state.indexPage,
              decorator: _dotsDecorator,
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
