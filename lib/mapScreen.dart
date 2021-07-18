// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:users/widget/drawer.dart';
import 'package:users/order_status.dart';
import 'package:users/widget/widdget.dart';
import 'package:search_map_place/search_map_place.dart';
import 'package:loading_overlay_pro/loading_overlay_pro.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int test = 1;
  bool resent = true;
  bool startSearch = false;
  bool isActive = true ;
  @override
  void initState() {
    super.initState();
  }

  GoogleMapController _googleMapController;

  // add style map
  void addStyle() async {
    String style = await DefaultAssetBundle.of(context)
        .loadString('assets/map_style.json');
    _googleMapController.setMapStyle(style);
  }

  void _onMapCreated(GoogleMapController controller) {
    _googleMapController = controller;

    setState(() {
      addStyle();
      setCustomMarker(resent);
    });
  }

  List<Marker> myMarker = [];
  BitmapDescriptor mapMarker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: DrawerList(),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          // google maps
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              compassEnabled: false,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(31.03354323320948, 31.392820678398923),
                zoom: 15,
              ),
              zoomControlsEnabled: false,
              markers: Set.from(myMarker),
              onTap: _makeAMark,
            ),
          ),
          // sudi menu end daraw
          Builder(builder: (context) {
            return Positioned(
              right: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.height * 0.05,
              child: InkWell(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: CircleProfileImge(Colors.white)),
            );
          }),
          // show points
          Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.1,
              child: PointShow()),
          // show money wallet
          Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              left: MediaQuery.of(context).size.width * 0.1,
              child: MoneyShow()),
          startSearch
              ? Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.05,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDCA310),width: 3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
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
                                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
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
                                child: Image(image: AssetImage("images/logo_line.png"), fit: BoxFit.fill,)),
                            SizedBox(width: MediaQuery.of(context).size.width*0.05,)
                          ],
                        ),
                        SizedBox(height:MediaQuery.of(context).size.height*0.03 ,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "تم تحديد الوجهة بنجاح",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffDCA310),
                                  fontFamily: "Cairo-Regular"
                              ),
                            ),
                            Image(image: AssetImage("images/checkmark.png")),

                          ],
                        )
                      ],
                    ),
                  ),
                )
              // Search bar
              : Padding(
                  padding: const EdgeInsets.only(left: 40, top: 175),
                  child: Container(
                    width: 320,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                        child: SearchMapPlaceWidget(
                      hasClearButton: true,
                      placeType: PlaceType.address,
                      placeholder: 'enter the location',
                      apiKey: "AIzaSyDeT3Sa-SUFAvNd3Ra111iUkIHA97YSRcg",
                      onSelected: (Place place) async {
                        Geolocation geolocation = await place.geolocation;
                        _googleMapController.animateCamera(
                            CameraUpdate.newLatLng(geolocation.coordinates));
                        _googleMapController.animateCamera(
                            CameraUpdate.newLatLngBounds(
                                geolocation.bounds, 0));
                      },
                    )),
                  )),

          // btn current location
          if (test == 1)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.80,
              left: MediaQuery.of(context).size.width * 0.1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    test = 2;
                    resent = false;
                    setCustomMarker(resent);
                    print("sent current location");
                  });
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffDCA310),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "حدد الموقع الحالي",
                      style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: "Cairo-Regular"),
                    ),
                  ),
                ),
              ),
            ),
          // btn order location
          if (test == 2)
            Positioned(
              top: MediaQuery.of(context).size.height * 0.80,
              left: MediaQuery.of(context).size.width * 0.1,
              child: InkWell(
                onTap: () {
                  setState(() {
                    test = 3;
                    startSearch = true;
                    print("sent order location");
                    acceptOrder();
                  });
                },
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffDCA310),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      "حدد الموقع الطلب",
                      style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: "Cairo-Regular"),
                    ),
                  ),
                ),
              ),
            ),

          if(test == 3)
            Positioned(
                bottom: 0,
                left: MediaQuery.of(context).size.width*0.05,
                right: MediaQuery.of(context).size.width*0.05,
                child:Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:Color(0xffDCA310)),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                      Text(
                        "جاري الحصول على كابتن",
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xffDCA310),
                              fontFamily: "Cairo-Regular"
                          ),
                      ),
                      LoadingBouncingLine.circle(
                        backgroundColor: Color(0xffDCA310),
                        size: 100.0,
                        duration: Duration(seconds: 4),
                        borderColor: Color(0xffDCA310),
                      ),
                    ],
                  ),
                )
            ),

          if(test ==4)
            Positioned(
              bottom: MediaQuery.of(context).size.height*0.05,
              left: MediaQuery.of(context).size.width*0.05,
              right: MediaQuery.of(context).size.width*0.05,
              child: Container(
                height: MediaQuery.of(context).size.height*0.25,
                width: MediaQuery.of(context).size.width*0.7,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffDCA310)),
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                        Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                            Container(
                              height: 85,
                              width: 85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Image(image: AssetImage("images/turky.png"),),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
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
                        SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                        Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(" تركي الحربي ", style: TextStyle(color: Color(0xffDCA310), fontSize: 16,fontFamily: "Cairo-Regular"),),
                                    SizedBox(height:10 ),
                                    Text(" سوناتا ", style: TextStyle(color: Color(0xffDCA310),fontSize: 16,fontFamily: "Cairo-Regular"),),
                                    SizedBox(height:15 ),
                                    Text("  25 SR ", style: TextStyle(color: Color(0xffDCA310),fontSize: 16,fontFamily: "Cairo-Regular")),
                                    SizedBox(height:12 ),
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          test = 3;
                                          startSearch = true;
                                          print("sent order location");
                                          acceptOrder();
                                        });
                                      },
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.03,
                                        width: MediaQuery.of(context).size.width*0.15,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text("رفض", style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: "Cairo-Regular")),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                                Column(
                                  children: [
                                    Text(" : الأسم ", style: TextStyle(fontSize: 16,fontFamily: "Cairo-Regular"),),
                                    SizedBox(height:10 ),
                                    Text(" : نوع العربية ",style: TextStyle(fontSize: 16,fontFamily: "Cairo-Regular"),),
                                    SizedBox(height:10 ),
                                    Text(" : السعر ",style: TextStyle(fontSize: 16,fontFamily: "Cairo-Regular"),),
                                    SizedBox(height:10),
                                    InkWell(
                                      onTap: (){
                                        setState(() {
                                          test = 5;
                                          _gotoOrderStatus();
                                        });
                                      },
                                      child: Container(
                                        height: MediaQuery.of(context).size.height*0.03,
                                        width: MediaQuery.of(context).size.width*0.15,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text("قبول", style: TextStyle(color: Colors.white,fontFamily: "Cairo-Regular"),),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),




                      ],
                    ),
                  ],
                ),
              ),
            ),

          if(test ==5)
            Positioned(
              top: MediaQuery.of(context).size.height*0.55,
              left: MediaQuery.of(context).size.width*0.1,
              right: MediaQuery.of(context).size.width*0.1,
              child: Container(
                height: MediaQuery.of(context).size.height*0.11,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xff707070), width: 2),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Text(
                      "!تهانينا ",
                      style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 23,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                    Text(
                      "تم تأكيد الطلب ",
                      style: TextStyle(
                        color: Color(0xffDCA310),
                        fontSize: 23,
                          fontFamily: "Cairo-Regular"
                      ),
                    ),
                  ],
                ),
              ),
            )


        ]),
      ),
    );
  }

  _makeAMark(LatLng tappedPoint) {
    if (startSearch == false) {
      setState(() {
        myMarker = [];
        myMarker.add(Marker(
          markerId: MarkerId(tappedPoint.toString()),
          position: tappedPoint,
          icon: mapMarker,
        ));
      });
    } else {
      print("no marker");
    }
  }

  void setCustomMarker(bool recent) async {
    if (recent) {
      mapMarker = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(), 'images/recent.png');
    } else {
      mapMarker = await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(), 'images/final.png');
    }
  }

  void acceptOrder() {
    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        test = 4 ;
      });
    });
  }

  void _gotoOrderStatus() {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OrderStatus(
              )));
    });
  }
}
