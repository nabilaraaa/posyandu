import 'package:apkposyandu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage7,
                          height: 458.v,
                          width: 393.h),
                      SizedBox(height: 35.v),
                      Container(
                          width: 265.h,
                          margin: EdgeInsets.only(left: 22.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Selamat datang di Aplikasi ",
                                    style:
                                        CustomTextStyles.headlineSmallff000000),
                                TextSpan(
                                    text: "POS",
                                    style: CustomTextStyles
                                        .headlineSmallLexendExaffffc4df),
                                TextSpan(
                                    text: "YANDU",
                                    style: CustomTextStyles
                                        .headlineSmallLexendExaffaedeff)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 14.v),
                      Container(
                          width: 312.h,
                          margin: EdgeInsets.only(left: 22.h, right: 58.h),
                          child: Text(
                              "di mana setiap langkah kecil sang bayi menjadi cerita besar yang kami dukung dengan penuh perhatian 👶 🙌",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBlack90001)),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "Daftar",
                          margin: EdgeInsets.symmetric(horizontal: 22.h),
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumOnPrimaryContainer_1,
                          onPressed: () {
                            onTapDaftar(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 6.v),
                      GestureDetector(
                          onTap: () {
                            onTapFrameEight(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 91.h),
                              child: Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("Sudah punya akun?",
                                        style: CustomTextStyles
                                            .bodyMediumBlack90001)),
                                Padding(
                                    padding: EdgeInsets.only(left: 5.h),
                                    child: Text("Masuk",
                                        style: theme.textTheme.labelLarge))
                              ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the registerOneScreen when the action is triggered.
  onTapDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerOneScreen);
  }

  /// Navigates to the masukOneScreen when the action is triggered.
  onTapFrameEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.masukOneScreen);
  }
}
