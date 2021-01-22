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
                    child: Text(
                      "HEY MOSU\nwhat would you wish ?",
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 20,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('profilescreen');
                      },
                      child: CircleAvatar(maxRadius: 50),
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
                    child: Text(
                      "TOTAL - 25.000 \$",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 15,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TabBar(
                      indicatorColor: kWhiteColor,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: kWhiteColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.borderAll,
                            color: kWhiteColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: FaIcon(
                            FontAwesomeIcons.heart,
                            color: kWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: Get.height,
                      child: TabBarView(children: [
                        Padding(
                          padding: const EdgeInsets.all(200),
                          child: Card(
                            color: kWhiteColor,
                            child: Text(
                              's',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Center(child: Text('s')),
                        Text('s'),
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
