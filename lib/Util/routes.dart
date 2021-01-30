import 'package:get/get.dart';
import '../Screen/add_wish_screen.dart';
import '../Screen/forgot_screen.dart';
import '../Screen/home_screen.dart';
import '../Screen/profile_screen.dart';
import '../Screen/sign_in_screen.dart';
import '../Screen/sign_up_screen.dart';
import '../Screen/welcome_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => WelcomeScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
    GetPage(
      name: '/signinscreen',
      page: () => SignInScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
    GetPage(
      name: '/signupscreen',
      page: () => SignUpScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
    GetPage(
      name: '/forgotscreen',
      page: () => ForgotScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
    GetPage(
      name: '/homescreen',
      page: () => HomeScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
    GetPage(
      name: '/addwishscreen',
      page: () => AddWishScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
    GetPage(
      name: '/profilescreen',
      page: () => ProfileScreen(),
      transition: Transition.noTransition,
      transitionDuration: Duration(seconds: 0),
    ),
  ];
}
