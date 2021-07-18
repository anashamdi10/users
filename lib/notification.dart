// @dart=2.9
import 'package:flutter/material.dart';
import 'package:users/widget/widdget.dart';


class Notification1 extends StatelessWidget {
  const Notification1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Colors.white,
                  Color(0xffF4E3B6),
                ]
            )
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Column(
                      children: [
                        PointShow(),
                        SizedBox(height: 10),
                        MoneyShow()
                      ],
                    ),
                     CircleProfileImge(Colors.black)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 44,
            ),
            ItemNotification(),
            ItemNotification(),
            ItemNotification(),
            ItemNotification(),
          ],
        ),
      ),
    );
  }
}
