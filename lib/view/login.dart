import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/binding/homeBinding.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/button.dart';
import 'package:test2/customWidget/text.dart';
import 'package:test2/customWidget/textFiled.dart';
import 'package:test2/view/home.dart';
import 'package:test2/view/signUp.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 308,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: appTheme.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(500),
                      bottomRight: Radius.circular(500),
                    )),
                child: const Column(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      "Ebay motors",
                      style: TextStyle(
                          color: appTheme.secondColor,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          fontSize: 45),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Driving you to your",
                        style: TextStyle(
                          color: appTheme.secondColor,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "dream car!",
                        style: TextStyle(
                          color: appTheme.secondColor,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox())
                  ],
                ),
              ),
              textFiled(
                name: "Email",
                obscure: false,
              ),
              SizedBox(
                height: 5,
              ),
              textFiled(
                name: "Password",
                obscure: true,
              ),
              SizedBox(
                height: 20,
              ),
              button(
                  name: "Login",
                  isDialog: false,
                  haveCancleButton: false,
                  haveConfirmButton: false,
                  route: home(),
                  bindign: homeBinding()),
              SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget password?",
                  style: TextStyle(
                      color: appTheme.primaryColor,
                      fontSize: appTheme.ContentfontSize),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              text(content: "don't you have account?"),
              SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {
                  Get.to(()=>signUp());
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: appTheme.primaryColor,
                      fontSize: appTheme.ContentfontSize),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
