import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Screen/home_screen.dart';
import 'package:my_wish_list/Screen/welcome_screen.dart';

import 'auth_controller.dart';

class IsSignedIn extends GetWidget<FirebaseController> {
  @override
  Widget build(BuildContext context) {
    return Obx((){
       return Get.find<FirebaseController>().user!=null ? HomeScreen() : WelcomeScreen();
    });
  }
}