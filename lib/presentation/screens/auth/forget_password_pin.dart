import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_pin.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class ForgetPasswordPinScreen extends StatefulWidget {
  const ForgetPasswordPinScreen({super.key});

  @override
  State<ForgetPasswordPinScreen> createState() => _ForgetPasswordPinScreenState();
}

class _ForgetPasswordPinScreenState extends State<ForgetPasswordPinScreen> {
  TextEditingController nameContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon( Icons.arrow_back_ios)),
        title: AppText(title: "Forget Password", size: 16.sp),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/images/p5.png"),
                  fit: BoxFit.contain,
                  height: 200.h,
                  width: 200.w,
                ),
                SizedBox(height: 26.h),
                // login text
                AppText(title: "Please enter your", color: AppColors.grey, size: 24.sp),
                AppText(title: "verification", color: AppColors.grey, size: 24.sp),
                SizedBox(height: 16.h ),
                AppText(title: "We have sent a verification code to your ", color: AppColors.grey, size: 12.sp),

                AppText(title: "registered email/phone", color: AppColors.grey, size: 12.sp),

                SizedBox(height: 36.h),

                AppPin(onPressComplete: (pin) => print('Changed: $pin'), onPressChange: (value) => print('Changed: $value'),),

                SizedBox(height: 36.h),

                AppButton(title: 'Next', onPressed: () {}),
                SizedBox(height: 16.h ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

