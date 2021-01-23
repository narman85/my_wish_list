import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Screen/add_wish_screen.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    //! set the text
                    child: MyText(
                      size: 20,
                      text: 'HEY MOSU\nwhat would you wish ?',
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    //! set avatar
                    child: CircleAvatarWidget(
                      radius: 50,
                      tap: () {
                        Get.toNamed('profilescreen');
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 100),
                      //! set textfield 2
                      child: MyTextField2(
                        label: "MONEY",
                        keyboard: TextInputType.datetime,
                        hint: "your money",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(right: 15),
                      //! set text
                      child: MyText(
                        text: 'TOTAL - 25.000 \$',
                        size: 15,
                      )),
                ],
              ),
              SizedBox(height: 20),
              //! take control on tabbar
              DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TabBar(
                      indicatorColor: kWhiteColor,
                      tabs: [
                        TabIcon(icon: FontAwesomeIcons.mapMarkerAlt),
                        TabIcon(icon: FontAwesomeIcons.borderAll),
                        TabIcon(icon: FontAwesomeIcons.heart),
                      ],
                    ),
                    Container(
                      height: Get.height,
                      child: TabBarView(children: [
                        Container(color: Colors.red),
                        Container(color: Colors.green),
                        Container(color: Colors.blue),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: AddWishScreen(),
      ),
    );
  }
}
