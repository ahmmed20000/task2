import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/model/myData.dart';

class homeController extends GetxController {
  data d = data();
  List<bool> interested = [];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    for (int i = 0; i < d.dat.length; i++) {
      interested.add(false);
    }
  }

  String GetModel(index) {
    return "${d.dat[index].Model}";
  }

  String GetLaunchYear(index) {
    return "${d.dat[index].lanchYear}";
  }

  String GetCompany(index) {
    return "${d.dat[index].Company}";
  }

  String GetPrice(index) {
    return "${d.dat[index].Price}";
  }

  Widget? GetImg(index) {
    return d.dat[index].imgListView;
  }

  void changeInterested(index) {
    interested[index] = !interested[index];
    update();
  }
}
