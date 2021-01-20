import 'package:flutter_application_1/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'Screen/add_wish_screen.dart';
import 'Screen/forgot_screen.dart';
import 'Screen/home_screen.dart';
import 'Screen/profile_screen.dart';
import 'Screen/settings_screen.dart';
import 'Screen/sign_in_screen.dart';
import 'Screen/sign_up_screen.dart';
import 'Screen/welcome_screen.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.autoScale(
              800,
              name: TABLET,
              scaleFactor: 1.5,
            ),
            ResponsiveBreakpoint.autoScale(
              1000,
              name: TABLET,
              scaleFactor: 1.5,
            ),
            ResponsiveBreakpoint.resize(
              1200,
              name: DESKTOP,
              scaleFactor: 1.5,
            ),
            ResponsiveBreakpoint.autoScale(
              2460,
              name: "4K",
              scaleFactor: 1.5,
            ),
          ]),
      home: WelcomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/signIn': (context) => SignInScreen(),
        '/signUp': (context) => SignUpScreen(),
        '/forgot': (context) => ForgotScreen(),
        '/profile': (context) => ProfileScreen(),
        '/settings': (context) => SettingsScreen(),
        '/addWish': (context) => AddWishScreen(),
      },
    );
  }
}
