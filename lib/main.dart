import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pesantri/splash_screen_page.dart';
import 'package:get/get.dart';

import 'colors/colors_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.testMode = true;
    return ScreenUtilInit(
      designSize: const Size(392, 856),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
            // primaryColor: ColorsApp.mainColor,
          ),
          home: const SplashPage(),
        );
      },
    );
  }
}
