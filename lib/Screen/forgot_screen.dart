import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Controller/auth_controller.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class ForgotScreen extends GetWidget<AuthController> {
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 300),
                BounceInDown(
                  duration: kAnimationDuration,
                  //! set textfield
                  child: MyTextField(
                      controller: email,
                      prefiks: Icons.mail,
                      keyboard: TextInputType.emailAddress,
                      label: 'EMAIL',
                      hint: 'email@mail.com'),
                ),
                SizedBox(height: 75),
                BounceInUp(
                  duration: kAnimationDuration,
                  //! set verify button
                  child: BigButton(
                    onTap: () {
                      controller.sendpasswordresetemail(email.text);
                    },
                    text: 'VERIFY',
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
