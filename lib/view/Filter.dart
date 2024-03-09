// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/controller/filterController.dart';
import 'package:test2/customWidget/AppBarText.dart';
import 'package:test2/customWidget/button.dart';
import 'package:test2/customWidget/dateWidget.dart';
import 'package:test2/customWidget/filterTextFiled.dart';
import 'package:test2/customWidget/text.dart';

class filter extends StatelessWidget {
  filter({super.key});
  @override
  Widget build(BuildContext context) {
    filterController c = Get.find();
    return Scaffold(
      backgroundColor: appTheme.bgScaffoldColor,
      appBar: AppBar(
        title: appbartext(content: "Filter")
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(content: "Model"),
            filterTextFiled(),
            SizedBox(
              height: 10,
            ),
            text(content: "Company"),
            filterTextFiled(),
            SizedBox(height: 10),
            text(content: "Price"),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Row(
                children: [
                  Text(
                    "min",
                    style: TextStyle(
                      color: appTheme.secondColor,
                      fontSize: 15,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "max",
                    style: TextStyle(
                      color: appTheme.secondColor,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            GetBuilder<filterController>(
                builder: (c) => RangeSlider(
                    min:9999,
                    max: 300001,
                    divisions: 1000, 
                    values: c.vlaues,
                    activeColor:Colors.black ,
                    onChanged: (n) {
                      c.change(n);
                    })),
            Container(
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: appTheme.bgScaffoldColor,
                borderRadius:BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                   color: Colors.black.withOpacity(0.1),
                   spreadRadius: 2,
                   blurRadius: 5,
                   offset: const Offset(0, 2)),
                             ],
              ),
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  GetBuilder<filterController>(
                    builder: (c) => text(content: "${c.vlaues.start.round()}"), 
                  ), 
                  text(content: "  -  "),
                  GetBuilder<filterController>(builder:(c)=> text(content: "${c.vlaues.end.round()}")),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: const EdgeInsets.only(right:6.0),
                    child: text(content: "\$"),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            text(content: "Launch year"),
            filterTextFiled(),
            Center(child: dateWidget(c: c,)),
            SizedBox(height: 20,),
            Center(child: button(name: "Apply" , haveCancleButton: false, haveConfirmButton: false,))
          ],
        ),
      ),
    );
  }
}
