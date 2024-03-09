import 'package:flutter/material.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/button.dart';
import 'package:test2/customWidget/textFiled.dart';
import 'package:test2/view/signUp2.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             const Text(
                "Create your account",
                style: TextStyle(
                  color: appTheme.secondColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Image.asset("Assets/images/road1.jpg"),
             const SizedBox(
                height: 5,
              ),
              textFiled(name: "Full name*", obscure: false),
             const SizedBox(
                height: 5,
              ),
              textFiled(name: "Birthday", obscure: false, suffexicon:const Icon(Icons.date_range)),
             const SizedBox(
                height: 5,
              ),
              textFiled(name: "Email*", obscure: false),
             const SizedBox(
                height: 5,
              ),
              textFiled(name: "Password*", obscure: true),
             const SizedBox(
                height: 5,
              ),
              textFiled(name: "Confirm password*", obscure: true),
              const SizedBox(
                height: 25,
              ),
              button(
                name: "Next" , 
                haveCancleButton: false , 
                haveConfirmButton: false , 
                isDialog: false,
                route: signUp2(),
                
                ),
            ],
          ),
        ),
      ),
    );
  }
}