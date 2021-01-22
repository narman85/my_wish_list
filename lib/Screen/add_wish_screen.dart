import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class AddWishScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kWhiteColor,
      child: FaIcon(
        FontAwesomeIcons.plus,
        color: Colors.black54,
      ),
      onPressed: () {
        Get.bottomSheet(
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  color: kBlackColor),
              height: 1000,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print('s');
                        },
                        child: FaIcon(
                          FontAwesomeIcons.image,
                          size: 150,
                          color: kWhiteColor,
                        ),
                      ),
                      SizedBox(width: 20),
                      UnderlineButton(
                        text: 'UPLOAD IMAGE',
                        onTap: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 20),
                    child: MyTextField(
                      label: 'WISH NAME',
                      hint: 'tesla cybertruck',
                      prefiks: FontAwesomeIcons.gift,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: MyTextField(
                      label: "WISH PRICE",
                      prefiks: FontAwesomeIcons.coins,
                      keyboard: TextInputType.datetime,
                      hint: "70000",
                    ),
                  ),
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
        );
      },
    );
  }
}
