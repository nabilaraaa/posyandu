import 'package:apkposyandu/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          theme: theme,
          title: 'apkposyandu',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.onboardingScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
