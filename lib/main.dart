import 'package:device_preview_plus/device_preview_plus.dart';

import 'package:fashcash/data/dataproviders/joke_providers.dart';
import 'package:fashcash/presentation/screens/auth/login_screen.dart';
import 'package:fashcash/presentation/screens/home/home_screen.dart';
import 'package:fashcash/presentation/screens/home/job_home.dart';
import 'package:fashcash/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:fashcash/presentation/screens/splashscreen/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'business_logic/bloc/jokebloc/jokes_bloc.dart';
import 'config/app_dependencies.dart';
import 'data/repository/joke_repository.dart';

void main() async {
  final client = http.Client();
  final preference = await SharedPreferences.getInstance();
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (context) {
        return AppDependencies(preference: preference,
        child: const MyApp());
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
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          home: LoginScreen(),
        );
      },
    );
  }
}
