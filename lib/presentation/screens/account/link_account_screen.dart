import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../utils/app_colors.dart';

import '../../widgets/app_bank_image.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_input.dart';

class LinkAccountScreen extends StatefulWidget {
  const LinkAccountScreen({super.key});

  @override
  State<LinkAccountScreen> createState() => _LinkAccountScreenState();
}

class _LinkAccountScreenState extends State<LinkAccountScreen> {
  TextEditingController nameContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();



 final List<String> bankImage = [
   "assets/images/a13.png",
   "assets/images/a4.png",
   "assets/images/a5.png",
   "assets/images/a6.png",


  ];
  final List<String> cardImage = [
    "assets/images/a7.png",
    "assets/images/a14.png",
    "assets/images/a1.png",

    "assets/images/a4.png",



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:Icon( Icons.arrow_back_ios)),
        title: AppText(title: "Link Account", size: 16.sp),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  image: AssetImage("assets/images/p7.png"),
                  fit: BoxFit.contain,
                  height: 200.h,
                  width: 200.w,
                ),

                // login text
                AppText(title: "Link your bank accounts and cards", color: AppColors.grey, size: 14.sp),
                AppText(title: "for activation ", color: AppColors.grey, size: 14.sp),
                SizedBox(height: 16.h),
                Align(
                    alignment:Alignment.centerLeft,
                    child: AppText(title: "Bank Accounts", color: AppColors.grey, size: 18.sp)),
              SizedBox(
                height: 50.h,


                child: ListView.builder(

                  scrollDirection:Axis.horizontal ,
                  itemCount: bankImage.length,
                    itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppBankImage(imageUrl: bankImage[index]),
                  );
                }

                ),
              ),
// for cards

                Align(
                    alignment:Alignment.centerLeft,
                    child: AppText(title: "Cards", color: AppColors.grey, size: 18.sp)),
                Center(
                  child: SizedBox(
                    height: 50.h,


                    child: ListView.builder(

                        scrollDirection:Axis.horizontal ,
                        itemCount: cardImage.length,
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppBankImage(imageUrl: cardImage[index]),
                          );
                        }

                    ),
                  ),
                ),


                SizedBox(height: 36.h),

                AppButton(title: 'Skip', onPressed: () {}),
                SizedBox(height: 16.h ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
