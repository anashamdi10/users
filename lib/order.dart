// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:users/widget/drawer.dart';
import 'package:users/widget/widdget.dart';

import 'Transfers/tranfer.dart';
import 'Transfers/transfer2.dart';
import 'bslance_transfer/balanceTransfer.dart';
import 'kind_order.dart';

class Order extends StatelessWidget {
  const Order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: DrawerList(),
      ),
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
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Column(
                      children: [
                        PointShow(),
                        SizedBox(height: 10),
                        InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Transfer()));
                            },
                            child: MoneyShow())
                      ],
                    ),
                     Builder(builder: (context) {
                       return InkWell(
                           onTap: () {
                             Scaffold.of(context).openEndDrawer();
                           },
                           child: CircleProfileImge(Colors.black));
                     }),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 260,
                    width: 325,
                    decoration: BoxDecoration(
                      color: Color(0xff232323).withOpacity(0.84),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "SAR 2,515",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                  fontFamily: "Cairo-Regular"
                              ),
                            ),
                            Text(
                              "الرصيد الحالي",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontFamily: "Cairo-Regular"
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 17,),
                        Container(width: 325,height: 1,color: Colors.white, ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Container(
                            height: 70,
                            width: 300,

                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => BalanceTransfer()));
                              },
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 50,
                                    child: Container(
                                      width: 250,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 30, top: 5),
                                        child: Text(
                                          "إضافة رصيد للمحفظة",
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontSize: 18 ,
                                              color: Color(0xff080101),
                                              fontFamily: "Cairo-Regular"
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: Image(
                                          image: AssetImage("images/down_arrow.png"),
                                        ),
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.only(right: 25 , ),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Transfer2()));
                            },
                            child: Container(
                              height: 70,
                              width: 300,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 50,
                                    child: Container(
                                      width: 250,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 30, top: 5),
                                        child: Text(
                                          "تحويل رصيد للمحفظة",
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontSize: 18 ,
                                              color: Color(0xff080101),
                                              fontFamily: "Cairo-Regular"
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Center(
                                        child: Image(
                                          image: AssetImage("images/right_arrow.png"),
                                        ),
                                      ),
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KindOrder()));
                  },
                  child: Container(
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xff232323).withOpacity(0.84),
                    ),
                    child: Center(
                      child: Text(
                        "أطلب أي شيء",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Cairo-Regular"
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.width*0.1,),
              ],
          ),
        ),
      ),
    );
  }
}
