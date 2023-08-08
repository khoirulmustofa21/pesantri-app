import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pesantri/pengurus_pesantren/login/view/login_page.dart';

import 'colors/colors_app.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
      duration: const Duration(milliseconds: 2000),
      defaultNextScreen: LoginPage(),
      backgroundColor: ColorsApp.colorBgWith,
      splashScreenBody: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Spacer(),
            SizedBox(
              width: 200,
              child: Image.asset('assets/images/pesantri.png'),
            ),
            const SizedBox(
              height: 100,
            ),
            const CircularProgressIndicator(
              color: ColorsApp.mainColor,
              strokeWidth: 5,
            ),
            const Spacer(),
            const Text(
              "1.0.0.0",
              style: TextStyle(color: ColorsApp.mainColor, fontSize: 11),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
