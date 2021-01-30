import 'package:flutter/material.dart';
import 'package:my_wish_list/Model/wish_model.dart';
import 'package:my_wish_list/Util/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TodoCard extends StatelessWidget {
  final String uid;
  final TodoModel todo;
  final LinearPercentIndicator percent;

  const TodoCard({Key key, this.uid, this.todo, this.percent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kGreyColor,
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              todo.content,
              style: TextStyle(
                fontSize: 14,
                color: kWhiteColor,
              ),
            ),
          ),
          Image.network(
            'https://dyl80ryjxr1ke.cloudfront.net/external_assets/hero_examples/hair_beach_v1785392215/original.jpeg',
            height: 96,
            width: 1000,
          ),
          SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            animation: true,
            width: 130,
            lineHeight: 5,
            percent: 0.3,
            backgroundColor: Colors.grey,
            progressColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
