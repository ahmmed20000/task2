// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test2/controller/constant.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: appTheme.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(500),
                        bottomRight: Radius.circular(500),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "wellcome....!",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: appTheme.secondColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: appTheme.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(500),
                        topRight: Radius.circular(500),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
