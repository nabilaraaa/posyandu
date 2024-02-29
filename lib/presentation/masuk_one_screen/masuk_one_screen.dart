import 'package:apkposyandu/widgets/custom_text_form_field.dart';
import 'package:apkposyandu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MasukOneScreen extends StatelessWidget {
  MasukOneScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 51.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text("MASUK",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgMother1,
                          height: 103.adaptSize,
                          width: 103.adaptSize,
                          margin: EdgeInsets.only(left: 117.h)),
                      SizedBox(height: 2.v),
                      Padding(
                          padding: EdgeInsets.only(left: 101.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "POS",
                                    style: CustomTextStyles.titleLargeffffc4df),
                                TextSpan(
                                    text: "YANDU",
                                    style: theme.textTheme.titleLarge)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 44.v),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("NIK Ibu",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 1.v),
                      _buildFiftyEight(context),
                      SizedBox(height: 46.v),
                      _buildTwelve(context),
                      SizedBox(height: 31.v),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapFrameNine(context);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 1.v),
                                        child: Text("Belum punya akun?",
                                            style: CustomTextStyles
                                                .bodyMediumBlack90001)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text("Daftar",
                                            style: theme.textTheme.labelLarge))
                                  ]))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return SizedBox(
        height: 58.v,
        width: 350.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomTextFormField(
              width: 349.h,
              controller: editTextController,
              textInputAction: TextInputAction.done,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 58.v,
                  width: 349.h,
                  decoration: BoxDecoration(
                      color: appTheme.red5001.withOpacity(0.65),
                      borderRadius: BorderRadius.circular(15.h))))
        ]));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Container(
        height: 58.v,
        width: 350.h,
        margin: EdgeInsets.only(left: 1.h),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 58.v,
                  width: 349.h,
                  decoration: BoxDecoration(
                      color: appTheme.indigo100,
                      borderRadius: BorderRadius.circular(15.h)))),
          CustomElevatedButton(
            width: 349.h,
            text: "Masuk",
            buttonStyle: CustomButtonStyles.fillBlueGray,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer_1,
            alignment: Alignment.center,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.homeScreen);
            },
          ),
        ]));
  }

  /// Navigates to the registerOneScreen when the action is triggered.
  onTapFrameNine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerOneScreen);
  }
}
