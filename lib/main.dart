
// ignore_for_file: unused_import, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'rapido/form.dart';

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
        home: SafeArea(child: Myhomepage(title: 'Billing Machine')),
        routes: <String, WidgetBuilder>{
          '/Rapido': (BuildContext context) =>
              MyFontPage(title: 'Billing Machine'),
          // '/screen2' : (BuildContext context) => new Screen2(),
          // '/screen3' : (BuildContext context) => new Screen3(),
          // '/screen4' : (BuildContext context) => new Screen4(),
        },
        // home: const SafeArea(child: MyFontPage(title: 'Billing Machine'),),
      ),
    );
  }
}

class Myhomepage extends StatefulWidget {
  Myhomepage({Key? key, this.title}) : super(key: key);
  final String? title;
  final List<Map<String, String>> users = [
    {"name": "Rapido", "img": "Online", "Routes": "/Rapido"},
    {"name": "Uber", "img": "Online", "Routes": "/Rapido"},
    {"name": "Ola", "img": "Offline", "Routes": "/Rapido"},
    {"name": "Irctc", "img": "Available", "Routes": "/Rapido"},
    {"name": "Gpay", "img": "Unavailable", "Routes": "/Rapido"},
    {"name": "Paytm", "img": "Active", "Routes": "/Rapido"},
    {"name": "Phone pe", "img": "Not Active", "Routes": "/Rapido"},
    {"name": "Oyo", "img": "Not Active", "Routes": "/Rapido"}, 
    {"name": "Redbus", "img": "Not Active", "Routes": "/Rapido"},
  ];

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text(
            widget.title!,
          ),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: widget.users.length,
          itemBuilder: (_, index) {
            final name = widget.users[index]['name'];
            final routes = widget.users[index]['Routes'];
            // final img = widget.users[index]['img'];
            return allu(
              text: name,
              routes: routes,
            );
          },
        ));
  }
}

class allu extends StatefulWidget {
  const allu({Key? key, @required this.text, this.routes}) : super(key: key);
  final String? text;
  final String? routes;

  @override
  _alluState createState() => _alluState();
}

class _alluState extends State<allu> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 30,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, widget.routes!);
        },
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.text!),
              )
            ],
          ),
          // child: Text(widget.text!),
        ),
      ),
    );
  }
}
