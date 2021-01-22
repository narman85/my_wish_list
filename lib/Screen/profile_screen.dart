import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.signOutAlt,
                ),
                onPressed: () {
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
                CircleAvatar(
                  radius: 85,
                ),
                SizedBox(height: 50),
                UnderlineButton(
                  onTap: () {},
                  text: 'UPLOAD IMAGE',
                ),
                SizedBox(height: 50),
                MyTextField(
                  prefiks: FontAwesomeIcons.idCardAlt,
                  label: 'NAME',
                  hint: 'aladdin',
                ),
                SizedBox(height: 50),
                ButtonTheme(
                  minWidth: 290,
                  height: 60,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                        letterSpacing: 2,
                        color: kBlackColor,
                      ),
                    ),
                    color: kWhiteColor,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
