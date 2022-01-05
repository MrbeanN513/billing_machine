// ignore_for_file: unused_element

import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';
import './bill_page.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:pixel_perfect/pixel_perfect.dart';
// import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
// import 'package:community_material_icon/community_material_icon.dart';
// import 'package:flutter_rating_stars/flutter_rating_stars.dart';
// import 'package:fluttericon/octicons_icons.dart';

class MyFontPage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  const MyFontPage({Key? key, @required this.title}) : super(key: key);
  final String? title;

  @override
  _MyFontPageState createState() => _MyFontPageState();
}

class _MyFontPageState extends State<MyFontPage> {
  TextEditingController? _textEditingControllerOne;
  TextEditingController? _textEditingControllerTwo;
  TextEditingController? _textEditingControllerThree;
  TextEditingController? _textEditingControllerFour;
  TextEditingController? _textEditingControllerFive;
  TextEditingController? _textEditingControllerSix;
  TextEditingController? _textEditingControllerSeven;
  TextEditingController? _textEditingControllerEight;
  TextEditingController? _textEditingControllerNine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HomePage(
                    Rider_name: _textEditingControllerOne!.value.text,
                    Rider_id: _textEditingControllerTwo!.value.text,
                    source_location: _textEditingControllerThree!.value.text,
                    Dest_location: _textEditingControllerFour!.value.text,
                    Dates: _textEditingControllerFive!.value.text,
                    Money: _textEditingControllerSix!.value.text,
                    imageurl: _textEditingControllerSeven!.value.text,
                    Durations: _textEditingControllerEight!.value.text,
                    Distance: _textEditingControllerNine!.value.text,
                  )));
        },
      ),
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerOne,
                      decoration: InputDecoration(
                        label: const Text(
                          'Name(Rider)',
                        ),
                        hintText: 'Name(Rider)',
                        hintStyle: const TextStyle(fontSize: 14),
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerOne!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 180,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerTwo,
                      decoration: InputDecoration(
                        label: const Text(
                          'Rider ID',
                        ),
                        hintText: 'Rider ID',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerTwo!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 180,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerThree,
                      decoration: InputDecoration(
                        label: const Text(
                          'Source',
                        ),
                        hintText: 'Source_location',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerThree!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 360,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerFour,
                      decoration: InputDecoration(
                        label: const Text(
                          'Destination',
                        ),
                        hintText: 'Destination_Location',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerFour!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 360,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerFive,
                      decoration: InputDecoration(
                        label: const Text(
                          'Date Of Ride',
                        ),
                        hintText: 'Date Of Ride',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerFive!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 200,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerSix,
                      decoration: InputDecoration(
                        label: const Text(
                          'Money',
                        ),
                        hintText: 'Money',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerSix!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 150,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerSeven,
                      decoration: InputDecoration(
                        label: const Text(
                          'Image',
                        ),
                        hintText: 'Image',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerSeven!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 370,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerEight,
                      decoration: InputDecoration(
                        label: const Text(
                          'Duration',
                        ),
                        hintText: 'Duration',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerEight!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 170,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: AutoSizeTextField(
                      controller: _textEditingControllerNine,
                      decoration: InputDecoration(
                        label: const Text('Distance'),
                        hintText: 'Distance',
                        suffixIcon: IconButton(
                          onPressed: _textEditingControllerNine!.clear,
                          icon: const Icon(Icons.clear),
                        ),
                      ),
                      fullwidth: false,
                      minFontSize: 14,
                      minWidth: 170,
                      style: const TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              TextButton(
                  onPressed: () {
                    _textEditingControllerOne!.clear();
                    _textEditingControllerTwo!.clear();
                    _textEditingControllerThree!.clear();
                    _textEditingControllerFour!.clear();
                    _textEditingControllerFive!.clear();
                    _textEditingControllerSix!.clear();
                    _textEditingControllerSeven!.clear();
                    _textEditingControllerEight!.clear();
                    _textEditingControllerNine!.clear();
                  },
                  child: const Text("clear"))
            ],
          ),
        ),
      ), // This trailing comma makes auto-formattig nicer for build methods.
    );
  }

  void _printLatestValue1() {
    print('print1: ${_textEditingControllerOne!.text}');
  }

  void _printLatestValue2() {
    print('print2: ${_textEditingControllerTwo!.text}');
  }

  void _printLatestValue3() {
    print('print3: ${_textEditingControllerThree!.text}');
  }

  void _printLatestValue4() {
    print('print4: ${_textEditingControllerFour!.text}');
  }

  void _printLatestValue5() {
    print('print5: ${_textEditingControllerFive!.text}');
  }

  void _printLatestValue6() {
    print('print6: ${_textEditingControllerSix!.text}');
  }

  void _printLatestValue7() {
    print('print7: ${_textEditingControllerSeven!.text}');
  }

  void _printLatestValue8() {
    print('print8: ${_textEditingControllerEight!.text}');
  }

  void _printLatestValue9() {
    print('print9: ${_textEditingControllerNine!.text}');
  }

  @override
  void initState() {
    super.initState();
    _textEditingControllerOne?.addListener(_printLatestValue1);
    _textEditingControllerTwo?.addListener(_printLatestValue2);
    _textEditingControllerThree?.addListener(_printLatestValue3);
    _textEditingControllerFour?.addListener(_printLatestValue4);
    _textEditingControllerFive?.addListener(_printLatestValue5);
    _textEditingControllerSix?.addListener(_printLatestValue6);
    _textEditingControllerSeven?.addListener(_printLatestValue7);
    _textEditingControllerEight?.addListener(_printLatestValue8);
    _textEditingControllerNine?.addListener(_printLatestValue9);
    _textEditingControllerOne = TextEditingController();
    _textEditingControllerTwo = TextEditingController();
    _textEditingControllerThree = TextEditingController();
    _textEditingControllerFour = TextEditingController();
    _textEditingControllerFive = TextEditingController();
    _textEditingControllerSix = TextEditingController();
    _textEditingControllerSeven = TextEditingController();
    _textEditingControllerEight = TextEditingController();
    _textEditingControllerNine = TextEditingController();

    _textEditingControllerOne?.text = "Goutam Halder";
    _textEditingControllerTwo?.text = "RD16377426533247228";
    _textEditingControllerThree?.text =
        "41B, Debendra Chandra Dey Rd, Tangra, Kolkata,West Bengal";
    _textEditingControllerFour?.text =
        "34, Bondel Rd, Ballygunge Park, Ballygunge, Kolkata 70000";
    _textEditingControllerFive?.text = "Nov 24th 2021,02:00 PM";
    _textEditingControllerSix?.text = "61.0";
    _textEditingControllerSeven?.text = "amar";
    _textEditingControllerEight?.text = "18.0";
    _textEditingControllerNine?.text = "5.41";
  }

  @override
  void dispose() {
    _textEditingControllerOne!.dispose();
    _textEditingControllerTwo!.dispose();
    _textEditingControllerThree!.dispose();
    _textEditingControllerFour!.dispose();
    _textEditingControllerFive!.dispose();
    _textEditingControllerSix!.dispose();
    _textEditingControllerSeven!.dispose();
    _textEditingControllerEight!.dispose();
    _textEditingControllerNine!.dispose();
    super.dispose();
  }
}
