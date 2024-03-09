// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/binding/filterBinding.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/controller/homeController.dart';
import 'package:test2/customWidget/AppBarText.dart';
import 'package:test2/customWidget/listView.dart';

import 'package:test2/view/Filter.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    homeController c = Get.find();
    return Scaffold(
      backgroundColor: appTheme.bgScaffoldColor,
      appBar: AppBar(
        title: appbartext(content: "Home"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Container(
                      height: 45,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 2)),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "search",
                          prefix:
                              Icon(Icons.search, color: appTheme.secondColor),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                            color: appTheme.secondColor,
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Get.to(() => filter(), binding: filterBinding());
                  },
                  icon: Icon(Icons.filter_alt),
                  color: appTheme.secondColor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: listView(c: c),
          ),
        ],
      ),
    );
  }
}


