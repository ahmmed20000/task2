// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:test2/binding/carDetailsBinding.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/controller/homeController.dart';
import 'package:test2/customWidget/text.dart';
import 'package:test2/view/carDetails.dart';

class listView extends StatelessWidget {
  listView({
    super.key,
    required this.c,
  });

  final homeController c;

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return AnimationLimiter(
      child: ListView.builder(
        padding: EdgeInsets.all(_w / 30),
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: c.d.dat.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            delay: Duration(milliseconds: 100),
            child: SlideAnimation(
              duration: Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              horizontalOffset: -300,
              verticalOffset: -850,
              child:GetBuilder<homeController>( 
                builder:(c)=> GestureDetector(
                onTap: () => Get.to(
                  () => carDetails(),
                  binding: carDetailsBinding(), 
                  arguments: index
                    ),
                onTapCancel: () => c.changeInterested(index),
                child: Row(
                  children: [
                   c.interested[index]? Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, right: 15),
                      child: GestureDetector(
                        onTap: () {
                             Get.defaultDialog(
                backgroundColor: appTheme.bgScaffoldColor,
                  buttonColor: appTheme.primaryColor,
                    title: "",
                    cancelTextColor: appTheme.secondColor,
                    confirmTextColor: appTheme.secondColor,
                    radius: 0,
                    content: Column(
                      children: [
                        Image.asset(
                          "Assets/images/icon2.png",
                          width: double.infinity,
                          height: 100,
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "This will not be apper any more !", 
                          style: TextStyle(
                            color: appTheme.secondColor
                          ),
                        ),
                      ],
                    ));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                                "Assets/images/icon2.png",
                                width: 25,
                                height: 25,
                              ),
                            const Text(
                              "not interested",
                              style: TextStyle(
                                  color: appTheme.secondColor, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ): text(content: ""),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: _w / 20),
                        height: _w / 5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 40,
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: c.GetImg(index)),
                            SizedBox(
                              width: 3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                text(content: " ${c.GetCompany(index)}"),
                                
                                Text(
                                  "${c.GetModel(index)} ${c.GetLaunchYear(index)}",
                                  style: TextStyle(
                                    color: appTheme.secondColor,
                                    fontSize: 15, 
                                    fontWeight: appTheme.ContentfontWieght
                                  ),
                                ),
                                Text(
                                  "${c.GetPrice(index)}", 
                                  style: TextStyle(
                                    color: appTheme.secondColor, 
                                    fontSize: 15, 
                                    fontWeight: appTheme.ContentfontWieght
                                  ),
                                ),
                                
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}
