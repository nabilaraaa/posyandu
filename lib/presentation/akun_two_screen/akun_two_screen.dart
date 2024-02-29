import 'package:apkposyandu/main.dart';
import 'package:apkposyandu/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:apkposyandu/widgets/app_bar/custom_app_bar.dart';
import 'package:apkposyandu/widgets/app_bar/appbar_title.dart';
import 'package:apkposyandu/widgets/custom_icon_button.dart';
import 'package:apkposyandu/widgets/custom_outlined_button.dart';
import 'package:apkposyandu/widgets/custom_elevated_button.dart';
import 'package:apkposyandu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';

class AkunTwoScreen extends StatelessWidget {
  AkunTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 120.v,
                width: 124.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage,
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      radius: BorderRadius.circular(
                        60.h,
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      alignment: Alignment.bottomRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCamera1,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Text(
                "Nindia Kalsyara",
                style: CustomTextStyles.headlineSmallOnPrimary,
              ),
              SizedBox(height: 2.v),
              Text(
                "nindakalsyara@email.com",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 31.v),
              Divider(
                color: theme.colorScheme.secondaryContainer,
                indent: 12.h,
                endIndent: 11.h,
              ),
              SizedBox(height: 31.v),
              _buildSixtyOne(context),
              SizedBox(height: 3.v),
              CustomOutlinedButton(
                text: "Ubah Profil",
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 54.v,
                text: "LOGOUT",
                buttonStyle: CustomButtonStyles.fillRedA,
                buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.onboardingScreen);
                },
              ),
              SizedBox(height: 5.v),
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
      title: AppbarTitle(
        text: "Profile",
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return SizedBox(
      height: 199.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 224.h,
              child: Text(
                "Nindia Kalsyara\n32 Januari 1999\nPerempuan\nnindakalsyara@email.com\n(+62) 852 9191 1234",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: CustomTextStyles.titleMediumOnPrimary.copyWith(
                  height: 2.50,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Nama LengkapTanggal LahirJenis KelaminEmailNomor Hp",
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
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
