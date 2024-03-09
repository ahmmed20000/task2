import 'package:flutter/material.dart';
import 'package:get/get.dart';

class filterController extends GetxController {
  RangeValues vlaues = const RangeValues(
    10000,
    300000,
  );
  int minbDate = 2019;
  int maxDate = 2026;
  void change(newValues) {
    vlaues = newValues;
    update();
  }

  void increaseDate() {
    minbDate++;
    maxDate++;
    update();
  }
  void decreaseDate() {
    minbDate--;
    maxDate--;
    update();
  }
}
