// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:users/mapScreen.dart';
import 'package:users/order.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:  BoxDecoration(
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
              SizedBox(height: MediaQuery.of(context).size.height*0.10,),
              // sun Image
              Container(
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.20,
                  child: Image(image: AssetImage("images/sun_logo.png",) ,fit: BoxFit.contain, )),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              // welcome image
              Container(
                height: MediaQuery.of(context).size.height*0.51,
                width: MediaQuery.of(context).size.width*75,
                child: Image(image: AssetImage("images/path.png")),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              // btn continue
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Order()));
                },
                child: Container(
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.45,
                  decoration: BoxDecoration(
                      color: Color(0xffDCA310),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      "متابعة",
                      style:TextStyle(color: Colors.white, fontSize: 25,fontFamily: "Cairo-Regular") ,
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
