import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class SignUpScreen extends StatelessWidget {
  @override
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
                      onTap: () {
                        Get.toNamed("/signupscreen");
                      },
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
                      kolor: kWhiteColor,
                    ),
                  ],
                ),
                SizedBox(height: 100),
                MyTextField(
                  prefiks: Icons.mail,
                  keyboard: TextInputType.emailAddress,
                  label: 'Email',
                  hint: 'name@mail.com',
                ),
                SizedBox(height: 50),
                MyTextField(
                  prefiks: FontAwesomeIcons.idCardAlt,
                  label: 'Name',
                  hint: 'Aladdin',
                ),
                SizedBox(height: 50),
                MyTextField(
                  prefiks: FontAwesomeIcons.key,
                  label: 'Password',
                  hint: 'secret',
                  secret: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
