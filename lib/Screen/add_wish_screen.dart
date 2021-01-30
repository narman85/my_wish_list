import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Controller/auth_controller.dart';
import 'package:my_wish_list/Controller/database.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class AddWishScreen extends GetWidget<AuthController> {
  final TextEditingController _todoController = TextEditingController();
  final TextEditingController _todoPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //! change design floatingbutton
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
                      //! set wish image picker and change design
                      InkWell(
                        onTap: () {
                          print('image picker');
                        },
                        child: FaIcon(
                          FontAwesomeIcons.image,
                          size: 150,
                          color: kWhiteColor,
                        ),
                      ),
                      SizedBox(width: 20),
                      //! set upload image
                      UnderlineButton(
                        text: 'UPLOAD IMAGE',
                        onTap: () {
                          print('upload image');
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 20),
                    //! set wishname textfield
                    child: MyTextField(
                      controller: _todoController,
                      label: 'WISH NAME',
                      hint: 'tesla cybertruck',
                      prefiks: FontAwesomeIcons.gift,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    //! set price textfield
                    child: MyTextField(
                      controller: _todoPrice,
                      label: "WISH PRICE",
                      prefiks: FontAwesomeIcons.coins,
                      keyboard: TextInputType.datetime,
                      hint: "70000",
                    ),
                  ),
                  //! set save button
                  BigButton(
                    color: kWhiteColor,
                    text: 'SAVE',
                    onTap: () {
                      if (_todoController.text != "") {
                        Database().addTodo(_todoController.text,
                            controller.user.uid, _todoPrice.text);
                        _todoController.clear();
                        _todoPrice.clear();
                      }
                      Get.back();
                    },
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
