import 'package:flutter/material.dart';
import 'package:get/get.dart';

class textFiledController extends GetxController {
  bool o;
  textFiledController({required this.o});
  void change() {
    o = !o;
    update();
  }

  IconData icon() => o ? Icons.visibility : Icons.visibility_off;
}
