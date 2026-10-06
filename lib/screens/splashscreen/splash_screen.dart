import 'package:fashcash/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../utils/app_colors.dart';
import '../../widgets/app_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("icons/fashlogo.png"),
                  fit:BoxFit.contain,
                height: 50.h,
                width:50.w

              ),
              Padding(
                padding:  EdgeInsets.only(left:20.sp),
                child: AppText(title: "Fash Cash", color: AppColors.white,size: 24.sp,),
              )
            ],
          ),

        ],
      ),
    );
  }
}
