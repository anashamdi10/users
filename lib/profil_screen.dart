// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:users/widget/widdget.dart';

import 'mapScreen.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextStyle style = TextStyle(fontSize: 15,fontFamily: "Cairo-Regular" );
  bool read = true;
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "البريد الإلكتروني",
                            style:style,
                            textDirection: TextDirection.rtl,
                            ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(keyboardType: TextInputType.emailAddress,readOnly: read,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "كلمة المرور",
                            style:style,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(obscureText: true,readOnly: read,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "تأكيد كلمة المرور",
                            style:style,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(obscureText: true,readOnly: read,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "الأسم",
                            style:style,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(keyboardType: TextInputType.name,readOnly: read,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "تاريخ الميلاد",
                            style:style,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(keyboardType: TextInputType.datetime,readOnly: read,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "المدينة",
                            style:style,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(keyboardType: TextInputType.name,readOnly: read,)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "رقم الجوال",
                            style:style,
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        ],
                      ) ,
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: MediaQuery.of(context).size.height*0.05,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: TextField(keyboardType: TextInputType.phone,readOnly: read,)),
                      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => HomePage()));
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.33,
                              height: MediaQuery.of(context).size.height*0.065 ,
                              decoration: BoxDecoration(
                                border: Border.all(color:Color(0xff707070), ),
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xffDCA310),
                              ),
                              child: Center(
                                child: Text(
                                  "رجوع",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: " Cairo-Regular"
                                  ),
                                ),
                              ),

                            ),
                          ),
                          InkWell(
                            onTap: (){
                             setState(() {
                               read = false;
                             });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.33,
                              height: MediaQuery.of(context).size.height*0.065 ,
                              decoration: BoxDecoration(
                                  border: Border.all(color:Color(0xff707070), ),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color(0xffDCA310)
                              ),
                              child: Center(
                                child: Text(
                                  "تعديل",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontFamily: " Cairo-Regular"
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
