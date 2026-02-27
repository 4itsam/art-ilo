import 'package:art_ilo/theme/app_text_style.dart';
import 'package:art_ilo/theme/app_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,

          children: [
            Expanded(
              child: Image.asset(
                Theme.of(context).brightness == Brightness.light
                    ? "assets/logo/artilo_lightmode.png"
                    : "assets/logo/artilo_darkmode.png",
              ),
            ),
            Text(
              SplashScreenText.createdText,
              style: AppTextStyle.createdTextStyle(context),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: Text(
                SplashScreenText.version,
                style: AppTextStyle.versionTextStyle(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
