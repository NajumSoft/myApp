import 'package:counter_new/Screens/ScreenOne.dart';
import 'package:counter_new/Screens/apicalls.dart';
import 'package:counter_new/Screens/screenThree.dart';
import 'package:counter_new/Screens/screenTwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasbeeh Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: screenOne(),
    );
  }
}
