// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:users/widget/widdget.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({Key key}) : super(key: key);

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  bool active1 = true;
  bool active2 = true;
  bool active3 = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Activepase1();
  }

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
            ])),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Column(
                children: [PointShow(), SizedBox(height: 10), MoneyShow()],
              ),
              CircleProfileImge(Colors.black)
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.23,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffDCA310), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            "فندق الحمراء",
                            style: TextStyle(
                              color: Color(0xff023456),
                              fontSize: 19,
                                fontFamily: "Cairo-Regular"
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Text(
                            "ماكدولنز ",
                            style: TextStyle(
                              color: Color(0xff023456),
                              fontSize: 19,
                                fontFamily: "Cairo-Regular"
                            ),
                          ),
                        ],
                      ),
                      Container(
                          width: 45,
                          height: 98,
                          child: Image(
                            image: AssetImage("images/logo_line.png"),
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "تم تحديد الوجهة بنجاح",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xffDCA310), fontFamily: "Cairo-Regular"),
                      ),
                      Image(image: AssetImage("images/checkmark.png")),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                active1
                    ? Text(
                        "الكابتن في الطريق لطلبك",
                        style: TextStyle( fontFamily: "Cairo-Regular"),
                      )
                    : Text(
                        "تم الوصول لمكان لطلبك",
                        style: TextStyle( fontFamily: "Cairo-Regular"),
                      ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.amber),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.06,
                    child: Image(image: AssetImage("images/line.png"))),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.095,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                active2
                    ? Text(
                        "جاري الحصول على طلبك",
                        style: TextStyle( fontFamily: "Cairo-Regular"),
                      )
                    : Text(
                        "تم الحصول على طلبك",
                        style: TextStyle( fontFamily: "Cairo-Regular"),
                      ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: active2 ? Colors.white : Colors.amber,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.06,
                    child: Image(image: AssetImage("images/line.png"))),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.095,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                active3
                    ? Text(
                        "الكابتن في الطريق إليك",
                        style: TextStyle(fontFamily: "Cairo-Regular"),
                      )
                    : Text(
                        "تم الوصول إليك",
                        style: TextStyle(fontFamily: "Cairo-Regular"),
                      ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: active3 ? Colors.white : Colors.amber),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDCA310), width: 3),
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "تركي الحربي",
                    style: TextStyle(color: Color(0xffDCA310), fontSize: 20,fontFamily: "Cairo-Regular"),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image(
                              image: AssetImage("images/turky.png"),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            itemSize: 10,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              child:
                                  Image(image: AssetImage("images/call.png"))),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Image(image: AssetImage("images/whats.png")),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                " سوناتا",
                                style: TextStyle(
                                    color: Color(0xffDCA310), fontSize: 13,fontFamily: "Cairo-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(" صغير ",
                                  style: TextStyle(
                                      color: Color(0xffDCA310), fontSize: 13,fontFamily: "Cairo-Regular" )),
                              SizedBox(height: 5),
                              Text("  الأحمر ",
                                  style: TextStyle(
                                      color: Color(0xffDCA310), fontSize: 13,fontFamily: "Cairo-Regular")),
                              SizedBox(height: 5),
                              Text("  2323 د ق ن ",
                                  style: TextStyle(
                                      color: Color(0xffDCA310), fontSize: 13,
                                      fontFamily: "Cairo-Regular")
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                " : الأسم السيارة ",
                                style: TextStyle(fontSize: 13,fontFamily: "Cairo-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(
                                " : الفئة ",
                                style: TextStyle(fontSize: 13,fontFamily: "Cairo-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(
                                " : اللون ",
                                style: TextStyle(fontSize: 13,fontFamily: "Cairo-Regular"),
                              ),
                              SizedBox(height: 5),
                              Text(
                                " : رقم اللوحة ",
                                style: TextStyle(fontSize: 13,fontFamily: "Cairo-Regular"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void Activepase1() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        active1 = false ;

        Activepase2();
      });
    });
  }

  void Activepase2() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {

        active2 = false;
        Activepase3();
      });
    });
  }

  void Activepase3() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        active3 = false;
        ShowCompleteMsg();
      });
    });
  }

  void ShowCompleteMsg() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return Dialog(

                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffDCA310), width: 3),
                  ),
                  child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                        Text(
                          "تكلفة الوصول ",
                          style: TextStyle(
                            color: Color(0xffDCA310),
                            fontSize: 30,
                              fontFamily: "Cairo-Regular"
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                        Image(image: AssetImage("images/clothing.png")),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                        Text(
                          "25 SR",
                          style: TextStyle(
                              color: Color(0xffDCA310),
                              fontSize: 30,
                              fontFamily: "Cairo-Regular"
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                            setStar();
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.07,
                            width: MediaQuery.of(context).size.width*0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xffDCA310),
                            ),
                            child: Center(
                              child: Text(
                                "تم",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Cairo-Regular"
                                ),

                              ),
                            ),
                          ),
                        )
                      ],
                  ),
                ),
              );
            });
      });
    });
  }

  void setStar(){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(

            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffDCA310), width: 3),
              ),
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  Text(
                    "قبم تركي الحربي ",
                    style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 30,
                        fontFamily: "Cairo-Regular"

                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  Image(image: AssetImage("images/turky.png")),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  RatingBar.builder(
                    onRatingUpdate: (rating){},
                    initialRating: 5,
                    minRating: 1,
                    itemSize: 30,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      width: MediaQuery.of(context).size.width*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xffDCA310),
                      ),
                      child: Center(
                        child: Text(
                          "تم",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Cairo-Regular"
                          ),

                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
