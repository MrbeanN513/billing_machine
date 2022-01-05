// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, avoid_print

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:pixel_perfect/pixel_perfect.dart';
// import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
// import 'package:community_material_icon/community_material_icon.dart';
// import 'package:flutter_rating_stars/flutter_rating_stars.dart';
// import 'package:fluttericon/octicons_icons.dart';
// import './bill_page.dart';
import './form.dart';

// This will works always for lock screen Orientation.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (fill in the screen size of the device in the design) If the design is based on the size of the iPhone6 ​​(iPhone6 ​​750*1334)
    return ScreenUtilInit(
      designSize: Size(1080, 1920),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Billing Machine',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(button: TextStyle(fontSize: 45.sp)),
        ),
        builder: (context, widget) {
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },
        // home: const SafeArea(child: HomePage(title: 'Billing Machine')),
        home: const SafeArea(child: MyFontPage(title: 'Billing Machine'),),
      ),
    );
  }
}
