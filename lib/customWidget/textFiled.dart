//import 'package:another_carousel_pro/another_carousel_pro.dart';
// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/text.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:test2/controller/textFiledController.dart';

// ignore: must_be_immutable
class textFiled extends StatelessWidget {
  final String name;
  final bool obscure;
  Widget? suffexicon;
  textFiled(
      {super.key, required this.name, required this.obscure, this.suffexicon});

  @override
  Widget build(BuildContext context) {
    textFiledController t = Get.put(textFiledController(o: obscure));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child:text(content: name)
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset:const Offset(0, 2)),
              ],
            ),
            child:TextFormField(
              decoration: InputDecoration(
                suffixIcon:GetBuilder<textFiledController>(
                  builder:(t)=> obscure
                    ? IconButton(
                      onPressed: () {
                        t.change();
                        },
                        icon:Icon(t.icon())
                        )
                    : suffexicon??const Text(""),
                    ),
                border:const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: appTheme.secondColor,
                )),
              ),
              obscureText: t.o,
              style: const TextStyle(color: appTheme.secondColor),
              cursorColor: appTheme.secondColor,
            ),
          ),
        ),
      ],
    );
  }
}
