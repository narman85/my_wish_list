import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Controller/auth_controller.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class SignUpScreen extends GetWidget<AuthController> {
  final TextEditingController firstn = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BounceInLeft(
                      duration: kAnimationDuration,
                      child: SmallButton(
                        onTap: () {},
                        color: kWhiteColor,
                        text: "SIGN UP",
                      ),
                    ),
                    SizedBox(width: 20),
                    BounceInRight(
                      duration: kAnimationDuration,
                      child: SmallButton(
                          onTap: () {
                            Get.toNamed("/signinscreen");
                          },
                          color: kGreyColor,
                          text: "SIGN IN",
                          kolor: kWhiteColor),
                    ),
                  ],
                ),
                SizedBox(height: 75),
                BounceInLeft(
                  duration: kAnimationDuration,
                  //! set textfield
                  child: MyTextField(
                      controller: email,
                      prefiks: Icons.mail,
                      keyboard: TextInputType.emailAddress,
                      label: 'EMAIL',
                      hint: 'email@mail.com'),
                ),
                SizedBox(height: 50),
                BounceInRight(
                  duration: kAnimationDuration,
                  //! set textfield name
                  child: MyTextField(
                      controller: firstn,
                      prefiks: FontAwesomeIcons.idCardAlt,
                      label: 'NAME',
                      hint: 'aladdin'),
                ),
                SizedBox(height: 50),
                BounceInLeft(
                  duration: kAnimationDuration,
                  //! set textfield password
                  child: MyTextField(
                      controller: password,
                      prefiks: FontAwesomeIcons.key,
                      label: 'PASSWORD',
                      hint: 'secret',
                      secret: true),
                ),
                SizedBox(height: 75),
                BounceInDown(
                  duration: kAnimationDuration,
                  //! set sign up button
                  child: BigButton(
                    onTap: () {
                      controller.createUser(
                          firstn.text, email.text, password.text);
                    },
                    text: 'SIGN UP',
                    color: kWhiteColor,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BounceInLeft(
                      duration: kAnimationDuration,
                      //! set fb button
                      child: SmallIconButton(
                        onTap: () {
                          // controller.fbLogin();
                          print("Facebook");
                        },
                        icon: FontAwesomeIcons.facebookF,
                        color: kWhiteColor,
                      ),
                    ),
                    SizedBox(width: 50),
                    BounceInRight(
                      duration: kAnimationDuration,
                      //! set google button
                      child: SmallIconButton(
                        onTap: () {
                          controller.googlesignIn();
                          print("Google");
                        },
                        icon: FontAwesomeIcons.google,
                        color: kGreyColor,
                        kolor: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
