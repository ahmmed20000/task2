// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/customWidget/text.dart';

class button extends StatelessWidget {
  String name;
  dynamic argument;
  Widget? route;
  Bindings? bindign;
  bool? isDialog;
  String? contentDialog;
  Widget? DialogAssetImagePath;
  bool haveConfirmButton = false;
  bool haveCancleButton;
  String? dialogConfirmTitle;
  String? dialogCancleTitle;
  button(
      {super.key,
      required this.name,
      this.route,
      this.bindign,
      this.isDialog,
      this.DialogAssetImagePath,
      this.contentDialog,
      required this.haveConfirmButton,
      this.dialogConfirmTitle,
      required this.haveCancleButton,
      this.dialogCancleTitle,
      this.argument});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (isDialog == false) {
          print("ggg");
          Get.to(() => route ?? Text("error"),
              binding: bindign, arguments: argument ?? null);
        } else if (isDialog == true) {
          Get.defaultDialog(
              backgroundColor: appTheme.bgScaffoldColor,
              title: "",
              textConfirm: dialogConfirmTitle,
              textCancel: dialogCancleTitle,
              content: Column(
                children: [
                  DialogAssetImagePath ?? text(content: ""),
                  text(content: contentDialog ?? ""),
                ],
              ),
              buttonColor: appTheme.primaryColor,
              confirmTextColor: appTheme.secondColor,
              cancelTextColor: appTheme.secondColor,
              onConfirm: haveConfirmButton ? () => print("dddddd") : null,
              onCancel: haveCancleButton ? () => print("") : null,
              radius: 0);
        }
      },
      child: Text(
        name,
        style: TextStyle(
          color: appTheme.secondColor,
          fontSize: appTheme.ContentfontSize,
          fontWeight: appTheme.ContentfontWieght,
        ),
      ),
      color: appTheme.primaryColor,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    );
  }
}
