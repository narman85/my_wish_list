import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallButton(
                      onTap: () {},
                      color: kWhiteColor,
                      text: "SIGN UP",
                    ),
                    SizedBox(width: 20),
                    SmallButton(
                        onTap: () {
                          Get.toNamed("/signinscreen");
                        },
                        color: kGreyColor,
                        text: "SIGN IN",
                        kolor: kWhiteColor),
                  ],
                ),
                SizedBox(height: 100),
                MyTextField(
                    prefiks: Icons.mail,
                    keyboard: TextInputType.emailAddress,
                    label: 'EMAIL',
                    hint: 'email@mail.com'),
                SizedBox(height: 50),
                MyTextField(
                    prefiks: FontAwesomeIcons.idCardAlt,
                    label: 'NAME',
                    hint: 'aladdin'),
                SizedBox(height: 50),
                MyTextField(
                    prefiks: FontAwesomeIcons.key,
                    label: 'PASSWORD',
                    hint: 'secret',
                    secret: true),
                SizedBox(
                  height: 50,
                ),
                BigButton(
                  onTap: () {},
                  text: 'SIGN UP',
                  color: kWhiteColor,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallIconButton(
                      onTap: () {
                        print("Facebook");
                      },
                      icon: FontAwesomeIcons.facebookF,
                      color: kWhiteColor,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    SmallIconButton(
                      onTap: () {
                        print("Google");
                      },
                      icon: FontAwesomeIcons.google,
                      color: kGreyColor,
                      kolor: kWhiteColor,
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
//!animasiya cox olsa ne olar