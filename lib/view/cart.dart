// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/carDetailsController.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/cartStack.dart';


// ignore: must_be_immutable
class cart extends StatelessWidget {
  cart({super.key});
  carDetailsController c = carDetailsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.bgScaffoldColor,
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(
              color: appTheme.secondColor,
              fontWeight: appTheme.AppBarfontWieght,
              fontSize: appTheme.AppBarFontSize),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
           return cartStack(index: index) ;
          },
          itemCount: c.d.dat.length),
    );
  }
}
