import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../utils/app_colors.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isClicked = false;


  void onChange(bool? value) {
    setState(() {
      isClicked = value ?? false;
    });
  }






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
                    SizedBox(height: 16.h),
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
                SizedBox(height: 16.h),
                // login text
                AppText(title: "Sign Up", color: AppColors.grey, size: 24.sp),
                AppTextInput(name: "Name", controller: nameContoller),

                AppTextInput(name: "Phone Number ", controller: nameContoller),

                AppTextInput(name: "Email", controller: nameContoller),



                AppTextInput(
                  name: "Password",
                  controller: passwordController,
                  prefix: Icon(Icons.key),
                  isPassword: true,
                ),

                AppTextInput(
                  name: "Confirm Password",
                  controller: passwordController,
                  prefix: Icon(Icons.key),
                  isPassword: true,
                ),

                SizedBox(height: 16.h ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Checkbox(value: isClicked, onChanged:onChange),
                  AppText(title: "I Agree to the",),

                  AppText(title: "terms",color: AppColors.primaryColor,),
                  AppText(title: "and",),
                  AppText(title: "privacy policy.",color: AppColors.primaryColor,),
                ],),
                SizedBox(height: 16.h ),

                AppButton(title: 'Sign Up ', onPressed: () {}),
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
                        title: "Or sign up with",
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


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(title: "Already have account?"),
                    TextButton(
                        onPressed: (){},
                        child:AppText(title: "Sign in ",color: AppColors.primaryColor,))

                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
