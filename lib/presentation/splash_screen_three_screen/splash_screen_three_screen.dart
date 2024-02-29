import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

class SplashScreenThreeScreen extends StatelessWidget {
  const SplashScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMother1,
                height: 150.adaptSize,
                width: 150.adaptSize,
              ),
              SizedBox(height: 2.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "POS",
                      style: theme.textTheme.headlineMedium,
                    ),
                    TextSpan(
                      text: "YANDU",
                      style: CustomTextStyles.headlineMediumffadddff,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
