import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../data/models/onboarding_model.dart';
import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 20.w) ,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 400.h,

                    viewportFraction: 1.0,
                    autoPlay: true,
                    enlargeCenterPage: false,
                  ),
                  items: onboardingItems
                      .map(
                        (item) => ListView(

                          children: [
                            Image.asset(
                              item.image,
                              fit: BoxFit.contain,
                              width: double.infinity,
                            ),
                                  SizedBox(height: 24.h,),
                            Center(
                              child: AppText(
                                title: item.title,
                                color: AppColors.black,
                                size: 24.sp,
                                weight: FontWeight.bold,
                                align:TextAlign.center,
                              ),
                            ),
                            SizedBox(height: 12.h,),
                            Center(
                              child: AppText(
                                align:TextAlign.center,
                                title: item.description,
                                color: AppColors.grey,
                                weight: FontWeight.w300,
                                size: 16.sp,

                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),

                AppButton(title: 'Get Started', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
