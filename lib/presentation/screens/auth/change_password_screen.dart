import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                  image: AssetImage("assets/images/p6.png"),
                  fit: BoxFit.contain,
                  height: 300.h,
                  width: 300.w,
                ),

                // login text
                AppText(title: "Please enter a new", color: AppColors.grey, size: 24.sp),
                AppText(title: "Password", color: AppColors.grey, size: 24.sp),
                SizedBox(height: 16.h),
                AppTextInput(isPassword:true, prefix:Icon(Icons.key, color: AppColors.primaryColor,),name: "Password", controller: nameContoller),
                AppTextInput(isPassword:true, prefix:Icon(Icons.key, color: AppColors.primaryColor,),name: "Confirm Password", controller: nameContoller),

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
