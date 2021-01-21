import 'package:get/get.dart';
import 'Screen/add_wish_screen.dart';
import 'Screen/forgot_screen.dart';
import 'Screen/home_screen.dart';
import 'Screen/profile_screen.dart';
import 'Screen/settings_screen.dart';
import 'Screen/sign_in_screen.dart';
import 'Screen/sign_up_screen.dart';
import 'Screen/splash_screen.dart';
import 'Screen/welcome_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => SplashScreen(),
    ),
    GetPage(
      name: '/welcomescreen',
      page: () =>
          WelcomeScreen(), //(uncomment here to swith to todo app)TodoList(),
    ),
    GetPage(
      name: '/signinscreen',
      page: () => SignInScreen(),
    ),
    GetPage(
      name: '/signupscreen',
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: '/forgotscreen',
      page: () => ForgotScreen(),
    ),
    GetPage(
      name: '/homescreen',
      page: () => HomeScreen(),
    ),
    GetPage(
      name: '/addwishscreen',
      page: () => AddWishScreen(),
    ),
    GetPage(
      name: '/profilescreen',
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: '/settingsscreen',
      page: () => SettingsScreen(),
    )
  ];
}
