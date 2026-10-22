import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../utils/app_colors.dart';

class AppBankImage extends StatelessWidget {
  final String imageUrl ;
  const AppBankImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.grey,
          width : 1.0,
        )
      ),
      child: Image(image: AssetImage(imageUrl)),

    );
  }
}
