// @dart=2.9
import 'package:flutter/material.dart';
import 'package:users/widget/widdget.dart';

class Policy extends StatelessWidget {
  const Policy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Colors.white,
                Color(0xfff2e4bd),
              ]
          )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  children: [
                    PointShow(),
                    SizedBox(height: 10),
                    MoneyShow()
                  ],
                ),
                CircleProfileImge(Colors.black),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "سياسة الأستخدام",
              style: TextStyle(
                color: Color(0xffDCA310),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                  fontFamily: " Cairo-Regular"
              ),
            ),
          )
        ],
      ),
    ));
  }
}
