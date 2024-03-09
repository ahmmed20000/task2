// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/binding/homeBinding.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/textFiled.dart';
import 'package:test2/view/home.dart';


class signUp2 extends StatelessWidget {
  const signUp2({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset("Assets/images/road2.jpg"),
            textFiled(name: "Bank name", obscure: false),
            const SizedBox(
              height: 5,
            ),
            textFiled(name: "Bank Holder's Name", obscure: false),
            const SizedBox(
              height: 5,
            ),
            textFiled(name: "Acount number", obscure: false),
            const SizedBox(
              height: 5,
            ),
            textFiled(name: "phone number", obscure: false),
            SizedBox(
              height: 25,
            ),
            MaterialButton(onPressed: () {
              Get.offAll(() => home(), binding: homeBinding());
            }, 
            child: Text(
             "Login",
             style: TextStyle(
              color: appTheme.secondColor,
              fontSize: appTheme.ContentfontSize,
              fontWeight: appTheme.ContentfontWieght,
        ),
      ),
      color: appTheme.primaryColor,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
            SizedBox(
              height: 35,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "skip for now >",
                  style: TextStyle(color: appTheme.secondColor),
                ))
          ],
        ),
      ),
    ));
  }
}
