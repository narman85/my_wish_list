import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class ForgotScreen extends StatelessWidget {
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
                    onTap: () {},
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
