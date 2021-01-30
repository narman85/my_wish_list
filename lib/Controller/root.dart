import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Screen/home_screen.dart';
import 'package:my_wish_list/Screen/welcome_screen.dart';

import 'auth_controller.dart';
import 'user_controller.dart';

class Root extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user?.uid != null) {
          return HomeScreen();
        } else {
          return WelcomeScreen();
        }
      },
    );
  }
}