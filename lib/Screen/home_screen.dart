import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_wish_list/Controller/auth_controller.dart';
import 'package:my_wish_list/Controller/wish_controller.dart';
import 'package:my_wish_list/Model/wish_card.dart';
import 'package:my_wish_list/Screen/add_wish_screen.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:my_wish_list/Util/widgets.dart';

class HomeScreen extends GetWidget<AuthController> {
  final AuthController authController = Get.find<AuthController>();
  final TextEditingController myMoney = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
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
                      child: Obx(
                        () => MyText(
                          size: 20,
                          text:
                              '${authController.user.displayName}\nwhat would you wish ?',
                        ),
                      )),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    //! set avatar
                    child: CircleAvatarWidget(
                      image: NetworkImage(
                        'https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/original.jpeg',
                      ),
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
                        controller: myMoney,
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
                      text: 'TOTAL - 5000 \$',
                      size: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //! take control on tabbar
              DefaultTabController(
                length: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SingleChildScrollView(
                      child: TabBar(
                        indicatorColor: kWhiteColor,
                        tabs: [
                          TabIcon(icon: FontAwesomeIcons.mapMarkerAlt),
                          TabIcon(icon: FontAwesomeIcons.borderAll),
                          TabIcon(icon: FontAwesomeIcons.heart),
                        ],
                      ),
                    ),
                    Container(
                      height: Get.height,
                      child: TabBarView(children: [
                        GetX<TodoController>(
                          init: Get.put<TodoController>(TodoController()),
                          builder: (TodoController todoController) {
                            if (todoController != null &&
                                todoController.todos != null) {
                              return GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                ),
                                itemCount: todoController.todos.length,
                                itemBuilder: (_, index) {
                                  return TodoCard(
                                      uid: controller.user.uid,
                                      todo: todoController.todos[index]);
                                },
                              );
                            } else {
                              return Text("loading...");
                            }
                          },
                        ),
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
