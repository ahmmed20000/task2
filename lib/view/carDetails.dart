// ignore_for_file: unused_import, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:get/get.dart';
import 'package:test2/controller/carDetailsController.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/AppBarText.dart';
import 'package:test2/customWidget/button.dart';
import 'package:test2/customWidget/text.dart';

class carDetails extends StatelessWidget {
  const carDetails({super.key});

  @override
  Widget build(BuildContext context) {
    carDetailsController c = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: appbartext(content: "Car details"),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 251.0,
              width: double.infinity,
              child: AnotherCarousel(
                  autoplayDuration: Duration(seconds: 4),
                  //autoplay: false,
                  images: c.GetImg(),
                  dotSize: 6.0,
                  dotSpacing: 30.0,
                  dotColor: appTheme.primaryColor,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.white,
                  dotIncreasedColor: appTheme.primaryColor)),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(content: "Model"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "Launch year"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "Company"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "Price"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "C/D RATING"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "Car engine"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "Horsepower"),
                        SizedBox(
                          height: 9,
                        ),
                        text(content: "Battery"),
                        SizedBox(
                          height: 9,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text(content: c.GetModel()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.GetLaunchYear()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.GetCompany()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.GetPrice()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.Getcd()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.GetCarEngine()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.GetHorsepower()),
                    SizedBox(
                      height: 9,
                    ),
                    text(content: c.GetBattery()),
                    SizedBox(
                      height: 9,
                    ),
                  ],
                ),
              )
            ],
          ),
          MaterialButton(
            onPressed: () {
              Get.defaultDialog(
                  title: "",
                  backgroundColor: appTheme.bgScaffoldColor,
                  textConfirm: "ok",
                  content: Column(
                    children: [
                      Image.asset(
                        "Assets/images/icon1.png",
                        width: double.infinity,
                        height: 100,
                      ),
                      text(content: "Item added to your cart successful"),
                    ],
                  ));
              c.ChangeTotal(c.index);
              //c.d.add(c.index);
            },
            child: text(content: "+ Add to cart"),
            color: appTheme.primaryColor,
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ],
      ),
    );
  }
}
