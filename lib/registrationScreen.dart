// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Registration extends StatefulWidget {
  const Registration({Key key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool checkbox = false ;
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
                Color(0xffF4E3B6),
              ]
            )
          ),
          child: SingleChildScrollView(
            child: Column(
            children: [
              //Image logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                        height: 86,
                        width: 99,
                        child: Image(image: AssetImage("images/splash_logo.png"),color: Color(0xffDCA310),)),
                  ),
                ],
              ),
              // txt email
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50 ,top: 50),
                    child: Text(
                      "البريد الإلكتروني ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ],
              ),
              // field email
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                        width: 304,
                        height: 45,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffDCA310), width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: Container(
                            width: 250,
                            child:TextField(
                              textAlign: TextAlign.center,
                             keyboardType: TextInputType.emailAddress,
                              style: TextStyle(fontFamily: "Cairo-Regular"),
                            )
                        ),
                  ),
                  )
                ],
              ),
              // txt pass
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "كلمة المرور ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ],
              ),
              // field pass
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      width: 304,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDCA310), width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          width: 250,
                          child:TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontFamily: "Cairo-Regular"),
                          )
                      ),
                    ),
                  )
                ],
              ),
              // txt repass
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "تأكيد كلمة المرور",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: "Cairo-Regular",
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              //field repass
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      width: 304,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDCA310), width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          width: 250,
                          child:TextField(
                            textAlign: TextAlign.center,
                            obscureText: true,
                            style: GoogleFonts.cairo(),
                          )
                      ),
                    ),
                  )
                ],
              ),
              // txt name
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "الأسم ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ],
              ),
              // field name
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      width: 304,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDCA310), width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          width: 250,
                          child:TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            style:TextStyle(fontFamily: "Cairo-Regular"),
                          )
                      ),
                    ),
                  )
                ],
              ),
              // txt brith day
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "تاريج الميلاد ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ],
              ),
              // field brith day
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      width: 304,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDCA310), width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          width: 250,
                          child:TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.datetime,
                            style: TextStyle(fontFamily: "Cairo-Regular"),
                          )
                      ),
                    ),
                  )
                ],
              ),
              // txt city
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "المدينة ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ],
              ),
              // field city
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      width: 304,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDCA310), width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          width: 250,
                          child:TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.text,
                            style: TextStyle(fontFamily: "Cairo-Regular"),
                          )
                      ),
                    ),
                  )
                ],
              ),
              // txt mobile
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Text(
                      "رقم الجوال ",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ),
                ],
              ),
              // field mobile
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      width: 304,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDCA310), width: 1),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                          width: 250,
                          child:TextField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(fontFamily: "Cairo-Regular"),
                          )
                      ),
                    ),
                  )
                ],
              ),
            // check box
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("أوافق على الشروط والأحكام",style: GoogleFonts.cairo(),),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Checkbox(value: checkbox,
                      onChanged: (bool value){
                        setState(() {
                          print(value);
                          checkbox = value;
                        });
                      }
                  ),
                ),

              ],
            ),
              // btn registration
              InkWell(
                // onTap: (){
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => HomePage(
                //           )));
                // },
                child: Container(
                  width: 141.42,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xffDCA310),
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      "تسجيل",
                      style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold,fontFamily: "Cairo-Regular"),
                    ),
                  ),
                ),
              ),

      ],
    ),
          ),
        ));
  }
}


