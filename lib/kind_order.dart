// @dart=2.9
import 'package:flutter/material.dart';
import 'package:users/mapScreen.dart';
import 'package:users/widget/widdget.dart';

import 'order.dart';


class KindOrder extends StatelessWidget {
  const KindOrder({Key key}) : super(key: key);

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
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Builder(builder: (context) {
                  return InkWell(
                      onTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      child: CircleProfileImge(Colors.black));
                }),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.15,),
           Text(
             "فضلا أختر طريقة الدفع",
             style: TextStyle(
               fontSize: 15,
               color: Color(0xff023456),
                 fontFamily: "Cairo-Regular"
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.05,),
           Container(
             height: MediaQuery.of(context).size.height*0.089,
             width: MediaQuery.of(context).size.width*0.55,
             decoration: BoxDecoration(
               color: Colors.white,
               border: Border.all(color: Color(0xffDCA310)),
               borderRadius: BorderRadius.circular(50),
             ),
             child: InkWell(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(
                     "الدفع برصيد المحفظة",
                     style: TextStyle(
                         fontSize: 15,
                         fontFamily: "Cairo-Regular"
                     ),
                   ),
                   SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                   Image(image: AssetImage("images/wallet.png")),
                 ],
               ),
             ),
           ),
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            Container(
              height: MediaQuery.of(context).size.height*0.089,
              width: MediaQuery.of(context).size.width*0.55,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffDCA310)),
                borderRadius: BorderRadius.circular(50),
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                    Text(
                      "الدفع نقدي",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.04,),
                    Image(image: AssetImage("images/hand.png"),fit: BoxFit.contain,),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Order()));
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
                            fontFamily: "Cairo-Regular"
                        ),
                      ),
                    ),

                  ),
                ),
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
                        color: Color(0xffDCA310)
                    ),
                    child: Center(
                      child: Text(
                        "التالي",
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
            )


          ],
        ),
      ),
    );
  }
}
