import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class SignInScreen extends StatelessWidget {
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
                        onTap: () {
                          Get.toNamed("/signupscreen");
                        },
                        color: kGreyColor,
                        kolor: kWhiteColor,
                        text: "SIGN UP",
                      ),
                    ),
                    SizedBox(width: 20),
                    BounceInRight(
                      duration: kAnimationDuration,
                      child: SmallButton(
                        onTap: () {},
                        color: kWhiteColor,
                        text: "SIGN IN",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),
                BounceInLeft(
                  duration: kAnimationDuration,
                  child: MyTextField(
                      prefiks: Icons.mail,
                      keyboard: TextInputType.emailAddress,
                      label: 'EMAIL',
                      hint: 'email@mail.com'),
                ),
                SizedBox(height: 50),
                BounceInRight(
                  duration: kAnimationDuration,
                  child: MyTextField(
                      prefiks: FontAwesomeIcons.key,
                      label: 'PASSWORD',
                      hint: 'secret',
                      secret: true),
                ),
                SizedBox(height: 75),
                BounceInDown(
                  duration: kAnimationDuration,
                  child: BigButton(
                    onTap: () {},
                    text: 'SIGN IN',
                    color: kWhiteColor,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BounceInLeft(
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
                      width: 50,
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
                SizedBox(
                  height: 75,
                ),
                FlatButton(
                  onPressed: () {
                    Get.toNamed("/forgotscreen");
                  },
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 1, // space between underline and text
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Colors.white, // Text colour here
                      width: 1, // Underline width
                    ))),
                    child: Text(
                      'FORGOT PASSWORD',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: kWhiteColor,
                      ),
                    ),
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
