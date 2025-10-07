import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/themes/colors_manager.dart';
import 'widgets/lets_go_box.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainPurple,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xffB0A3E5), ColorsManager.mainPurple],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/images/top_elipse.png'),
          ),
          Positioned(
            top: 381.h,
            left: 0,
            child: Image.asset('assets/images/mid_left_elipse.png'),
          ),
          Positioned(
            top: 503.h,
            right: 0,
            child: Image.asset('assets/images/right_elipse.png'),
          ),
          Center(child: Image.asset('assets/images/man.png')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(
                horizontal: 15.0.w,
                vertical: 40.0.h,
              ),
              child: LetsGoBox(),
            ),
          ),
        ],
      ),
    );
  }
}
