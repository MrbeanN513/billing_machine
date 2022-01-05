// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:fluttericon/octicons_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    this.title,
    this.Dates,
    this.Rider_id,
    this.imageurl,
    this.Rider_name,
    this.Money,
    this.Distance,
    this.Durations,
    this.source_location,
    this.Dest_location,
  }) : super(key: key);

  final String? title;
  final String? Dates;
  final String? Rider_id;
  final String? imageurl;
  final String? Rider_name;
  final String? Money;
  final String? Distance;
  final String? Durations;
  final String? source_location;
  final String? Dest_location;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double value = 5;
  Function(double value)? onValueChanged;
  // //Configggg
  // String Dates = "Nov 24th 2021,02:00 PM";
  // String Rider_id = "RD16377426533247228";
  // String imageurl = 'assets/amar.jpeg';
  // String Rider_name = "Goutam Halder";
  // double Money = 61.0;
  // double Distance = 5.41;
  // double Durations = 18.0;
  // String source_location =
  //     "41B, Debendra Chandra Dey Rd, Tangra, Kolkata,West Bengal";
  // String Dest_location =
  //     "34, Bondel Rd, Ballygunge Park, Ballygunge, Kolkata 70000";
  // // configgg
  @override
  Widget build(BuildContext context) {
    // return PixelPerfect(
    // assetPath: 'assets/1.png'
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar(context),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.w),
                width: 1.sw,
                height: 1.sh,
                color: const Color(0xfffefeff),
                child: Column(
                  children: [
                    //fst&scnd&thrd
                    fstWidget(),
                    scnd_widget(widget.Dates),
                    thrd_widget(widget.Rider_id),
                    //image &&& star
                    image_star_config(
                      widget.Rider_name,
                      widget.imageurl,
                      value,
                      onValueChanged = (v) {
                        setState(() {
                          value = v;
                        });
                      },
                    ),
                    //  cash config start
                    Cash_config(widget.Money),
                    paidby(),
                    // cash config stop
                    //distance & Duration start
                    Distance_Duration_config(widget.Distance, widget.Durations),
                    //  Distance & Duration Stop
                    SizedBox(
                      height: 200.h,
                      child: Row(
                        children: [
                          //static icon start
                          static_icon(),
                          //static location end
                          //source & destination start
                          Source_destination_config(
                              widget.source_location, widget.Dest_location),
                          //source & destination end
                        ],
                      ),
                    ),
                    //tab bar start
                    Tab_bar_config_static(),
                    //Tab bar ended
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//fst&&scd&&thrd config start
Widget fstWidget() {
  return SizedBox(
      height: 120.h,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(45.h, 50.h, 0, 0),
                child: Text(
                  'Service Type',
                  style: TextStyle(
                    fontSize: 40.h,
                    fontFamily: 'Open_Sans',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 40.h, 40.h, 0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Bike',
                      style: TextStyle(
                        fontSize: 40.h,
                        fontFamily: 'Open_Sans',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ));
}

Widget scnd_widget(Dates) {
  return SizedBox(
      height: 120.h,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(40.h, 40.h, 0, 0),
                child: Text(
                  'Date of Ride',
                  style: TextStyle(
                    fontSize: 40.h,
                    fontFamily: 'Open_Sans',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 23.h, 40.h, 0),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Dates,
                      style: TextStyle(
                        fontSize: 38.h,
                        fontFamily: 'Open_Sans',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ));
}

Widget thrd_widget(Rider_id) {
  return SizedBox(
      height: 120.h,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 120.h,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40.h, 30.h, 0, 0),
                  child: Text(
                    'Ride ID',
                    style: TextStyle(
                      fontSize: 40.h,
                      fontFamily: 'Open_Sans',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: 120.h,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 40.h, 10.h),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Rider_id,
                      style: TextStyle(
                        fontSize: 36.h,
                        fontFamily: 'Open_Sans',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ));
}
//fst&&scd&&thrd config stop

//image star config
Widget image_star_config(Rider_name, imageurl, value, onValueChanged) {
  return SizedBox(
    height: 350.h,
    child: Column(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 45.h, right: 45.h),
              child: Container(
                height: 5.h,
                width: double.maxFinite,
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.transparent,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 25.h, bottom: 10.h, left: 25.h, right: 35.h),
                    child: Container(
                      height: 210.h,
                      child: CircleAvatar(
                        foregroundImage:
                            AssetImage("assets/" + imageurl + ".jpeg"),
                        radius: 50,
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.transparent,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(22.h),
                                child: Text(
                                  Rider_name,
                                  style: TextStyle(
                                    fontSize: 41.h,
                                    fontFamily: 'Open_Sans',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 22.h, bottom: 22.h, left: 22.h),
                                    child: Text(
                                      "You rated",
                                      style: TextStyle(
                                        fontSize: 35.h,
                                        fontFamily: 'Open_Sans',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                //hath dewa mana
                                Padding(
                                  padding: EdgeInsets.only(bottom: 20.h),
                                  child: RatingStars(
                                    valueLabelVisibility: false,
                                    value: value,
                                    onValueChanged: onValueChanged,
                                    starBuilder: (index, color) => Icon(
                                      Octicons.star,
                                      color: color,
                                    ),
                                    maxValue: 5,
                                    starSpacing: 2,
                                    starCount: 5,
                                    starSize: 62.h,
                                    starOffColor: const Color(0xffe7e8ea),
                                    starColor: const Color(0xfffac816),
                                  ),
                                ),
                              ],
                            ),
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                    // color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 45.h, right: 45.h),
              child: Container(
                height: 7.h,
                width: double.maxFinite,
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

//cash config
Widget Cash_config(Money) {
  return SizedBox(
    height: 100.h,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(45.h, 25.h, 0, 0),
              child: Text(
                'Fare',
                style: TextStyle(
                  fontSize: 35.h,
                  fontFamily: 'Open_Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 40.h, 0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '\u20B9 ' + Money,
                  style: TextStyle(
                    fontSize: 35.h,
                    fontFamily: 'Open_Sans',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget paidby() {
  return SizedBox(
    height: 100.h,
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(45.h, 15.h, 0, 0),
              child: Text(
                'Paid By',
                style: TextStyle(
                  fontSize: 35.h,
                  fontFamily: 'Open_Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 40.h, 20.h),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Cash',
                    style: TextStyle(
                      fontSize: 35.h,
                      fontFamily: 'Open_Sans',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
            ),
          ),
        ),
      ],
    ),
  );
}

//distance_duration_config
Widget Distance_Duration_config(Distance, Durations) {
  return SizedBox(
    height: 300.h,
    width: double.maxFinite,
    child: Padding(
      padding: EdgeInsets.all(40.h),
      child: Card(
        elevation: 10.h,
        child: Row(
          children: [
            Expanded(
              flex: 50,
              child: Padding(
                padding: EdgeInsets.only(left: 125.h),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    title: Text(Distance + ' km'),
                    subtitle: Text(
                      'DISTANCE',
                      style: TextStyle(
                        fontSize: 30.h,
                        fontFamily: 'Open_Sans',
                        color: Colors.grey.shade400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(top: 40.h, bottom: 40.h),
                  child: VerticalDivider(
                    color: Colors.grey.shade200,
                    thickness: 5.h,
                  ),
                )),
            Expanded(
              flex: 49,
              child: Padding(
                padding: EdgeInsets.only(left: 100.h),
                child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    title: Text(Durations + ' mins'),
                    subtitle: Text(
                      ' DURATION',
                      style: TextStyle(
                        fontSize: 33.h,
                        fontFamily: 'Open_Sans',
                        color: Colors.grey.shade400,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

//source & destination Config
Widget Source_destination_config(source_location, Dest_location) {
  return Expanded(
    flex: 8,
    child: Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 0, 27.h, 0),
              child: Text(
                source_location,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 36.h,
                  fontFamily: 'Open_Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          height: 100.h,
          // color: Colors.orange,
        ),
        SizedBox(
          width: double.maxFinite,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(10.h, 10.h, 27.h, 0),
              child: Text(
                Dest_location,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 36.h,
                  fontFamily: 'Open_Sans',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          height: 100.h,
        ),
      ],
    ),
  );
}

//Tab Bar Config
Widget Tab_bar_config_static() {
  return Padding(
    padding: EdgeInsets.only(
      top: 30.h,
    ),
    child: SizedBox(
      // color: Colors.blue,
      width: double.maxFinite,
      height: 460.h,
      child: ContainedTabBarView(
        tabBarProperties: TabBarProperties(
            height: 150.h,
            padding: EdgeInsets.only(left: 70.h),
            alignment: TabBarAlignment.start,
            position: TabBarPosition.top,
            width: 950.w,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black),
        tabs: [
          Padding(
            padding: EdgeInsets.fromLTRB(40.h, 0, 0, 10.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Support',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.h,
                    fontFamily: 'Open_Sans',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40.h, 0, 0, 10.h),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Invoice',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45.h,
                    fontFamily: 'Open_Sans',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
          const Align(alignment: Alignment.centerLeft, child: Text('')),
          const Align(alignment: Alignment.centerLeft, child: Text('')),
        ],
        views: [
          Column(
            children: [
              SizedBox(
                height: 150.h,
                // color: Colors.greenAccent,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      'I have been charged higher than the estimated fare',
                      style: TextStyle(
                        color: const Color(0xff3d3d3d),
                        fontSize: 40.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.h,
                // color: Colors.greenAccent,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.h),
                    child: Text(
                      'Ride Safety',
                      style: TextStyle(
                        color: const Color(0xff3d3d3d),
                        fontSize: 40.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(color: Colors.green),
          Container(color: Colors.yellow),
          Container(color: Colors.black),
        ],
        onChange: (index) => print(index),
      ),
    ),
  );
}

//static icon green red
Widget static_icon() {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: EdgeInsets.only(right: 25.h, top: 10.h),
      child: SizedBox(
        height: 200.h,
        // color: Colors.red,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Stack(
                  children: [
                    Icon(
                      CommunityMaterialIcons.brightness_1,
                      size: 50.h,
                      color: const Color(0xffbff0b2),
                    ),
                    Positioned(
                      left: 5.h,
                      top: 5.h,
                      right: 5.h,
                      bottom: 5.h,
                      child: Icon(
                        CommunityMaterialIcons.brightness_1,
                        size: 40.h,
                        color: const Color(0xffbff0b2),
                      ),
                    ),
                    Positioned(
                      left: 7.h,
                      top: 6.h,
                      right: 3.h,
                      bottom: 5.h,
                      child: Icon(
                        CommunityMaterialIcons.brightness_1,
                        size: 25.h,
                        color: const Color(0xff368037),
                      ),
                    ),
                    Positioned(
                      left: 7.h,
                      top: 6.h,
                      right: 3.h,
                      bottom: 5.h,
                      child: Icon(
                        CommunityMaterialIcons.brightness_1,
                        size: 15.h,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: VerticalDivider(
                    color: Colors.grey.shade400,
                    thickness: 3.h,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topRight,
                child: Stack(
                  children: [
                    Icon(
                      CommunityMaterialIcons.map_marker,
                      size: 50.h,
                      color: const Color(0xffff8f85),
                    ),
                    Positioned(
                      left: 2.h,
                      top: 4.h,
                      right: 0.h,
                      bottom: 3.h,
                      child: Icon(
                        CommunityMaterialIcons.map_marker,
                        size: 35.h,
                        color: const Color(0xffee4929),
                      ),
                    ),
                    Positioned(
                      left: 6.h,
                      top: 1.h,
                      right: 3.h,
                      bottom: 1.h,
                      child: Icon(
                        CommunityMaterialIcons.map_marker,
                        size: 27.h,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      left: 7.h,
                      top: 2.h,
                      right: 3.h,
                      bottom: 10.h,
                      child: Icon(
                        CommunityMaterialIcons.brightness_1,
                        size: 12.h,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      left: 7.h,
                      top: 3.h,
                      right: 3.h,
                      bottom: 9.h,
                      child: Icon(
                        CommunityMaterialIcons.brightness_1,
                        size: 6.h,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

AppBar customAppbar(context) {
  return AppBar(
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          CommunityMaterialIcons.ticket_confirmation,
          color: Colors.black,
        ),
      ),
    ],
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 25,
          color: Color(0xff3d3d3d),
        )),
    backgroundColor: const Color(0xfff8d915),
    title: const Text(
      'Order Details',
      style: TextStyle(
          fontSize: 19,
          fontFamily: 'Open_Sans',
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w900,
          color: Color(0xff2f2904)),
    ),
  );
}
