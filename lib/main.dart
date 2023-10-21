import 'package:flutter/material.dart';
import "package:flutter/services.dart";
import '../app/modules/home/views/home_page.dart';
import 'package:modul1/app/modules/home/views/single_image_picker.dart';
import 'package:modul1/app/modules/home/views/single_item_page.dart';
import 'package:modul1/app/modules/home/views/single_item_page2.dart';
import 'package:modul1/app/modules/home/views/single_item_page3.dart';
import 'package:modul1/app/modules/home/views/single_item_page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "SingleItemPage": (context) => SingleItemPage(),
        "SingleItemPage2": (context) => SingleItemPage2(),
        "SingleItemPage3": (context) => SingleItemPage3(),
        "SingleItemPage4": (context) => SingleItemPage4(),
        "SingleImagePicker": (context) => SingleImagePicker(),
      },
    );
  }
}
