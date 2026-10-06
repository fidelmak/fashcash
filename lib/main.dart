import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:fashcash/screens/auth/login_screen.dart';
import 'package:fashcash/screens/onboarding/onboarding_screen.dart';
import 'package:fashcash/screens/splashscreen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          home: LoginScreen(),
        );
      }
    );
  }
}

