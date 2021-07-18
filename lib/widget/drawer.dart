// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:users/policy.dart';
import 'package:users/widget/widdget.dart';

import '../login.dart';
import '../notification.dart';
import '../profil_screen.dart';
import '../who_are_we.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 800,
            width: 304,
            child: ListView(
              children: [
                Column(
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
                        InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Profile()));
                            },
                            child: CircleProfileImge(Colors.black)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        height: 50,
                        width: 500,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            border: Border.all(color: Color(0xffDCA310))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: InkWell(
                            // onTap: () {
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context) => Profile()));
                            // },
                            child: CustomListTile(
                                "نظام بيشي ", "images/logo2.png"))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notification1()));
                      },
                      child: CustomListTile(
                        "الأشعارات ",
                        "images/ring.png",
                      ),
                    ),
                    InkWell(
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => AskBeshi()));
                        // },
                        child: CustomListTile(
                      "تتبع حالة الشحنة ",
                      "images/truck.png",
                    )),
                    InkWell(
                        // onTap: () {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) => Transfer()));
                        // },

                        child:
                            CustomListTile("إسأل بيشي ", "images/speech.png")),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Policy()));
                      },
                      child:
                          CustomListTile("الشروط والأحكام ", "images/bill.png"),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WhoAreWe()));
                      },
                      child: CustomListTile("من نحن", "images/ring.png"),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: CustomListTile("تسجيل الخروج", "images/signs.png"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "سجل كابتن",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffDCA310),
                              fontFamily: "Cairo-Regular"),
                        ),
                        Image(image: AssetImage("images/unnamed.png"),)
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String images;
  String data;

  CustomListTile(this.data, this.images);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            data,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: "Cairo-Regular"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage(images),

            ),
          ),
        ],
      ),
    );
  }
}
