import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_wish_list/Util/widgets.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../Util/constants.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Pulse(
                        duration: kAnimationDuration,
                        child: FaIcon(
                          FontAwesomeIcons.gift,
                          size: 150,
                          color: kWhiteColor,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 100,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BounceInLeft(
                          duration: kAnimationDuration,
                          child: SmallButton(
                            onTap: () {
                              Get.toNamed("/signupscreen");
                            },
                            color: kWhiteColor,
                            text: "SIGN UP",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        BounceInDown(
                          duration: kAnimationDuration,
                          child: SmallButton(
                            onTap: () {
                              Get.toNamed("/signinscreen");
                            },
                            color: kGreyColor,
                            text: "SIGN IN",
                            kolor: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BounceInUp(
                          duration: kAnimationDuration,
                          child: SmallIconButton(
                            onTap: () {
                              print("Facebook");
                            },
                            icon: FontAwesomeIcons.facebookF,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        BounceInRight(
                          duration: kAnimationDuration,
                          child: SmallIconButton(
                            onTap: () {
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
