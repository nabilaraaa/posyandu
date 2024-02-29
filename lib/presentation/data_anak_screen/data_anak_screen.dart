import 'package:apkposyandu/main.dart';
import 'package:apkposyandu/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:apkposyandu/widgets/app_bar/custom_app_bar.dart';
import 'package:apkposyandu/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:apkposyandu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

class DataAnakScreen extends StatelessWidget {
  DataAnakScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 14.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildEight(context),
                        SizedBox(height: 14.v),
                        Padding(
                          padding: EdgeInsets.only(left: 122.h),
                          child: Text(
                            "KMS ",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 72.h),
                          child: Text(
                            "Kartu Menuju Sehat",
                            style: CustomTextStyles.titleMediumLexendExaRed100,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle12,
                          height: 276.v,
                          width: 354.h,
                          radius: BorderRadius.circular(
                            10.h,
                          ),
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                        SizedBox(height: 26.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Catatan Imunisasi Kalsyara",
                            style: CustomTextStyles.bodyMediumBlack9000114,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage8,
                          height: 217.v,
                          width: 363.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "Data Anak",
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 14.h,
          right: 10.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillPink.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage90x90,
              height: 90.adaptSize,
              width: 90.adaptSize,
              radius: BorderRadius.circular(
                45.h,
              ),
              margin: EdgeInsets.only(bottom: 31.v),
            ),
            Container(
              height: 121.v,
              width: 147.h,
              margin: EdgeInsets.only(left: 18.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 90.v,
                      width: 140.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(right: 69.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nama :",
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    "Umur :",
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                  SizedBox(height: 3.v),
                                  Text(
                                    "Berat Badan :",
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "Tinggi Badan :",
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                  SizedBox(height: 2.v),
                                  Text(
                                    "Imunisasi :",
                                    style: CustomTextStyles.bodySmall10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "Kalsyara Arta Yuana",
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 35.h,
                                top: 18.v,
                              ),
                              child: Text(
                                "4 tahun",
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 48.h),
                              child: Text(
                                "15kg",
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 33.h,
                                bottom: 18.v,
                              ),
                              child: Text(
                                "100cm",
                                style: CustomTextStyles.bodySmall10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 90.h,
                      child: Text(
                        "Campak Rubela \nDT             \nTBC               ",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmall10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreen;
      case BottomBarEnum.Dataanak:
        return AppRoutes.dataAnakScreen;
      case BottomBarEnum.Akun:
        return AppRoutes.akunTwoScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return DefaultWidget();
    }
  }
}
