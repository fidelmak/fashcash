import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                  image: AssetImage("assets/images/p4.png"),
                  fit: BoxFit.contain,
                  height: 200.h,
                  width: 200.w,
                ),
                SizedBox(height: 56.h),
                // login text
                AppText(title: "Please enter your registered", color: AppColors.grey, size: 18.sp),
                AppText(title: "email/phone", color: AppColors.grey, size: 18.sp),
                SizedBox(height: 36.h),
                AppTextInput(prefix:Icon(Icons.person, color: AppColors.primaryColor,),name: "email/phone", controller: nameContoller),

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
