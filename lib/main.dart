// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:test2/binding/navBarBinding.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/dateWidget.dart';
import 'package:test2/customWidget/listView.dart';
import 'package:test2/view/Filter.dart';
import 'package:test2/view/carDetails.dart';
import 'package:test2/view/cart.dart';
import 'package:test2/view/home.dart';
import 'package:test2/view/login.dart';
import 'package:test2/view/navBarPage.dart';
import 'package:test2/view/signUp.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: navBarBinding(),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        useMaterial3: true,
      ),
      
      home: navBarPage(),
    );
  }
}

