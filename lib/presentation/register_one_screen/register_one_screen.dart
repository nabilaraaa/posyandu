import 'package:apkposyandu/presentation/home_screen/home_screen.dart';
import 'package:apkposyandu/widgets/custom_text_form_field.dart';
import 'package:apkposyandu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RegisterOneScreen extends StatelessWidget {
  RegisterOneScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 51.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("DAFTAR",
                              style: theme.textTheme.headlineSmall)),
                      SizedBox(height: 32.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgMother1,
                          height: 103.adaptSize,
                          width: 103.adaptSize,
                          margin: EdgeInsets.only(left: 116.h)),
                      SizedBox(height: 2.v),
                      Padding(
                          padding: EdgeInsets.only(left: 100.h),
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
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Nama Ibu",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 1.v),
                      _buildEditText(context),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("NIK Ibu",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 1.v),
                      _buildEditText1(context),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("No. WhatsApp",
                              style: theme.textTheme.bodyMedium)),
                      _buildEditText2(context),
                      SizedBox(height: 44.v),
                      _buildSelanjutnya(context),
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapFrameEight(context);
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
        controller: editTextController,
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray50);
  }

  /// Section Widget
  Widget _buildEditText1(BuildContext context) {
    return CustomTextFormField(controller: editTextController1);
  }

  /// Section Widget
  Widget _buildEditText2(BuildContext context) {
    return CustomTextFormField(
        controller: editTextController2, textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSelanjutnya(BuildContext context) {
    return CustomElevatedButton(
      text: "Daftar",
      margin: EdgeInsets.only(left: 1.h),
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer_1,
      buttonStyle: CustomButtonStyles.fillBlueGray,
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.homeScreen);
      },
    );
  }

  onTapFrameEight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.masukOneScreen);
  }
}
