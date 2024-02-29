import 'package:apkposyandu/main.dart';
import 'package:apkposyandu/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:apkposyandu/widgets/custom_elevated_button.dart';
import 'package:apkposyandu/widgets/custom_radio_button.dart';
import 'package:apkposyandu/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:apkposyandu/core/app_export.dart';
import 'package:apkposyandu/presentation/data_anak_screen/data_anak_screen.dart';


// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              height: 21.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer)),
                          SizedBox(height: 11.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 22.h),
                                  child: Text("Selamat Datang, Bunda Nindia!",
                                      style: CustomTextStyles
                                          .titleMediumBlack90001))),
                          SizedBox(height: 17.v),
                          _buildEleven(context),
                          SizedBox(height: 20.v),
                          _buildCalendar(context),
                          SizedBox(height: 12.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 32.h),
                                  child: Row(children: [
                                    SizedBox(
                                        height: 52.v,
                                        child: VerticalDivider(
                                            width: 4.h,
                                            thickness: 4.v,
                                            color: appTheme.red100)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 11.h, top: 6.v, bottom: 4.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("29 November 2023",
                                                  style: CustomTextStyles
                                                      .labelLargeBlack90001),
                                              SizedBox(height: 6.v),
                                              SizedBox(
                                                  width: 158.h,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("IMUNISASI",
                                                            style: CustomTextStyles
                                                                .labelLargeLexendExaRed100),
                                                        Text("minggu ke-4",
                                                            style: CustomTextStyles
                                                                .bodySmallLight)
                                                      ]))
                                            ]))
                                  ]))),
                          SizedBox(height: 32.v),
                          _buildFortyFive(context),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 38.h, right: 61.h),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup1,
                                              height: 108.adaptSize,
                                              width: 108.adaptSize),
                                          SizedBox(height: 9.v),
                                          Text("Perkembangan Kalsyara",
                                              style:
                                                  CustomTextStyles.bodySmall8),
                                          Text("SANGAT BAIK ",
                                              style: CustomTextStyles
                                                  .labelLargeLexendExaGreen800)
                                        ]),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 33.h,
                                                top: 5.v,
                                                bottom: 17.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 1.v),
                                                        child: Text("Nama :",
                                                            style: CustomTextStyles
                                                                .bodySmall10)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 2.h),
                                                        child: Text(
                                                            "Kalsyara Arta Yuana",
                                                            style: CustomTextStyles
                                                                .bodySmallPink20001))
                                                  ]),
                                                  SizedBox(height: 2.v),
                                                  Row(children: [
                                                    Text("Umur :",
                                                        style: CustomTextStyles
                                                            .bodySmall10),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 6.h),
                                                        child: Text("4 tahun",
                                                            style: CustomTextStyles
                                                                .bodySmallPink20001))
                                                  ]),
                                                  SizedBox(height: 3.v),
                                                  Row(children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 1.v),
                                                        child: Text(
                                                            "Berat Badan :",
                                                            style: CustomTextStyles
                                                                .bodySmall10)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text("15kg",
                                                            style: CustomTextStyles
                                                                .bodySmallPink20001))
                                                  ]),
                                                  SizedBox(height: 2.v),
                                                  Row(children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 1.v),
                                                        child: Text(
                                                            "Tinggi Badan :",
                                                            style: CustomTextStyles
                                                                .bodySmall10)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text("100cm",
                                                            style: CustomTextStyles
                                                                .bodySmallPink20001))
                                                  ]),
                                                  SizedBox(height: 2.v),
                                                  SizedBox(
                                                      height: 45.v,
                                                      width: 152.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          children: [
                                                            _buildCampakRubelaDT(
                                                                context),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgGroup3,
                                                                height: 10
                                                                    .adaptSize,
                                                                width: 10
                                                                    .adaptSize,
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 58
                                                                            .h,
                                                                        bottom:
                                                                            3.v)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "Imunisasi :",
                                                                          style:
                                                                              CustomTextStyles.bodySmall10),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgGroup3,
                                                                          height: 10
                                                                              .adaptSize,
                                                                          width: 10
                                                                              .adaptSize,
                                                                          margin: EdgeInsets.only(
                                                                              left: 5.h,
                                                                              top: 3.v))
                                                                    ]))
                                                          ]))
                                                ]))
                                      ]))),
                          SizedBox(height: 21.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: 237.v,
                              width: 355.h)
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildEleven(BuildContext context) {
    return SizedBox(
        height: 90.v,
        width: 349.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle9,
              height: 90.v,
              width: 349.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center,
              onTap: () {
                onTapImgImage(context);
              }),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, right: 70.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("ARTIKEL",
                                style: CustomTextStyles.titleLargeRed100)),
                        Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text("STUNTING",
                                style: CustomTextStyles.titleLargeRed100)),
                        SizedBox(
                            height: 15.v,
                            width: 263.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                      height: 14.v,
                                      width: 263.h,
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme
                                              .onPrimaryContainer))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                      "Bun, belajar mengenai bahayanya STUNTING, yuk!",
                                      style: CustomTextStyles
                                          .labelMediumPoppinsPink20001))
                            ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
        height: 232.v,
        width: 368.h,
        child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                firstDayOfWeek: 0,
                dayTextStyle: TextStyle(
                    color: appTheme.black90001,
                    fontFamily: 'Lexend Exa',
                    fontWeight: FontWeight.w500),
                disabledDayTextStyle: TextStyle(
                    color: appTheme.black90001,
                    fontFamily: 'Lexend Exa',
                    fontWeight: FontWeight.w500)),
            value: selectedDatesFromCalendar1,
            onValueChanged: (dates) {}));
  }

  /// Section Widget
  Widget _buildFortyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 232.h,
                  child: Text(
                      "Ibun, lihat data pertumbuhan Kalsyara di bulan November, yuk!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack9000114)),
              CustomElevatedButton(
                  height: 25.v,
                  width: 98.h,
                  text: "Lihat Selengkapnya",
                  margin: EdgeInsets.only(left: 24.h, top: 7.v, bottom: 10.v),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.bodySmallGray600)
            ]));
  }

  /// Section Widget
  Widget _buildCampakRubelaDT(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: CustomRadioButton(
            text: "Campak Rubela \nDT             \nTBC               ",
            value: "Campak Rubela \nDT             \nTBC               ",
            groupValue: radioGroup,
            textStyle: CustomTextStyles.bodySmallPink20001,
            onChange: (value) {
              radioGroup = value;
            }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      // onTapDataAnak(context);
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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

  /// Navigates to the artikelScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.artikelScreen);
  }
  onTapDataAnak(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dataAnakScreen);
  }
}
