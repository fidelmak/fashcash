import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/logo2.png"),
                      fit: BoxFit.contain,
                      height: 50.h,
                      width: 50.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.sp),
                      child: AppText(
                        title: "Fash Cash",
                        color: AppColors.primaryColor,
                        size: 24.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 56.h),
                // login text
                AppText(title: "Login", color: AppColors.grey, size: 24.sp),
                AppTextInput(name: "Name", controller: nameContoller),
                AppTextInput(
                  name: "Password",
                  controller: passwordController,
                  prefix: Icon(Icons.key),
                  isPassword: true,
                ),
                SizedBox(height: 12.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      overlayColor: AppColors.primaryColor,

                      // removes the pressed/hover tint
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 36),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: AppText(
                      size: 12.sp,
                      title: "Forgot password",
                      color: AppColors.grey,
                    ),
                  ),
                ),
                AppButton(title: 'Login', onPressed: () {}),
                SizedBox(height: 16.h ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: AppText(
                        title: "Or sign in with",
                        color: AppColors.grey,
                        size: 12.sp,
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),


                    

                  ],
                ),
                SizedBox(height: 16.h ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor, width: 1.sp,),
                    borderRadius: BorderRadius.circular(12.sp)
                  ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Image.asset("assets/images/google.png",
                            width: 30.w, height:30.h,),
                          AppText(title: "Google"),
                        ]
                    )
                ),

                SizedBox(height: 16.h ),
                AppText(title: "Don't have an account?"),
                SizedBox(height: 16.h ),
                TextButton(
                    onPressed: (){},
                    child:AppText(title: "Sign Up ",color: AppColors.primaryColor,))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
