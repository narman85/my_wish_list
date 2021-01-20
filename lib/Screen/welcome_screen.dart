import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/widgets.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                      child: FaIcon(
                        FontAwesomeIcons.gift,
                        size: 150,
                        color: kWhiteColor,
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
                        FadeInLeft(
                          child: SmallButton(
                            color: kWhiteColor,
                            text: "SIGN UP",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FadeInDown(
                          child: SmallButton(
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
                        FadeInUp(
                          child: SmallIconButton(
                            icon: FontAwesomeIcons.facebookF,
                            color: kWhiteColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FadeInRight(
                          child: SmallIconButton(
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
