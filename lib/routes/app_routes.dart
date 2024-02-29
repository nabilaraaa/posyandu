import 'package:flutter/material.dart';
import '../presentation/splash_screen_three_screen/splash_screen_three_screen.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/register_one_screen/register_one_screen.dart';
import '../presentation/data_balita_one_screen/data_balita_one_screen.dart';
import '../presentation/masuk_one_screen/masuk_one_screen.dart';
import '../presentation/profile_settings_container_screen/profile_settings_container_screen.dart';
import '../presentation/akun_two_screen/akun_two_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/data_anak_screen/data_anak_screen.dart';
import '../presentation/artikel_screen/artikel_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreenThreeScreen = '/splash_screen_three_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String registerOneScreen = '/register_one_screen';

  static const String dataBalitaOneScreen = '/data_balita_one_screen';

  static const String masukOneScreen = '/masuk_one_screen';

  static const String profileSettingsContainerScreen =
      '/profile_settings_container_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String akunTwoScreen = '/akun_two_screen';

  static const String homeScreen = '/home_screen';

  static const String dataAnakScreen = '/data_anak_screen';

  static const String artikelScreen = '/artikel_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreenThreeScreen: (context) => SplashScreenThreeScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    registerOneScreen: (context) => RegisterOneScreen(),
    dataBalitaOneScreen: (context) => DataBalitaOneScreen(),
    masukOneScreen: (context) => MasukOneScreen(),
    profileSettingsContainerScreen: (context) =>
        ProfileSettingsContainerScreen(),
    akunTwoScreen: (context) => AkunTwoScreen(),
    homeScreen: (context) => HomeScreen(),
    dataAnakScreen: (context) => DataAnakScreen(),
    artikelScreen: (context) => ArtikelScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
