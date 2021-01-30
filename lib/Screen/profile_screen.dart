import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Controller/auth_controller.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class ProfileScreen extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            //! set exit button
            child: IconButton(
                icon: FaIcon(FontAwesomeIcons.signOutAlt),
                onPressed: () {
                  // controller.googlesignOut();
                  // controller.signout();
                  print('exit');
                }),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 85),
                //! pick image
                CircleAvatarWidget(
                  radius: 85,
                  tap: () {
                    print('profile image picker');
                  },
                ),
                SizedBox(height: 50),
                //! upload image
                UnderlineButton(
                  onTap: () {
                    print('upload image');
                  },
                  text: 'UPLOAD IMAGE',
                ),
                SizedBox(height: 50),
                //! set textfield
                MyTextField(
                  prefiks: FontAwesomeIcons.idCardAlt,
                  label: 'NAME',
                  hint: 'aladdin',
                ),
                SizedBox(height: 50),
                //! save prosess
                BigButton(
                  onTap: () {
                    print('save');
                  },
                  text: 'SAVE',
                  color: kWhiteColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
