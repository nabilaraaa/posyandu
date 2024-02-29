import 'package:apkposyandu/main.dart';
import 'package:apkposyandu/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:apkposyandu/widgets/app_bar/custom_app_bar.dart';
import 'package:apkposyandu/widgets/app_bar/appbar_subtitle.dart';
import 'package:apkposyandu/widgets/custom_search_view.dart';
import 'package:apkposyandu/widgets/custom_radio_button.dart';
import 'package:apkposyandu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

class ArtikelScreen extends StatelessWidget {
  ArtikelScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Cari artikel...",
                ),
              ),
              SizedBox(height: 10.v),
              _buildSeventy(context),
              _buildCard(context),
              SizedBox(height: 69.v),
              Divider(),
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
      title: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "ARTIKEL",
              margin: EdgeInsets.only(
                left: 1.h,
                right: 27.h,
              ),
            ),
            AppbarSubtitle(
              text: "STUNTING",
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return SizedBox(
      height: 386.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 167.v),
              padding: EdgeInsets.symmetric(vertical: 20.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 21.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomRadioButton(
                          text: "Kristo Emanuel",
                          value: "Kristo Emanuel",
                          groupValue: radioGroup,
                          padding: EdgeInsets.symmetric(vertical: 4.v),
                          onChange: (value) {
                            radioGroup = value;
                          },
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          width: 132.h,
                          child: Text(
                            "Mengenal Stunting, Penyebab dan Cara Pencegahan",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        SizedBox(
                          width: 123.h,
                          child: Text(
                            "Stunting adalah salah satu keadaan malnutrisi yang...",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.labelMediumGray800.copyWith(
                              height: 1.70,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Row(
                          children: [
                            Text(
                              "12 Mar",
                              style: theme.textTheme.labelMedium,
                            ),
                            Container(
                              height: 2.adaptSize,
                              width: 2.adaptSize,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                top: 4.v,
                                bottom: 6.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.gray500,
                                borderRadius: BorderRadius.circular(
                                  1.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text(
                                "5 min",
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle5,
                    height: 139.v,
                    width: 160.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    margin: EdgeInsets.only(
                      top: 21.v,
                      bottom: 19.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(),
                SizedBox(height: 19.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 13.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomRadioButton(
                              text: "Freya Yumi",
                              value: "Freya Yumi",
                              groupValue: radioGroup1,
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              onChange: (value) {
                                radioGroup1 = value;
                              },
                            ),
                            SizedBox(height: 16.v),
                            SizedBox(
                              width: 153.h,
                              child: Text(
                                "Masalah Stunting Pada Anak",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            SizedBox(
                              width: 148.h,
                              child: Text(
                                "Simak artikel berikut untuk tahu bagaimana stunting pada...",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelMediumGray800
                                    .copyWith(
                                  height: 1.70,
                                ),
                              ),
                            ),
                            SizedBox(height: 5.v),
                            Row(
                              children: [
                                Text(
                                  "12 Mar",
                                  style: theme.textTheme.labelMedium,
                                ),
                                Container(
                                  height: 2.adaptSize,
                                  width: 2.adaptSize,
                                  margin: EdgeInsets.only(
                                    left: 8.h,
                                    top: 4.v,
                                    bottom: 6.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.gray500,
                                    borderRadius: BorderRadius.circular(
                                      1.h,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "3 min",
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle5129x160,
                        height: 129.v,
                        width: 160.h,
                        radius: BorderRadius.circular(
                          8.h,
                        ),
                        margin: EdgeInsets.only(top: 24.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 19.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 18.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRadioButton(
                    text: "Hans Folix",
                    value: "Hans Folix",
                    groupValue: radioGroup2,
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    onChange: (value) {
                      radioGroup2 = value;
                    },
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    width: 156.h,
                    child: Text(
                      "Permasalahan Stunting di Indonesia",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: 152.h,
                    child: Text(
                      "Itu adalah faktor penting yang harus dipenuhi oleh para pelari...",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelMediumGray800.copyWith(
                        height: 1.70,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      Text(
                        "12 Mar",
                        style: theme.textTheme.labelMedium,
                      ),
                      Container(
                        height: 2.adaptSize,
                        width: 2.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.gray500,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "5 min",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle5113x160,
                height: 113.v,
                width: 160.h,
                radius: BorderRadius.circular(
                  8.h,
                ),
                margin: EdgeInsets.only(
                  left: 18.h,
                  bottom: 26.v,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 21.v),
      ],
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
