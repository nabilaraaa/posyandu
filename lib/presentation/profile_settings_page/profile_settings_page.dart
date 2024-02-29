import 'package:apkposyandu/widgets/app_bar/custom_app_bar.dart';
import 'package:apkposyandu/widgets/app_bar/appbar_leading_image.dart';
import 'package:apkposyandu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:apkposyandu/widgets/custom_icon_button.dart';
import 'package:apkposyandu/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

class ProfileSettingsPage extends StatelessWidget {
  const ProfileSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 120.v,
                                      width: 124.h,
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage,
                                                height: 120.adaptSize,
                                                width: 120.adaptSize,
                                                radius:
                                                    BorderRadius.circular(60.h),
                                                alignment:
                                                    Alignment.centerLeft),
                                            CustomIconButton(
                                                height: 40.adaptSize,
                                                width: 40.adaptSize,
                                                padding: EdgeInsets.all(10.h),
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCamera1))
                                          ]))),
                              SizedBox(height: 14.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Nindia Kalsyara",
                                      style: CustomTextStyles
                                          .headlineSmallOnPrimary)),
                              SizedBox(height: 2.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("nindakalsyara@email.com",
                                      style: theme.textTheme.bodyLarge)),
                              SizedBox(height: 42.v),
                              _buildForm2Fill(context),
                              SizedBox(height: 18.v),
                              _buildForm2Fill1(context),
                              SizedBox(height: 18.v),
                              _buildForm2Fill2(context),
                              SizedBox(height: 20.v),
                              _buildFormFill3(context),
                              SizedBox(height: 16.v),
                              _buildFormFill4(context),
                              SizedBox(height: 48.v),
                              CustomElevatedButton(
                                  height: 48.v,
                                  text: "UBAH".toUpperCase(),
                                  margin: EdgeInsets.symmetric(horizontal: 9.h),
                                  buttonStyle: CustomButtonStyles.fillLightBlue,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallYuGothicUI,
                                  alignment: Alignment.center)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Edit Profile"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildForm2Fill(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 18.h),
        padding: EdgeInsets.symmetric(vertical: 2.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 41.v),
          Text("NAMA LENGKAP".toUpperCase(),
              style: CustomTextStyles.bodySmall_1)
        ]));
  }

  /// Section Widget
  Widget _buildForm2Fill1(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 18.h),
        padding: EdgeInsets.symmetric(vertical: 2.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 41.v),
          Text("TANGGAL LAHIR".toUpperCase(),
              style: CustomTextStyles.bodySmall_1)
        ]));
  }

  /// Section Widget
  Widget _buildForm2Fill2(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 18.h),
        padding: EdgeInsets.symmetric(vertical: 2.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 41.v),
          Text("JENIS KELAMIN".toUpperCase(),
              style: CustomTextStyles.bodySmall_1)
        ]));
  }

  /// Section Widget
  Widget _buildFormFill3(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 18.h),
        padding: EdgeInsets.symmetric(vertical: 2.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 41.v),
          Text("email".toUpperCase(), style: CustomTextStyles.bodySmall_1)
        ]));
  }

  /// Section Widget
  Widget _buildFormFill4(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 18.h),
        padding: EdgeInsets.symmetric(vertical: 2.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 41.v),
          Text("NOMOR TELEPON".toUpperCase(),
              style: CustomTextStyles.bodySmall_1)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
