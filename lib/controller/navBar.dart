import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/customWidget/text.dart';
import 'package:test2/view/cart.dart';
import 'package:test2/view/home.dart';
import 'package:test2/view/login.dart';
import 'package:test2/view/splashScreen.dart';

class navBar extends GetxController {
  late int pageIndex = 0;
  late Widget currentBage = home();
  Widget currentPage() {
    if (pageIndex == 0) {
      return splashScreen();
    } else if (pageIndex == 1) {
      return login();
    } else if (pageIndex == 2) {
      return cart();
    } else
      return text(content: "erorrrrr");
  }

  void u(index) {
    print(index);
    pageIndex = index;
    update();
  }
}
